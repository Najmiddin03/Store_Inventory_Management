from pydantic import BaseModel, ConfigDict


class CategorySchema(BaseModel):
    name: str

    model_config = ConfigDict(from_attributes=True)
