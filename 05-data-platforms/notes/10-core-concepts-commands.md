# Module 5 Unit 10 — Core Concepts: Commands

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- validate checks definitions; lineage displays dependency relationships; run executes selected work; query inspects database results.
- Validation does not prove every business rule or external connection will succeed at runtime.
- Inspect scope before using upstream/downstream options or full refresh. Runtime flags depend on the installed CLI version.

## Practice plan

1. From ../bruin_taxi run bruin validate ./pipeline/pipeline.yml before bruin run.
2. Query the small report and compare it with the synthetic CSV totals described in the working README.

## Understanding check

Why validate before execution, then inspect data after execution?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/05-data-platforms/10-core-concepts-commands.md)
- [Lesson video](https://www.youtube.com/watch?v=3nykPEs_V7E)
