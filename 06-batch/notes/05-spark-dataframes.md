# Module 6 Unit 5 — Spark DataFrames

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- select, filter, and withColumn build lazy transformations; show, count, and writes trigger execution.
- Prefer built-in expressions when possible so Spark can optimize work.
- A Python UDF introduces serialization and execution boundaries and can be slower than equivalent built-in expressions.

## Practice plan

1. Identify transformations and actions in the local demo.
2. Add a filter on service_type and inspect explain() before triggering a write.

## Understanding check

Does constructing a filtered DataFrame necessarily scan the input immediately?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/05-spark-dataframes.md)
- [Lesson video](https://www.youtube.com/watch?v=ti3aC1m3rE8)
