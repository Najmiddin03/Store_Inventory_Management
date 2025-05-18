from src.models.base import Base
from src.models.products import Product
from src.models.categories import Category
from src.models.subcategories import SubCategory
from connection import getConnection


def create_database_tables():
    """Create all tables in the database based on SQLAlchemy models"""

    # Get connection
    db = getConnection()

    if not db.test_connection():
        print("Failed to connect to database")
        return False

    try:
        engine = db.get_engine()

        # Verify all tables are registered
        print("Registered tables:", Base.metadata.tables.keys())

        # Create all tables in proper order
        Base.metadata.create_all(engine)
        # Product.metadata.create_all(engine)
        # Category.metadata.create_all(engine)
        # SubCategory.metadata.create_all(engine)

        print("Successfully created all tables:")
        print("- Categories")
        print("- Subcategories")
        print("- Products")
        return True
    except Exception as e:
        print(f"Error creating tables: {str(e)}")
        return False


if __name__ == "__main__":
    create_database_tables()
