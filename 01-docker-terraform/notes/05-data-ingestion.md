# Unit 5 - NY Taxi Dataset and Data Ingestion

- Source: public NYC taxi CSV file.
- Tool for exploration: Jupyter notebook + pandas.
- Data problem: CSV columns may have mixed inferred types, so explicit dtypes are needed.
- Ingestion targer: PostgreSQL table 'yellow_taxi_data'.
SQLAlchemy engine represents a reusable database connection.
- 'df.head(n=0).to_sql(... if_exists="replace")' creates table schema without inserting data.
- Full ingestion should be chunked to avoid loading a huge CSV into memory at once