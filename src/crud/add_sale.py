from datetime import datetime

from src.models.sales import Sale, PaymentMethod, PaymentStatus
from sqlalchemy.orm import Session
from sqlalchemy import func


def get_TZ_count(db: Session):
    start_time = datetime.combine(datetime.today(), datetime.min.time())
    end_time = datetime.combine(datetime.today(), datetime.max.time())
    count = db.query(func.count(Sale.id)).filter(Sale.sale_date >= start_time, Sale.sale_date <= end_time).scalar()
    return count


def generate_TZ_number(db: Session):
    date = datetime.today()
    TZ_number = f"TZ-{date.day}.{date.month}.{date.year}-{get_TZ_count(db)}"
    return TZ_number


def add_sale(db: Session, payment_method: PaymentMethod, payment_status: PaymentStatus):
    sale = Sale(transaction_number=generate_TZ_number(db), payment_method=payment_method, payment_status=payment_status)
    db.add(sale)
    db.commit()
    db.refresh(sale)
    return sale


def update_sale(db: Session, sale_id: int, payment_status: PaymentStatus):
    sale = db.query(Sale).filter(Sale.id == sale_id).first()
    if sale:
        sale.payment_status = payment_status
        db.commit()
        print("Sale with id {} updated.".format(sale.id))
    else:
        print("Sale with id {} not found.".format(sale.id))
