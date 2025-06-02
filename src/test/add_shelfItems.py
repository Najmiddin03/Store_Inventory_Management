from sqlalchemy.orm import Session

from src.database.connection import get_db
from src.models.shelfItems import ShelfItem
from src.models.products import Product

volume_map = {
    1: 60,
    2: 48,
    3: 30,
    4: 24,
    5: 25,
    6: 24,
    7: 48,
    8: 24,
    9: 24,
    10: 24,
    11: 24,
    12: 24,
    13: 24,
    14: 12,
    15: 12,
    16: 50,
    17: 40,
    18: 60,
    19: 12,
    20: 12,
    21: 24,
    22: 24,
    23: 12,
    24: 12,
    25: 10,
    26: 10,
    27: 10,
    28: 10,
    29: 10,
    30: 10,
    31: 10,
    32: 24,
    33: 12,
    34: 15,
    35: 20,
    36: 45,
    37: 30,
    38: 20,
    39: 12,
    40: 6,
    41: 24,
    42: 50,
    43: 10,
    44: 10,
    45: 12,
    46: 12,
    47: 12,
    48: 24,
    49: 15,
    50: 20,
    51: 30,
    52: 15,
    53: 12,
    54: 15
}


def add_shelf_items(db: Session):
    for shelf_index in range(100):
        shelf_id = shelf_index + 1
        base_product_id = shelf_index * 10

        # Fetch product info in one query
        products = (
            db.query(Product.id, Product.SKU, Product.Subcategory_id)
            .filter(Product.id >= base_product_id + 1, Product.id <= base_product_id + 10)
            .order_by(Product.id)
            .all()
        )

        # Define layout: (row_number, column_number, is_double_volume)
        layout = [
            (1, 1, True),  # 1st item
            (3, 1, False),  # 2nd
            (3, 2, False),  # 3rd
            (4, 1, False),  # 4th
            (4, 2, False),  # 5th
            (2, 1, True),  # 6th item
            (5, 1, False),  # 7th
            (5, 2, False),  # 8th
            (6, 1, False),  # 9th
            (6, 2, False),  # 10th
        ]

        shelf_items = []
        for idx, (row, col, is_double) in enumerate(layout):
            product = products[idx]
            volume = volume_map[product.Subcategory_id]
            quantity = volume * (2 if is_double else 1)

            item = ShelfItem(
                product_SKU=product.SKU,
                row_number=row,
                column_number=col,
                quantity=quantity,
                shelf_id=shelf_id
            )
            shelf_items.append(item)

        db.add_all(shelf_items)

    db.commit()


if __name__ == '__main__':
    db = next(get_db())
    add_shelf_items(db)
