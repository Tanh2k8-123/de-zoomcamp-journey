# Module 7 Unit 1 — PyFlink: Stream Processing Workshop

## Core ideas

- The workshop connects taxi events through a Kafka-compatible broker to Python consumers and Flink, then PostgreSQL.
- A producer publishes events; a broker stores a log; consumers process records; a sink stores outputs.
- The working code is a course-derived local lab, not a production deployment.

## Practice plan

1. Read ../code/README.md and draw producer -> Redpanda -> consumer/Flink -> PostgreSQL.
2. Do not start services until checking ports and memory requirements.

## Understanding check

Which component stores the event log, and which performs window calculations?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/01-introduction.md)
- [Lesson video](https://www.youtube.com/watch?v=YDUgFeHQzJU)
