from enum import Enum

import sqlalchemy
from sqlalchemy import Column, ForeignKey, Integer, String, DECIMAL
from sqlalchemy.orm import relationship

from src.models.base import Base

class Reason(Enum):
    Expired='expired'
    Stolen='stolen'
    Damaged='damaged'

class Waste(Base):
    __tablename__ = 'waste'
    id = Column(Integer, primary_key=True)
    product_sku = Column(String(50),ForeignKey('products.SKU'))
    batch_id = Column(Integer, ForeignKey('batches.id'))
    quantity = Column(DECIMAL(10, 2), nullable=False, default=1)
    reason=Column(sqlalchemy.Enum(Reason), nullable=False, default=Reason.Expired)

    product = relationship('Product', backref='items')
    batch = relationship('Batch', backref='items')