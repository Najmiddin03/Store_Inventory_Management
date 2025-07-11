from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from src.database.connection import get_db
from src.models.categories import Category
from src.models.products import Product
from src.models.shelfs import Shelf
from src.models.shelfItems import ShelfItem
from src.schemas.shelf_schema import ShelfDetail, ShelfProductItem, CreateShelf, ShelfItemCreate

router = APIRouter(prefix="/shelves", tags=["Shelves"])

@router.get("/{shelf_name}", response_model=ShelfDetail)
def get_shelf_by_name(shelf_name: str, db: Session = Depends(get_db)):
    shelf = db.query(Shelf).filter(Shelf.name == shelf_name).first()
    if not shelf:
        raise HTTPException(status_code=404, detail="Shelf not found")

    items = []
    for item in shelf.shelf:
        product = item.product
        items.append(ShelfProductItem(
            id=item.id,
            SKU=product.SKU,
            name=product.ProductName,
            image=product.Image,
            quantity=item.quantity,
            row=item.row_number,
            column=item.column_number
        ))

    return ShelfDetail(
        id=shelf.id,
        name=shelf.name,
        category=shelf.category.name if shelf.category else "Unknown",
        items=items
    )

@router.post("/{category_id}")
def create_shelf(category_id: int, db: Session = Depends(get_db)):
    # 1. Get the category
    category = db.query(Category).filter(Category.id == category_id).first()
    if not category:
        raise HTTPException(status_code=404, detail="Category not found")

    # 2. Count existing shelves with this category
    shelf_count = db.query(Shelf).filter(Shelf.category_id == category_id).count()

    # 3. Generate shelf name
    new_name = f"{category.name}-{shelf_count + 1}"

    # 4. Create and save shelf
    shelf = Shelf(category_id=category_id, name=new_name)
    db.add(shelf)
    db.commit()
    db.refresh(shelf)

    return {
        "id": shelf.id,
        "name": shelf.name,
        "category_id": shelf.category_id
    }


@router.post("/shelf-items/")
def add_shelf_item(item: ShelfItemCreate, db: Session = Depends(get_db)):
    # Validate shelf exists
    shelf = db.query(Shelf).filter(Shelf.id == item.shelf_id).first()
    if not shelf:
        raise HTTPException(status_code=404, detail="Shelf not found")

    # Validate product exists
    product = db.query(Product).filter(Product.SKU == item.product_SKU).first()
    if not product:
        raise HTTPException(status_code=404, detail="Product not found")

    # Check if position is already taken on the shelf
    existing = db.query(ShelfItem).filter(
        ShelfItem.shelf_id == item.shelf_id,
        ShelfItem.row_number == item.row_number,
        ShelfItem.column_number == item.column_number
    ).first()
    if existing:
        raise HTTPException(status_code=400, detail="Position already occupied")

    shelf_item = ShelfItem(
        shelf_id=item.shelf_id,
        product_SKU=item.product_SKU,
        row_number=item.row_number,
        column_number=item.column_number,
        quantity=item.quantity
    )
    db.add(shelf_item)
    db.commit()
    db.refresh(shelf_item)
    return {"message": "Shelf item added", "id": shelf_item.id}

@router.delete("/shelf-items/{item_id}")
def delete_shelf_item(item_id: int, db: Session = Depends(get_db)):
    # Find the item to delete
    item = db.query(ShelfItem).filter(ShelfItem.id == item_id).first()
    if not item:
        raise HTTPException(status_code=404, detail="Shelf item not found")

    shelf_id = item.shelf_id
    row = item.row_number
    col = item.column_number

    # Delete the item
    db.delete(item)
    db.commit()

    # Shift items with bigger column number on the same shelf and row
    items_to_shift = (
        db.query(ShelfItem)
        .filter(
            ShelfItem.shelf_id == shelf_id,
            ShelfItem.row_number == row,
            ShelfItem.column_number > col
        )
        .order_by(ShelfItem.column_number)
        .all()
    )

    for shifted_item in items_to_shift:
        shifted_item.column_number -= 1
        db.add(shifted_item)  # Mark item as updated

    db.commit()

    return {"message": "Shelf item deleted and items shifted"}

@router.delete("/{shelf_id}")
def delete_shelf(shelf_id: int, db: Session = Depends(get_db)):
    shelf = db.query(Shelf).filter(Shelf.id == shelf_id).first()
    if not shelf:
        raise HTTPException(status_code=404, detail="Shelf not found")
    db.delete(shelf)
    db.commit()
    return {"message": "Shelf deleted"}