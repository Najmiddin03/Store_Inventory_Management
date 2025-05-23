from enum import Enum

import sqlalchemy
from sqlalchemy import Column, String, Integer, DateTime, text

from src.models.base import Base


class PaymentMethod(Enum):
    CASH = 'cash'
    CREDIT_CARD = 'credit_card'
    DEBIT_CARD = 'debit_card'
    MOBILE = 'mobile'
    BANK_TRANSFER = 'bank_transfer'


class PaymentStatus(Enum):
    PENDING = 'pending'
    COMPLETED = 'completed'
    FAILED = 'failed'
    REFUNDED = 'refunded'


class Sale(Base):
    __tablename__ = 'sales'

    id = Column(Integer, primary_key=True, autoincrement=True)
    transaction_number = Column(String(20), unique=True, nullable=False)
    sale_date = Column(DateTime, server_default=text('GETDATE()'))
    payment_method = Column(sqlalchemy.Enum(PaymentMethod), nullable=False, default=PaymentMethod.CASH)
    payment_status = Column(sqlalchemy.Enum(PaymentStatus), nullable=False, default=PaymentStatus.PENDING)
