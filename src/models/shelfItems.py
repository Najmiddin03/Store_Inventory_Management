from sqlalchemy import Column, Integer, ForeignKey, String
from sqlalchemy.orm import relationship

from src.models.base import Base
from src.models.shelfs import Shelf
from src.models.products import Product


class ShelfItem(Base):
    __tablename__ = "shelfItems"

    id = Column(Integer, primary_key=True)
    shelf_id = Column(Integer, ForeignKey("shelfs.id"))
    product_SKU = Column(String(50), ForeignKey("products.SKU"))
    row_number = Column(Integer, nullable=False)
    column_number = Column(Integer, nullable=False)
    quantity = Column(Integer, server_default="1")

    shelf = relationship("Shelf", backref="shelf")
    product = relationship("Product", backref="product")
