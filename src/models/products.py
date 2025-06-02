from sqlalchemy import Column, String, Integer, DECIMAL, DateTime, Boolean, ForeignKey, text
from sqlalchemy.orm import relationship

from src.models.base import Base
from src.models.subcategories import Subcategory


class Product(Base):
    __tablename__ = 'products'

    id = Column(Integer, primary_key=True, autoincrement=True)  # Internal ID
    SKU = Column(String(50), unique=True, nullable=False)
    ProductName = Column(String(100), nullable=False)
    Subcategory_id = Column(Integer, ForeignKey('subcategories.id'))
    Brand = Column(String(50))
    Price = Column(DECIMAL(10, 2), nullable=False)
    Currency = Column(String(10), nullable=False)
    UnitSize = Column(DECIMAL(10, 2))
    MeasurementUnit = Column(String(20))  # e.g., 'kg', 'L', 'pcs'
    ReorderLevel = Column(Integer, server_default=text('0'))
    IsActive = Column(Boolean, server_default=text('1'))
    Image = Column(String(100))
    CreatedAt = Column(DateTime, server_default=text('GETDATE()'))
    Adult = Column(Boolean, server_default=text('0'))
    is_weighted = Column(Boolean, server_default=text('0'))

    # # Relationships
    subcategory = relationship("Subcategory", backref='products')
    # batches = relationship("Batch", back_populates="product", cascade="all, delete-orphan")

    def __repr__(self):
        return f"<Product(sku={self.SKU}, name={self.ProductName}, price={self.Price}, currency={self.Currency})>"
