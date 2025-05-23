from sqlalchemy import Column, String, Integer, DateTime, ForeignKey, text
from sqlalchemy.orm import relationship

from src.models.base import Base
from src.models.products import Product


class Batch(Base):
    __tablename__ = 'batches'
    id = Column(Integer, primary_key=True)
    product_SKU = Column(String(50), ForeignKey('products.SKU'), nullable=False)
    quantity = Column(Integer, nullable=False)
    delivery_date = Column(DateTime, server_default=text('GETDATE()'))
    expiry_date = Column(DateTime)

    product = relationship('Product', backref='batches')
