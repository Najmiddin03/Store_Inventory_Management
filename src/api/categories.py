from fastapi import Depends, APIRouter
from sqlalchemy.orm import Session

from src.crud.add_category import add_category
from src.crud.get.categories import get_categories
from src.database.connection import get_db
from src.models.categories import Category
from src.schemas.category_schema import CategorySchema, CreateCategory

router = APIRouter(tags=['Categories'])


@router.post("/categories", response_model=CategorySchema)
async def create_category(category: CreateCategory, db: Session = Depends(get_db)):
    add_category(db, category.name)
    return category


@router.get("/categories", response_model=list[CategorySchema])
async def get_category(db: Session = Depends(get_db)):
    categories = get_categories(db)
    return categories


@router.get("/categories/{category_id}", response_model=CategorySchema)
async def get_category(category_id: int, db: Session = Depends(get_db)):
    category = get_categories(db, category_id)
    return category


@router.put("/categories/{category_id}", response_model=CategorySchema)
async def update_category(category_id: int, category: CreateCategory, db: Session = Depends(get_db)):
    category_obj = db.query(Category).filter(Category.id == category_id).first()
    if category_obj:
        category_obj.name = category.category_name
    db.commit()
    db.refresh(category_obj)
    return category_obj
