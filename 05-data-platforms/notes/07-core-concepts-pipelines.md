# Module 5 Unit 7 — Core Concepts: Pipelines

## Core ideas

- A pipeline groups assets with a shared schedule and configuration.
- pipeline.yml names the pipeline and selects default connections. The dependency graph determines asset execution order.
- A declared schedule describes timing, but a local CLI invocation alone is not an always-on scheduler.

## Practice plan

1. Inspect the starter pipeline.yml and its three-layer asset graph.
2. Run bruin lineage ./pipeline/pipeline.yml from the starter root after installing the CLI.

## Understanding check

Why might hourly and monthly workloads belong in different pipelines?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/05-data-platforms/07-core-concepts-pipelines.md)
- [Lesson video](https://www.youtube.com/watch?v=uzp_DiR4Sok)
