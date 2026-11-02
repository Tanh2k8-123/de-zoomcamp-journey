# Module 6 Unit 4 — First Look at Spark/PySpark

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- Create a SparkSession, read data, inspect schema, and write a result.
- CSV schema inference adds work and may guess inappropriate types; explicit schemas define the intended representation.
- A partition is a unit of distributed data processing. Writing a DataFrame commonly produces a directory of part files.

## Practice plan

1. Run ../code/local_spark_demo.py and inspect the schema and Parquet output directory.
2. Change the small synthetic input and observe the report without downloading taxi data.

## Understanding check

Why does a Parquet output path usually contain multiple files?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/04-first-look-at-spark.md)
- [Lesson video](https://www.youtube.com/watch?v=r_Sf6fCB40c)
