# Module 6 Unit 12 — Spark RDD mapPartition

## Core ideas

- Optional: mapPartitions processes an iterator for each partition rather than initializing work per row.
- Expensive resources such as model loading can be initialized once per partition.
- Tasks can be retried, so external side effects need idempotency. Avoid loading an unbounded partition into memory.

## Practice plan

1. Inspect the partition-level example in the RDD notebook.
2. Compare a setup cost per row with a setup cost per partition on paper.

## Understanding check

Why must partition code tolerate retries?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/12-spark-rdd-mappartition.md)
- [Lesson video](https://www.youtube.com/watch?v=k3uB2K99roI)
