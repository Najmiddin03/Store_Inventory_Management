import pandas as pd
import sqlalchemy
from IPython.display import HTML
from database.connection import getConnection

engine = getConnection().get_engine()

df = pd.read_sql("select * from products", engine)


def make_Image_tag(url):
    return f'<img src="{url}" width="100"/>'


df['ImagePreview'] = df['Image'].apply(make_Image_tag)
HTML(df.to_html(escape=False))
