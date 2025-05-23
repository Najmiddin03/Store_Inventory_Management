from sqlalchemy import Column, String, Integer, ForeignKey
from sqlalchemy.orm import relationship

from src.models.base import Base
from src.models.sales import Sale
from src.models.products import Product
from src.models.batch import Batch


class Item(Base):
    __tablename__ = 'saleItems'

    id = Column(Integer, primary_key=True, autoincrement=True)
    sale_id = Column(Integer, ForeignKey('sales.id'))
    product_SKU = Column(String(50), ForeignKey('products.SKU'))
    batch_id = Column(Integer, ForeignKey('batches.id'))
    quantity = Column(Integer, nullable=False, default=1)

    sales = relationship('Sale', backref='items')
    product = relationship('Product', backref='items')
    batch = relationship('Batch', backref='items')
