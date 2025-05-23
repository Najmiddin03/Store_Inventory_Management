from pydantic import BaseModel, ConfigDict
from typing import Optional


class ProductSchema(BaseModel):
    SKU: str
    ProductName: str
    Subcategory_id: int
    Brand: Optional[str] = None
    Price: float
    Currency: str
    UnitSize: Optional[float] = None
    MeasurementUnit: Optional[str] = None
    IsActive: bool
    Image: Optional[str] = None

    model_config = ConfigDict(from_attributes=True)
