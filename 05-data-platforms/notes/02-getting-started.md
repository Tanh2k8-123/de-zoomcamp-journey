# Module 5 Unit 2 — Getting Started with Bruin

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- Develop in WSL with the Bruin CLI. Check the installed version and CLI help before following flags from a course snapshot.
- .bruin.yml contains local environments and connections; pipeline.yml contains schedule and defaults; assets hold executable definitions.
- The supplied starter uses only synthetic CSV data and DuckDB; it does not download the taxi dataset or require GCP.

## Practice plan

1. Follow ../bruin_taxi/README.md to create the ignored local connection file.
2. Run bruin version, bruin validate ./pipeline/pipeline.yml, then run the small starter after reviewing the graph.

## Understanding check

Which file describes the connection, and which describes the pipeline?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/05-data-platforms/02-getting-started.md)
- [Lesson video](https://www.youtube.com/watch?v=JJwHKSidX_c)
