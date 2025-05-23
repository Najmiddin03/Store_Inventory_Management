from fastapi import Depends, APIRouter
from sqlalchemy.orm import Session

from src.crud.add_batch import add_batch
from src.crud.get.batches import get_batches
from src.database.connection import get_db
from src.schemas.batch_schema import BatchSchema

router = APIRouter()


@router.get("/batches", response_model=list[BatchSchema])
async def get_batch(db: Session = Depends(get_db)):
    return get_batches(db)


@router.get("/batches/{batch_id}", response_model=BatchSchema)
async def get_batch(batch_id: int, db: Session = Depends(get_db)):
    return get_batches(db, batch_id)


@router.post("/batches", response_model=BatchSchema)
async def create_batch(batch: BatchSchema, db: Session = Depends(get_db)):
    return add_batch(db, batch.product_SKU, batch.quantity, batch.expiry_date)
