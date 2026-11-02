# Module 5 Unit 6 — Core Concepts: Projects

## Core ideas

- A project is the container for environments, connections, and one or more pipelines.
- Environment names separate connection configurations; they do not by themselves guarantee isolation of physical data.
- Connection names referenced by pipelines must match entries in the local configuration.

## Practice plan

1. Compare .bruin.yml.example and pipeline/pipeline.yml in ../bruin_taxi/.
2. Trace the duckdb-default connection name to its database path.

## Understanding check

Could two environments accidentally write to the same DuckDB file?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/05-data-platforms/06-core-concepts-projects.md)
- [Lesson video](https://www.youtube.com/watch?v=YWDjnSxbBtY)
