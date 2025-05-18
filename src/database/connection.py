import pyodbc
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from config.config import SERVER, DATABASE


class MSSQLConnection:
    def __init__(self, server, database, driver='ODBC Driver 17 for SQL Server'):
        self.server = server
        self.database = database
        self.driver = driver
        self.connection_string = f"mssql+pyodbc://@{self.server}/{self.database}?trusted_connection=yes&driver={self.driver}"

    def get_engine(self):
        """Create and return SQLAlchemy engine using Windows Authentication"""
        return create_engine(self.connection_string)

    def get_session(self):
        """Create and return a new session"""
        engine = self.get_engine()
        Session = sessionmaker(bind=engine)
        return Session()

    def get_raw_connection(self):
        """Get a raw pyodbc connection (for non-ORM operations) using Windows Auth"""
        conn_str = f"DRIVER={self.driver};SERVER={self.server};DATABASE={self.database};Trusted_Connection=yes;"
        return pyodbc.connect(conn_str)

    def test_connection(self):
        """Test the database connection"""
        try:
            conn = self.get_raw_connection()
            conn.close()
            return True
        except Exception as e:
            print(f"Connection failed: {str(e)}")
            return False


# Initialize connection
def getConnection():
    return MSSQLConnection(SERVER, DATABASE)
