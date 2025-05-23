from src.models.batch import Batch
from sqlalchemy.orm import Session
from typing import Optional
from datetime import datetime


def add_batch(session: Session, productSKU: str, quantity: int, expiry_date: Optional[datetime] = None):
    batch = Batch(
        product_SKU=productSKU,
        quantity=quantity,
        expiry_date=expiry_date
    )
    session.add(batch)
    session.commit()
    session.refresh(batch)
    return batch
