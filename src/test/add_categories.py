from sqlalchemy.orm import sessionmaker

from src.crud.add_category import add_category
from src.database.connection import getConnection

Session = sessionmaker(bind=getConnection().get_engine())
session = Session()


def add_categories():
    add_category(session, 'Cleaning products')
    add_category(session, 'Drinks')
