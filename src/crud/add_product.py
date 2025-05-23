from src.models.products import Product
from sqlalchemy.orm import Session


def add_product(session: Session, sku: str, name: str, subcategory:int ,brand: str, price: float, currency: str, unitSize: float,
                measurementUnit: str, image: str):
    product = Product(
        SKU=sku,
        ProductName=name,
        Subcategory_id=subcategory,
        Brand=brand,
        Price=price,
        Currency=currency,
        UnitSize=unitSize,
        MeasurementUnit=measurementUnit,
        Image=image
    )
    session.add(product)
    session.commit()
    session.refresh(product)
    return product
