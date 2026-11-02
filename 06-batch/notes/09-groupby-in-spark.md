# Module 6 Unit 9 — GroupBy in Spark

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- Grouping typically performs partial aggregation, shuffles by key, and combines results.
- A shuffle redistributes data between partitions and can dominate network/disk costs.
- Skewed keys produce uneven tasks; more partitions alone does not necessarily fix skew.

## Practice plan

1. Inspect explain() for the groupBy in the demo.
2. Identify the grouping keys and explain why rows sharing a key must meet.

## Understanding check

Why can a simple groupBy be more expensive than a select/filter?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/09-groupby-in-spark.md)
- [Lesson video](https://www.youtube.com/watch?v=9qrDsY_2COo)
