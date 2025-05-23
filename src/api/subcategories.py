from fastapi import Depends, APIRouter
from sqlalchemy.orm import Session

from src.crud.add_subcategory import add_subcategory
from src.crud.get.subcategories import get_subcategories
from src.database.connection import get_db
from src.schemas.subcategory_schema import SubCategorySchema

router = APIRouter()


@router.get("/subcategories", response_model=list[SubCategorySchema])
async def get_subcategory(db: Session = Depends(get_db)):
    subcategories = get_subcategories(db)
    return subcategories


@router.get("/subcategories/{subcategory_id}", response_model=SubCategorySchema)
async def get_subcategory(subcategory_id: int, db: Session = Depends(get_db)):
    subcategory = get_subcategories(db, subcategory_id)
    return subcategory


@router.post("/subcategories", response_model=SubCategorySchema)
async def create_subcategory(subcategory: SubCategorySchema, db: Session = Depends(get_db)):
    add_subcategory(db, subcategory.name, subcategory.category_id)
    return subcategory
