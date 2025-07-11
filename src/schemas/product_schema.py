from datetime import datetime
from decimal import Decimal
from typing import Optional

from pydantic import BaseModel, Field, condecimal


# class ProductSchema(BaseModel):
#     SKU: str
#     ProductName: str
#     Subcategory_id: int
#     Brand: Optional[str] = None
#     Price: float
#     Currency: str
#     UnitSize: Optional[float] = None
#     MeasurementUnit: Optional[str] = None
#     IsActive: bool
#     Image: Optional[str] = None
#
#     model_config = ConfigDict(from_attributes=True)

class ProductSchema(BaseModel):
    id: int
    SKU: str
    ProductName: str
    Brand: Optional[str]
    Price: Decimal
    Currency: str
    UnitSize: Optional[Decimal]
    MeasurementUnit: Optional[str]
    ReorderLevel: int
    IsActive: bool
    Image: Optional[str]
    CreatedAt: Optional[datetime]
    Adult: bool
    is_weighted: bool
    SubcategoryName: str
    CategoryName: str
    Stock: int

    class Config:
        orm_mode = True

class ProductCreateSchema(BaseModel):
    SKU: str = Field(..., max_length=50)
    ProductName: str = Field(..., max_length=100)
    Subcategory_id: Optional[int] = None
    Brand: Optional[str] = Field(None, max_length=50)
    Price: condecimal(max_digits=10, decimal_places=2)
    Currency: str = Field(..., max_length=10)
    UnitSize: Optional[condecimal(max_digits=10, decimal_places=2)] = None
    MeasurementUnit: Optional[str] = Field(None, max_length=20)
    ReorderLevel: Optional[int] = 0
    IsActive: Optional[bool] = True
    Image: Optional[str] = Field(None, max_length=100)
    Adult: Optional[bool] = False
    is_weighted: Optional[bool] = False

    class Config:
        orm_mode = True