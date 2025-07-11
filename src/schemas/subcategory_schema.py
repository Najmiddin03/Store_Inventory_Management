from pydantic import BaseModel, ConfigDict



class CreateSubCategory(BaseModel):
    name: str
    category_id: int
    model_config = ConfigDict(from_attributes=True)

class SubCategorySchema(BaseModel):
    id: int
    name: str
    category_id: int

    model_config = ConfigDict(from_attributes=True)
