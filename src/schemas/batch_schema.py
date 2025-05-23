from datetime import datetime

from pydantic import BaseModel, ConfigDict
from typing import Optional


class BatchSchema(BaseModel):
    product_SKU: str
    quantity: int
    expiry_date: Optional[datetime] = None

    model_config = ConfigDict(from_attributes=True)
