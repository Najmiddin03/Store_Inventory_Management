from pydantic import BaseModel
from typing import List,Optional


class ShelfProductItem(BaseModel):
    id: int
    SKU: str
    name: str
    image: Optional[str]
    quantity: int
    row: int
    column: int

    class Config:
        orm_mode = True


class ShelfDetail(BaseModel):
    id: int
    name: str
    category: str
    items: List[ShelfProductItem]

    class Config:
        orm_mode = True

class CreateShelf(BaseModel):
    category: int
    class Config:
        orm_mode = True

class ShelfItemCreate(BaseModel):
    shelf_id: int
    product_SKU: str
    row_number: int
    column_number: int
    quantity: Optional[int] = 1