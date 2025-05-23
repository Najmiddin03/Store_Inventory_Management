from sqlalchemy.orm import sessionmaker

from src.crud.add_product import add_product
from src.database.connection import getConnection

Session = sessionmaker(bind=getConnection().get_engine())
session = Session()


def add_products():
    add_product(session, '40564896222222', 'Wet napkin', 1, 'Floralys,', 1.99, 'USD', 60, 'pcs',
                'https://i.ibb.co/h12DSh35/wet-napkin-01.jpg')
    add_product(session, '3245678667002', 'Cotton buds', 1, 'Auchan', 0.99, 'USD', 100, 'pcs',
                'https://i.ibb.co/3y3BgFVj/photo-2025-05-19-12-22-30.jpg')
    add_product(session, '5449000000996', 'Coca cola', 2, 'Coca cola', 0.99, 'USD', 330, 'ml',
                'https://i.ibb.co/9khGvZxm/cola330ml.jpg')
