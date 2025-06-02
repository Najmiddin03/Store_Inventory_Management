import math
import random
from datetime import datetime, timedelta
from decimal import Decimal

from sqlalchemy import func
from sqlalchemy.orm import Session

from src.crud.add_sale import generate_TZ_number
from src.database.connection import get_db
from src.models.batch import Batch
from src.crud.add_batch import add_batch
from src.models.products import Product
from src.models.saleItems import Item
from src.models.sales import PaymentStatus, PaymentMethod, Sale
from src.models.shelfItems import ShelfItem
from src.test.add_batches import get_expiry_days


def create_sale(db: Session, payment_method: PaymentMethod, time: datetime):
    sale = Sale(
        transaction_number=generate_TZ_number(db, time),
        payment_method=payment_method,
        sale_date=time,
        payment_status=PaymentStatus.COMPLETED
    )
    db.add(sale)
    db.commit()
    db.refresh(sale)
    return sale


def generate_sales_data(db: Session,n:int):
    items_list = [item[0] for item in db.query(Product.id).order_by(Product.id).all()]
    item_chance = [chance[0] for chance in db.query(ShelfItem.quantity).order_by(ShelfItem.id).all()]

    for day in range(n, n+1):
        date = datetime(year=2025, month=5, day=day)
        # Refresh stock each day
        for item in items_list:
            sku = db.query(Product.SKU).where(Product.id == item).scalar()
            stock = db.query(func.sum(Batch.quantity)).filter(Batch.product_SKU == sku).scalar() or 0
            restock = db.query(Product.ReorderLevel).where(Product.id == item).scalar()
            if stock < restock:
                sub_id = db.query(Product.Subcategory_id).where(Product.id == item).scalar()
                ex_date = None
                days = get_expiry_days(sub_id)
                if days:
                    ex_date = date + timedelta(days=days)
                quantity = restock * Decimal(1.2) - stock
                add_batch(db, productSKU=sku, quantity=math.ceil(quantity), expiry_date=ex_date)

        weekday = date.weekday() + 1
        if weekday == 7:
            continue
        if weekday == 1:
            daily_sales = random.randint(1100, 1200)
        elif weekday == 6:
            daily_sales = random.randint(1300, 1400)
        else:
            daily_sales = random.randint(1000, 1100)
        sale_ids = []
        for i in range(daily_sales):
            method = random.choices(population=[PaymentMethod.CASH, PaymentMethod.DEBIT_CARD, PaymentMethod.CREDIT_CARD,
                                                PaymentMethod.MOBILE, PaymentMethod.BANK_TRANSFER],
                                    weights=[30, 40, 5, 20, 5],
                                    k=1)[0]
            sale_ids.append(create_sale(db, method, date).id)
        for sale_id in sale_ids:
            sale_count = random.choices(
                population=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
                weights=[1, 2, 2, 2, 3, 3, 3, 3, 3, 2, 2, 1, 1, 1, 1],
                k=1)[0]
            for i in range(sale_count):
                item_id = random.choices(population=items_list, weights=item_chance, k=1)[0]
                item = db.query(Product.SKU).where(Product.id == item_id).scalar()
                is_weighted = db.query(Product.is_weighted).where(Product.id == item_id).scalar()
                if is_weighted:
                    batch = db.query(Batch).filter(Batch.product_SKU == item, Batch.quantity > 0).order_by(
                        Batch.delivery_date.asc()).first()
                    if batch is None:
                        continue
                    weight = random.randint(5, 15) / 10
                    weight = Decimal(str(weight))
                    if batch.quantity >= weight:
                        batch.quantity -= weight
                    else:
                        weight = batch.quantity
                        batch.quantity = 0
                    db.flush()
                    sale_item = Item(
                        sale_id=sale_id,
                        product_SKU=item,
                        quantity=weight
                    )
                    db.add(sale_item)
                else:
                    quantity = 1
                    batch = db.query(Batch).filter(Batch.product_SKU == item, Batch.quantity > 0).order_by(
                        Batch.delivery_date.asc()).first()
                    if batch is None:
                        continue
                    batch.quantity -= quantity
                    batch_id = batch.id
                    db.flush()
                    sale_item = Item(
                        sale_id=sale_id,
                        product_SKU=item,
                        quantity=quantity,
                        batch_id=batch_id,
                    )
                    db.add(sale_item)
            db.commit()


if __name__ == '__main__':
    session = next(get_db())
    generate_sales_data(session,30)
