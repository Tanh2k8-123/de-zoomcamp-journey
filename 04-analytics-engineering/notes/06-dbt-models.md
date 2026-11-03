# Module 4 Unit 6 - dbt Models

- A SQL model is a `.sql` file describing a transformation as a SELECT query, where SQL decides the data and materialization decides how dbt stores it.
- `ref()` resolves another model's relation name and records a dependency in the DAG, whereas `source()` points at a raw table.
- Dependencies set execution order among selected resources, but referencing a model does not automatically select it to run.
- Reading staging through `ref()` reuses its renamed columns, cast types, and filters instead of repeating the raw transformations.
- Staging standardizes source data, intermediate combines and enriches it, and marts serve facts, dimensions, or aggregates without requiring aggregation.
- `int_trips_unioned` appends both staging models with `UNION ALL` in matching column order, so row counts add up instead of deduplicating.
- `int_trips` builds `trip_id` from vendor, pickup time, pickup location, and service type, keeping one row per key with `row_number()` and `QUALIFY`.
- Views store a query definition, tables rebuild the result on every run, and incremental models create the table once then merge new rows by `unique_key`.
- The incremental filter selects timestamps above the stored maximum, so it misses late-arriving older trips, rows equal to that maximum, and corrections to stored trips.
