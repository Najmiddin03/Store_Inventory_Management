from fastapi import Depends, APIRouter
from sqlalchemy.orm import Session

from src.database.connection import get_db
from src.schemas.sale_schema import PostSaleSchema
from src.crud.add_sale import add_sale

router = APIRouter()


@router.post("/sale", response_model=PostSaleSchema)
async def create_sale(sale: PostSaleSchema, db: Session = Depends(get_db)):
    return add_sale(db, sale.payment_method, sale.payment_status)
