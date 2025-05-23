from sqlalchemy.orm import sessionmaker

from src.crud.add_subcategory import add_subcategory
from src.database.connection import getConnection

Session = sessionmaker(bind=getConnection().get_engine())
session = Session()


def add_subcategories():
    add_subcategory(session, 'Napkins', 1)
    add_subcategory(session, 'Carbonated drinks', 2)
