from fastapi import Depends, APIRouter
from sqlalchemy.orm import Session

from src.crud.add_product import add_product
from src.crud.get.products import get_products
from src.database.connection import get_db
from src.schemas.product_schema import ProductSchema

router = APIRouter()


@router.get("/products", response_model=list[ProductSchema])
async def get_product(db: Session = Depends(get_db)):
    products = get_products(db)
    return products


@router.post("/products", response_model=ProductSchema)
async def create_product(product: ProductSchema, db: Session = Depends(get_db)):
    new_product = add_product(db, product.SKU, product.ProductName, product.Subcategory_id, product.Brand,
                              product.Price,
                              product.Currency, product.UnitSize, product.MeasurementUnit, product.Image)
    return new_product


@router.get("/products/{product_sku}", response_model=ProductSchema)
async def get_product(product_sku: str, db: Session = Depends(get_db)):
    product = get_products(db, product_sku)
    return product
