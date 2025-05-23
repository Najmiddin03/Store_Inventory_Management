from datetime import datetime
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
