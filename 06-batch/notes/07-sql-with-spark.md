# Module 6 Unit 7 — SQL with Spark

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- Register a DataFrame as a temporary view, then express aggregation in Spark SQL.
- DataFrame APIs and SQL can describe the same logical work; inspect the plan instead of assuming a performance difference.
- Group monthly revenue by month, zone, and service type. Preserve the intended grain in the output.

## Practice plan

1. Run ../code/taxi_monthly_revenue.py --help.
2. Use explicit local input/output paths when ready; review overwrite behavior before writing results.

## Understanding check

Which columns define one row of a monthly revenue report?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/07-sql-with-spark.md)
- [Lesson video](https://www.youtube.com/watch?v=uAlp2VuZZPY)
