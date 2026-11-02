# Module 4 Unit 7 — dbt Seeds and Macros

## Core ideas

- Seeds load small CSV lookup files into warehouse tables. Editing CSV does not update a loaded table until dbt seed runs again.
- Macros are Jinja templates that generate reusable SQL at compile time, rather than database functions installed in DuckDB.
- ref() can reference a model or seed. A macro call such as get_vendor_data('vendor_id') expands into SQL; the quoted argument supplies column-expression text.

## Practice plan

1. Read seeds/payment_type_lookup.csv and macros/get_vendor_data.sql.
2. Compile dim_vendors, inspect the generated CASE expression, then run and test the model when ready.

## Understanding check

How does a seed lookup differ from a macro that generates a CASE expression?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/04-analytics-engineering/07-dbt-seeds-and-macros.md)
- [Lesson video](https://www.youtube.com/watch?v=lT4fmTDEqVk)
