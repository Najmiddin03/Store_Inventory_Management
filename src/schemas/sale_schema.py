import decimal
from datetime import datetime
from decimal import Decimal
from typing import Optional, List

from src.models.sales import PaymentMethod, PaymentStatus

from pydantic import BaseModel, ConfigDict


class PostSaleSchema(BaseModel):
    # transaction_number: str
    # sale_date: datetime
    payment_method: PaymentMethod
    payment_status: PaymentStatus

    model_config = ConfigDict(from_attributes=True)


class GetSaleSchema(BaseModel):
    transaction_number: str
    sale_date: datetime
    payment_method: PaymentMethod
    payment_status: PaymentStatus

    model_config = ConfigDict(from_attributes=True)


class SaleItemCreate(BaseModel):
    product_SKU: str
    quantity: Optional[Decimal] = None
    batch_id: Optional[int] = None


class SaleCreateRequest(BaseModel):
    payment_method: PaymentMethod
    items: List[SaleItemCreate]
