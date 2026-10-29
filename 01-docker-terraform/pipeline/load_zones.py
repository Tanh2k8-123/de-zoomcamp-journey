import pandas as pd
from sqlalchemy import create_engine

engine = create_engine("postgresql+psycopg://root:root@localhost:5432/ny_taxi")

df = pd.read_csv(
    "data/taxi_zone_lookup.csv",
    dtype={
        "LocationID": "Int64",
        "Borough": "string",
        "Zone": "string",
        "service_zone": "string",
    },
    encoding="latin-1",
)

df.head(0).to_sql(
    name="zones",
    con=engine,
    if_exists="replace",
    index=False,
)

df.to_sql(
    name="zones",
    con=engine,
    if_exists="append",
    index=False,
)

print("Loaded zones rows:", len(df))