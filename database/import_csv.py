import pandas as pd
import sqlalchemy as sqla
import datetime as dt
import argparse
import re

def populate_locations(engine: sqla.Engine, csv_data: pd.DataFrame):
    location_names = list(csv_data.columns[3:])
    
    
    with engine.connect() as conn:
        for location_name in location_names:
            # insert missing values into table
            conn.execute(sqla.text(f"""
                INSERT INTO absdata.location (name)
                VALUES ('{location_name}')
                ON CONFLICT (name) DO NOTHING
            """))
        conn.commit()
def populate_category(engine: sqla.Engine, csv_data: pd.DataFrame):
    cat_names = list(csv_data["category"])
    with engine.connect() as conn:
        for cat_name in cat_names:
            conn.execute(sqla.text(
                f"""
                INSERT INTO absdata.category (name)
                VALUES ('{cat_name}')
                ON CONFLICT DO NOTHING
                """))
            conn.commit()
def populate_items(engine: sqla.Engine, csv_data: pd.DataFrame):
    cat_item_names = list(csv_data.apply(lambda x: (x["item"],x['category']),axis=1))
    with engine.connect() as conn:
        for item_name,cat_name in cat_item_names:
            # insert missing values into table
            conn.execute(sqla.text(f"""
                INSERT INTO absdata.item (name,category)
                VALUES ('{item_name}','{cat_name}')
                ON CONFLICT DO NOTHING
            """))
        conn.commit()

def populate_prices(engine: sqla.Engine, csv_data: pd.DataFrame, date: sqla.DATE):
    with engine.connect() as conn:
        for i, item_name in enumerate(csv_data["item"]):
            for j, location_name in enumerate(csv_data.columns[3:-1]):
                price = csv_data.iloc[i, j+3]
                #print(item_name + str(i) + ':' + str(j+3))
                # insert price into table
                conn.execute(sqla.text(f"""
                    INSERT INTO absdata.price (location, item, date, price)
                    VALUES ('{location_name}', '{item_name}', '{date}', {price})
                    ON CONFLICT (location, item, date) DO UPDATE SET price = {price}
                """))
                conn.commit()

def import_csv(engine: sqla.Engine, csv_file: str, date: sqla.DATE):
    csv_data = pd.read_csv(csv_file)
    
    populate_locations(engine, csv_data)
    populate_category(engine, csv_data)
    populate_items(engine, csv_data)
    populate_prices(engine, csv_data, date)
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("input_dir", help= "path to input csv file")
    args = parser.parse_args()
    s_date = re.split(r'[/.]',args.input_dir)[-2]
    print(s_date)
    date = dt.datetime.strptime(s_date, "%Y-%m").date()
    
    conn_str = "postgresql://postgres:password@localhost:5432/fit316x"
    engine = sqla.create_engine(conn_str)
    
    import_csv(engine, args.input_dir, date)