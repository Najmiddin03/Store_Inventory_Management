from src.models.categories import Category
from sqlalchemy.orm import Session


def add_category(session: Session, name: str):
    category = Category(name=name)
    session.add(category)
    session.commit()
    session.refresh(category)
    return category
