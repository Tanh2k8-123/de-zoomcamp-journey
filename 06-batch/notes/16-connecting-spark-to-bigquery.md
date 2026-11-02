# Module 6 Unit 16 — Connecting Spark to BigQuery

## Core ideas

- Reference-only: a compatible Spark BigQuery connector handles warehouse reads/writes.
- Authentication, project/dataset permissions, billing, and connector write mode all matter.
- Sandbox access to public queries does not establish permission to write pipeline outputs.

## Practice plan

1. Compare the course-derived 06_spark_sql_big_query.py with the local revenue script.
2. Keep local Parquet output until a writable cloud environment is available.

## Understanding check

Why can reading public BigQuery data succeed while writing a table fails?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/16-connecting-spark-to-bigquery.md)
- [Lesson video](https://www.youtube.com/watch?v=HIm2BOj8C0Q)
