from datetime import datetime

from src.models.sales import Sale, PaymentMethod, PaymentStatus
from sqlalchemy.orm import Session
from sqlalchemy import func


def get_TZ_count(db: Session, date: datetime):
    start_time = datetime.combine(date, datetime.min.time())
    end_time = datetime.combine(date, datetime.max.time())
    count = db.query(func.count(Sale.id)).filter(Sale.sale_date >= start_time, Sale.sale_date <= end_time).scalar()
    return count


def generate_TZ_number(db: Session, date: datetime = None):
    if date:
        tz_date = date
    else:
        tz_date = datetime.today()
    count = get_TZ_count(db, tz_date)
    TZ_number = f"TZ-{tz_date.day}.{tz_date.month}.{tz_date.year}-{count:03}"
    return TZ_number


def add_sale(db: Session, date: datetime = None):
    if date:
        sale = Sale(transaction_number=generate_TZ_number(db, date), sale_date=date)
    else:
        sale = Sale(transaction_number=generate_TZ_number(db))
    db.add(sale)
    db.commit()
    db.refresh(sale)
    return sale


def update_sale(db: Session, sale_id: int, payment_status: PaymentStatus, payment_method: PaymentMethod):
    sale = db.query(Sale).filter(Sale.id == sale_id).first()
    if sale:
        sale.payment_status = payment_status
        sale.payment_method = payment_method
        db.commit()
