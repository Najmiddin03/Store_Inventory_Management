from fastapi import Depends, APIRouter
from sqlalchemy.orm import Session

from src.crud.add_category import add_category
from src.crud.get.categories import get_categories
from src.database.connection import get_db
from src.schemas.category_schema import CategorySchema

router = APIRouter()


@router.get("/categories", response_model=list[CategorySchema])
async def get_category(db: Session = Depends(get_db)):
    categories = get_categories(db)
    return categories


@router.get("/categories/{category_id}", response_model=CategorySchema)
async def get_category(category_id: int, db: Session = Depends(get_db)):
    category = get_categories(db, category_id)
    return category


@router.post("/categories", response_model=CategorySchema)
async def create_category(category: CategorySchema, db: Session = Depends(get_db)):
    add_category(db, category.name)
    return category
