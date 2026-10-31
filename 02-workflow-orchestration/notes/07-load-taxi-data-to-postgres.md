# Module 2 Unit 7 - Load Taxi Data to Postgress

- The flow is a local ETL pipline: Extraxt CSV, Transform into staging, Merge into final table.
- 'wget + gunzip' downloads a gzipped NYC taxi CSV file.
- 'CopyIn' is an efficient way to bulk-load CSV into PostgreSQL.
- 'MERGE' prevents duplicate rows when loading new months incrementally.
- 'unique_row_id' and 'filename' support deduplication and lineage.
- The flow uses conditional tasks to branch between yellow and green taxi schemas.
