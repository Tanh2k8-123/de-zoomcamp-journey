# Unit 6 - Creating the Data Ingestion Script
- Notebooks are good for exploration; scripts are better for repeatable pipelines.
- The ingestion script has clear inputs: year, month, table name, database connection, chunk size.
- 'click' makes the script reusable without editing code.
-'pd.read_csv(..., iterator=True, chunksize=N)' reads large CSV files in batches.
- The first chunk creates table schema with 'head(0).to_sql(...)'.
- Later chunks append data with 'to_sql(..., if_exists='append')'.
- Chunking avoids loading the whole CSV into memory at once.