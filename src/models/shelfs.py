from sqlalchemy import Column, Integer, ForeignKey, String
from sqlalchemy.orm import relationship

from src.models.base import Base
from src.models.categories import Category


class Shelf(Base):
    __tablename__ = 'shelfs'

    id = Column(Integer, primary_key=True)
    category_id = Column(Integer, ForeignKey('categories.id'))
    name = Column(String(50))

    category = relationship('Category', backref='shelf')
