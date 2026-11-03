# Module 6 Unit 7 - SQL with Spark

- A DataFrame registered as a temporary view becomes queryable in Spark SQL.
- Spark SQL and the DataFrame API can describe exactly the same logical work.
- Both use the same planner, so inspect the plan instead of assuming SQL is faster.
- Monthly revenue is grouped by month, pickup zone, and service type.
- Those grouping keys define what one row of the revenue report means.
- An aggregation should preserve the intended grain instead of collapsing it.
- Spark write modes decide whether an existing output path is overwritten or rejected.
