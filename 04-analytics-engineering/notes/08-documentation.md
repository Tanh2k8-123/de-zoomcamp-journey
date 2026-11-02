# Module 4 Unit 8 — Documentation

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- Document sources, models, columns, seeds, and macros in YAML using names that match project resources.
- Describe the grain, business meaning, units, filters, and limitations, rather than only repeating column names.
- docs generate collects artifacts and database catalog metadata; docs serve displays them locally. A declared data_type alone is different from an enforced model contract.

## Practice plan

1. Read models/marts/schema.yml and macros/macros_properties.yml.
2. Run dbt docs generate, then dbt docs serve --port 8085; browse lineage and a model description. Stop the server with Ctrl+C.

## Understanding check

Why can a model be technically correct but still hard for an analyst to use?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/04-analytics-engineering/08-documentation.md)
- [Lesson video](https://www.youtube.com/watch?v=UqoWyMjcqrA)
