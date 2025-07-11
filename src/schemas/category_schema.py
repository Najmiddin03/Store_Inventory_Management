from pydantic import BaseModel, ConfigDict


class CreateCategory(BaseModel):
    category_name: str
    model_config = ConfigDict(from_attributes=True)

class CategorySchema(BaseModel):
    id: int
    name: str

    model_config = ConfigDict(from_attributes=True)
