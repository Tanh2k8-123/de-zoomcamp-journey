# Module 7 Unit 7 — The Flink image and services

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- JobManager coordinates jobs; TaskManagers execute work. The image includes Python and connector libraries.
- The working Dockerfile comes from the course snapshot; connector/runtime compatibility still needs runtime validation.
- Compose defines local networking and mounts src into containers; it does not create a production cluster.

## Practice plan

1. Inspect Dockerfile.flink and docker-compose.yml.
2. Build and start services only when ready, then inspect logs and the UI on port 8081.

## Understanding check

Why can Python code parse successfully while a Flink job fails to load a connector?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/07-the-flink-image-and-services.md)
