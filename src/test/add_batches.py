from sqlalchemy.orm import sessionmaker
from datetime import datetime
from src.crud.add_batch import add_batch
from src.database.connection import getConnection

Session = sessionmaker(bind=getConnection().get_engine())
session = Session()


def add_batches():
    add_batch(session, '40564896222222', 50, datetime(2027, 3, 31))
    add_batch(session, '40564896222222', 100, datetime(2027, 5, 30))
    add_batch(session, '3245678667002', 20)
    add_batch(session, '3245678667002', 30)
    add_batch(session, '5449000000996', 48, datetime(2026, 3, 31))
