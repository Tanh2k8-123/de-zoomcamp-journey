# Module 4 Unit 9 — dbt Tests

## Core ideas

- Data tests query for violations: zero failing rows normally means PASS. Generic tests are reusable; singular tests express a specific rule in SQL.
- Built-in generic tests include not_null, unique, accepted_values, and relationships. Relationships checks exclude NULL child keys, so add not_null when required.
- Unit tests compare model logic against small fixtures; they still execute SQL through the adapter. Contracts check the output shape and declared types, with constraint support depending on the adapter.
- Freshness compares a configured timestamp against recency thresholds. Historical taxi pickup dates do not measure current ingestion health.

## Practice plan

1. Review the existing data_tests in staging and marts schema files.
2. Run dbt test --select dim_zones --indirect-selection cautious, then inspect a relationships test after fct_trips exists. Do not impose positive-fare rules without checking refunds and business definitions.

## Understanding check

How does a data FAIL differ from the missing-table ERROR encountered in Unit 6?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/04-analytics-engineering/09-dbt-tests.md)
- [Lesson video](https://www.youtube.com/watch?v=bvZ-rJm7uMU)
