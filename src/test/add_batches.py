import random
from datetime import datetime, timedelta
from typing import Optional
import math

from sqlalchemy.orm import Session
from src.models.shelfItems import ShelfItem
from src.database.connection import get_db

from src.crud.add_batch import add_batch
from src.models.products import Product

_expiry_2_years = [1, 2, 3, 4, 5, 6, 7, 21, 22, 23, 24, 25]
_expiry_1_year = [16, 17, 18, 19, 20, 41, 42, 51, 54]
_expiry_6_months = [8, 9, 10, 11, 12, 13, 43, 45, 46, 47, 48]
_expiry_3_months = [32, 33, 34, 35, 44, 49, 50, 52, 53]
_expiry_2_weeks = [36, 37, 38, 39, 40]
_no_expiry = [14, 15, 26, 27, 28, 29, 30, 31]


def get_expiry_days(subcategory_id: int) -> Optional[int]:
    base_expiry_days = {
        730: _expiry_2_years,
        365: _expiry_1_year,
        180: _expiry_6_months,
        90: _expiry_3_months,
        14: _expiry_2_weeks,
    }
    for base_days, subcategories in base_expiry_days.items():
        if subcategory_id in subcategories:
            variance = int(base_days * 0.15)
            return base_days + random.randint(-variance, variance)
    if subcategory_id in _no_expiry:
        return None
    return 30


def add_batches(db: Session):
    items = db.query(ShelfItem).all()
    for item in items:
        sku = item.product_SKU
        sub_id = db.query(Product.Subcategory_id).where(Product.SKU == sku).scalar()
        date = None
        days = get_expiry_days(sub_id)
        if days:
            date = datetime.today() + timedelta(days=days)
        add_batch(db, productSKU=sku, quantity=math.ceil(item.quantity * 1.2), expiry_date=date)


if __name__ == '__main__':
    session = next(get_db())
    add_batches(session)
