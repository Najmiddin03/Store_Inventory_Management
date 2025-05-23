from sqlalchemy.orm import Session
from src.models.categories import Category


def get_categories(db: Session, category_id: int = None):
    if category_id:
        return db.query(Category).where(Category.id == category_id).first()
    return db.query(Category).all()
