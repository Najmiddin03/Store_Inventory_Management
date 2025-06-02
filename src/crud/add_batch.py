from src.models.batch import Batch
from src.models.products import Product
from sqlalchemy.orm import Session
from typing import Optional
from datetime import datetime


def generate_batch_name(session: Session, SKU):
    count = session.query(Batch).where(Batch.product_SKU == SKU).count()
    product_name = session.query(Product.ProductName).where(Product.SKU == SKU).scalar()
    return f'{product_name}-{count}'


def add_batch(session: Session, productSKU: str, quantity: int, expiry_date: Optional[datetime] = None):
    batch = Batch(
        product_SKU=productSKU,
        quantity=quantity,
        expiry_date=expiry_date,
        batch_name=generate_batch_name(session, productSKU)
    )
    session.add(batch)
    session.commit()
    session.refresh(batch)
    return batch
