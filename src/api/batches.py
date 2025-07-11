from fastapi import Depends, APIRouter
from sqlalchemy.orm import Session

from src.crud.add_batch import add_batch
from src.crud.get.batches import get_batches
from src.database.connection import get_db
from src.models.batch import Batch
from src.schemas.batch_schema import BatchSchema, GetBatchSchema

router = APIRouter(tags=['Products'])

@router.get("/batches/{sku}", response_model=list[GetBatchSchema])
async def get_batch(sku: str, db: Session = Depends(get_db)):
    return db.query(Batch).where(Batch.product_SKU==sku,Batch.quantity!=0).all()


@router.post("/batches", response_model=BatchSchema)
async def create_batch(batch: BatchSchema, db: Session = Depends(get_db)):
    return add_batch(db, batch.product_SKU, batch.quantity, batch.expiry_date)

@router.post("/batches/restock", response_model=list[BatchSchema])
async def restock(db: Session = Depends(get_db)):
    return db.query(Batch).all()
