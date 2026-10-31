# Module 2 Unit 9 — ETL vs ELT

## ETL

ETL means:

```text
Extract -> Transform -> Load
```

This is common when the transformation happens before loading the destination system.

In Unit 7 and Unit 8, the local Postgres pipeline is closer to ETL because the CSV is downloaded, processed, loaded into staging, then merged into the final table.

## ELT

ELT means:

```text
Extract -> Load -> Transform
```

This is common in cloud data warehouses.

For BigQuery, the course uses ELT:

```text
CSV -> GCS data lake -> BigQuery external table -> transformed BigQuery table
```

The advantage is that large transformations can be executed by cloud compute instead of a local machine.
