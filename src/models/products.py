from sqlalchemy import Column, String, Integer, DECIMAL, DateTime, Boolean, ForeignKey, text
from datetime import datetime
from sqlalchemy.orm import relationship
from src.models.base import Base


class Product(Base):
    __tablename__ = 'products'

    id = Column(Integer, primary_key=True, autoincrement=True)  # Internal ID
    SKU = Column(String(50), unique=True, nullable=False)
    ProductName = Column(String(100), nullable=False)
    Subcategory_id = Column(Integer, ForeignKey('subcategories.id'))
    Brand = Column(String(50))
    Price = Column(DECIMAL(10, 2), nullable=False)
    Currency = Column(String(10), nullable=False)
    UnitSize = Column(DECIMAL(10, 2))  # Flexible for kg, L, pcs, etc.
    MeasurementUnit = Column(String(20))  # e.g., 'kg', 'L', 'pcs'
    CurrentStock = Column(Integer, nullable=False, server_default=text('0'))
    ReorderLevel = Column(Integer, server_default=text('0'))
    IsActive = Column(Boolean, server_default=text('1'))
    Image = Column(String(100))
    CreatedAt = Column(DateTime, server_default=text('GETDATE()'))
    UpdatedAt = Column(DateTime, server_default=text('GETDATE()'))

    # Relationship
    subcategory = relationship("Subcategory", back_populates="products")

    def __repr__(self):
        return f"<Product(sku={self.SKU}, name={self.ProductName}, price={self.Price}, currency={self.Currency})>"
