from fastapi import Depends, APIRouter, HTTPException
from sqlalchemy import func
from sqlalchemy.orm import Session
from winnt import SUBLANG_ARABIC_KUWAIT

from src.crud.get.products import get_products
from src.database.connection import get_db
from src.models.batch import Batch
from src.models.products import Product
from src.models.subcategories import Subcategory
from src.schemas.product_schema import ProductSchema, ProductCreateSchema

router = APIRouter(tags=['Products'])


@router.get("/products", response_model=list[ProductSchema])
async def get_product(db: Session = Depends(get_db)):
    products = db.query(Product).join(Product.subcategory).join(Subcategory.category).all()
    return [ProductSchema(
        id=product.id,
        SKU=product.SKU,
        ProductName=product.ProductName,
        Brand=product.Brand,
        Price=product.Price,
        Currency=product.Currency,
        UnitSize=product.UnitSize,
        MeasurementUnit=product.MeasurementUnit,
        ReorderLevel=product.ReorderLevel,
        IsActive=product.IsActive,
        Image=product.Image,
        CreatedAt=product.CreatedAt,
        Adult=product.Adult,
        is_weighted=product.is_weighted,
        SubcategoryName=product.subcategory.name,
        CategoryName=product.subcategory.category.name,
        Stock=db.query(func.sum(Batch.quantity)).filter(Batch.product_SKU==product.SKU).scalar() or 0

    )for product in products
    ]
    return products

@router.get("/products/{product_sku}", response_model=ProductSchema)
async def get_product(product_sku: str, db: Session = Depends(get_db)):
    product = db.query(Product).where(Product.SKU==product_sku).join(Product.subcategory).join(Subcategory.category).first()
    return ProductSchema(
        id=product.id,
        SKU=product.SKU,
        ProductName=product.ProductName,
        Brand=product.Brand,
        Price=product.Price,
        Currency=product.Currency,
        UnitSize=product.UnitSize,
        MeasurementUnit=product.MeasurementUnit,
        ReorderLevel=product.ReorderLevel,
        IsActive=product.IsActive,
        Image=product.Image,
        CreatedAt=product.CreatedAt,
        Adult=product.Adult,
        is_weighted=product.is_weighted,
        SubcategoryName=product.subcategory.name,
        CategoryName=product.subcategory.category.name,
        Stock=db.query(func.sum(Batch.quantity)).filter(Batch.product_SKU == product.SKU).scalar() or 0
    )



@router.post("/products", response_model=ProductCreateSchema)
async def create_product(product: ProductCreateSchema, db: Session = Depends(get_db)):
    # Optional: check if SKU already exists
    existing = db.query(Product).filter(Product.SKU == product.SKU).first()
    if existing:
        raise HTTPException(status_code=400, detail="SKU already exists")

    new_product = Product(
        SKU=product.SKU,
        ProductName=product.ProductName,
        Subcategory_id=product.Subcategory_id,
        Brand=product.Brand,
        Price=product.Price,
        Currency=product.Currency,
        UnitSize=product.UnitSize,
        MeasurementUnit=product.MeasurementUnit,
        Image=product.Image,
        ReorderLevel=product.ReorderLevel,
        IsActive=product.IsActive,
        Adult=product.Adult,
        is_weighted=product.is_weighted,
    )

    db.add(new_product)
    db.commit()
    db.refresh(new_product)

    return new_product

@router.put("/products/{product_sku}", response_model=ProductSchema)
async def update_product(sku: str, product: ProductCreateSchema, db: Session = Depends(get_db)):
    obj=db.query(Product).filter(Product.SKU==sku).first()
    return ProductSchema


