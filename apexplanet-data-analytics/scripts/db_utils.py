from sqlalchemy import create_engine

def get_connection():
    return create_engine(r"sqlite:///C:/Users/vbhav/sales.db")