from src.models.subcategories import Subcategory
from sqlalchemy.orm import Session


def add_subcategory(session: Session, name: str, category_id: int):
    subcategory = Subcategory(name=name, category_id=category_id)
    session.add(subcategory)
    session.commit()
    session.refresh(subcategory)
    return subcategory
