from fastapi import Depends, APIRouter, HTTPException
from sqlalchemy.orm import Session

from src.crud.add_sale import generate_TZ_number
from src.database.connection import get_db
from src.models.batch import Batch
from src.models.saleItems import Item
from src.models.sales import Sale
from src.schemas.sale_schema import SaleCreateRequest

router = APIRouter()


@router.post("/sale")
async def create_sale(request: SaleCreateRequest, db: Session = Depends(get_db)):
    # Initialize sale
    sale = Sale(
        transaction_number=generate_TZ_number(db),
        payment_method=request.payment_method
    )
    db.add(sale)
    db.commit()
    db.refresh(sale)

    # Add items
    for item in request.items:
        batch = None
        if item.batch_id:
            batch = db.query(Batch).filter(
                Batch.id == item.batch_id,
                Batch.product_SKU == item.product_SKU,
                Batch.quantity > 0
            ).first()
        if not batch:
            batch = (
                db.query(Batch).
                filter(Batch.product_SKU == item.product_SKU, Batch.quantity > 0)
                .order_by(Batch.expiry_date.asc())
                .first()
            )
        if not batch:
            raise HTTPException(status_code=400, detail=f"Out of stock for product {item.product_SKU}")

        batch.quantity -= 1
        db.flush()

        sale_item = Item(
            sale_id=sale.id,
            product_SKU=item.product_SKU,
            batch_id=item.batch_id
        )
        # Remove from stock

        db.add(sale_item)
    db.commit()

    # Finish sale
    sale.payment_status = "completed"
    db.commit()
