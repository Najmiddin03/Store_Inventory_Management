from sqlalchemy.orm import Session
from src.models.subcategories import Subcategory


def get_subcategories(db: Session, subcategory_id: int = None):
    if subcategory_id:
        return db.query(Subcategory).where(Subcategory.category_id == subcategory_id).first()
    return db.query(Subcategory).all()
