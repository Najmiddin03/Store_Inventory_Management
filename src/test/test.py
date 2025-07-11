from src.database.connection import getConnection, get_db
from src.test.add_batches import add_batches
from src.test.add_shelfItems import add_shelf_items
from src.test.add_shelves import add_shelves


def get_categories_sql():
    with open("SQLqueries/add_categories.sql", 'r') as f:
        sql_query = f.read()
    return sql_query


def get_subcategories_sql():
    with open("SQLqueries/add_subcategories.sql", 'r') as f:
        sql_query = f.read()
    return sql_query


def get_drinks_sql():
    query = ""
    with open("SQLqueries/add_products/Drinks/waters.sql", 'r') as f:
        sql_query = f.read()
    query += sql_query
    with open("SQLqueries/add_products/Drinks/carbonated_drinks.sql", 'r') as f:
        sql_query = f.read()
    query += sql_query
    with open("SQLqueries/add_products/Drinks/tonic.sql", 'r') as f:
        sql_query = f.read()
    query += sql_query
    with open("SQLqueries/add_products/Drinks/juices.sql", 'r') as f:
        sql_query = f.read()
    query += sql_query
    with open("SQLqueries/add_products/Drinks/iced_teas.sql", 'r') as f:
        sql_query = f.read()
    query += sql_query
    with open("SQLqueries/add_products/Drinks/sports_drinks.sql", 'r') as f:
        sql_query = f.read()
    query += sql_query
    with open("SQLqueries/add_products/Drinks/energy_drinks.sql", 'r') as f:
        sql_query = f.read()
    query += sql_query
    return query


def insert_products_sql():
    with open("SQLqueries/add_products/Alcohols/Beers.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)
    with open("SQLqueries/add_products/Alcohols/Wines.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)
    with open("SQLqueries/add_products/Snacks.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)
    with open("SQLqueries/add_products/Pantry.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)
    with open("SQLqueries/add_products/Fruits & Vegetables.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)
    with open("SQLqueries/add_products/Dairy & Eggs.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)
    with open("SQLqueries/add_products/Bread & Bakery.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)
    with open("SQLqueries/add_products/Meat & Poultry.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)
    with open("SQLqueries/add_products/Frozen Foods.sql", 'r') as f:
        sql_query = f.read()
        insert_sql(sql_query)


def set_weighted():
    with open("SQLqueries/set_is_weighted.sql", 'r') as f:
        query = f.read()
        insert_sql(query)


def insert_sql(sql_query):
    conn = getConnection().get_raw_connection()
    try:
        cursor = conn.cursor()
        cursor.execute(sql_query)  # execute full SQL string at once
        conn.commit()
    except Exception as e:
        print(f"Error executing SQL script: {e}")
        conn.rollback()
    finally:
        cursor.close()
        conn.close()


if __name__ == '__main__':
    sql_query = get_categories_sql()
    insert_sql(sql_query)
    sql_query = get_subcategories_sql()
    insert_sql(sql_query)
    sql_query = get_drinks_sql()
    insert_sql(sql_query)
    insert_products_sql()
    set_weighted()
    db = next(get_db())
    add_shelves(db)
    add_shelf_items(db)
    add_batches(db)
