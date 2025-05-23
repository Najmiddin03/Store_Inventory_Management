from src.models.batch import Batch
from sqlalchemy.orm import Session


def get_batches(db: Session, batch_id: int = None):
    if batch_id:
        return db.query(Batch).where(Batch.id == batch_id).first()
    return db.query(Batch).all()
