from sqlalchemy.orm import Session
from sqlalchemy import func
from src.database.connection import get_db
from src.models.categories import Category
from src.models.subcategories import Subcategory
from src.models.shelfs import Shelf
from src.models.products import Product
import math

subcategory_map = {}
session = next(get_db())


def add_shelves(db: Session):
    results = (
        db.query(
            Category.name.label('name'),
            Category.id.label('category_id'),
            func.count(Product.id).label('count')
        )
        .join(Subcategory, Subcategory.category_id == Category.id)
        .join(Product, Product.Subcategory_id == Subcategory.id)
        .group_by(Category.id, Category.name).order_by(Category.id)
        .all()
    )

    for name, category_id, count in results:
        count = count / 10
        count = math.ceil(count)
        for i in range(count):
            shelf = Shelf(category_id=category_id, name=f'{name}-{i+1}')
            db.add(shelf)
            db.commit()
            db.refresh(shelf)


if __name__ == '__main__':
    add_shelves(session)
