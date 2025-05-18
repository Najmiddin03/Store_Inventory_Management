from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from src.models.base import Base


class SubCategory(Base):
    __tablename__ = 'subcategories'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(50), unique=True, nullable=False)
    category_id = Column(Integer, ForeignKey('categories.id'), nullable=False)

    # Relationships
    category = relationship('Category', backref='subcategory')
    products = relationship('Product', backref='subcategory')
