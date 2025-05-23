from pydantic import BaseModel, ConfigDict


class SubCategorySchema(BaseModel):
    name: str
    category_id: int

    model_config = ConfigDict(from_attributes=True)
