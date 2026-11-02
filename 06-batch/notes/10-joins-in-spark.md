# Module 6 Unit 10 — Joins in Spark

## Core ideas

- Large joins often shuffle both sides by join key; broadcast joins can distribute a sufficiently small lookup to executors.
- Join multiplicity affects row counts: duplicate keys on the lookup side can multiply fact rows.
- The physical strategy depends on sizes, statistics, configuration, and optimization decisions.

## Practice plan

1. Use a tiny zone lookup DataFrame and compare explain() with and without broadcast().
2. Check uniqueness of lookup keys and row counts before/after the join.

## Understanding check

Why is broadcasting a large table risky?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/10-joins-in-spark.md)
- [Lesson video](https://www.youtube.com/watch?v=lu7TrqAWuH4)
