from sqlalchemy.orm import Session
from src.models.products import Product


def get_products(db: Session, SKU: str = None):
    if SKU:
        return db.query(Product).where(Product.SKU == SKU).first()
    return db.query(Product).all()
