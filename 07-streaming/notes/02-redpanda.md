# Module 7 Unit 2 — Redpanda - a Kafka-compatible broker

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- Redpanda exposes Kafka-compatible APIs for producers and consumers.
- Host clients use localhost:9092; containers on the Compose network use redpanda:29092.
- Bootstrap and advertised listener addresses must be reachable from the client network.

## Practice plan

1. From ../code run docker compose config --quiet, then start only redpanda when ready.
2. Inspect docker compose logs redpanda and distinguish the host listener from the container listener.

## Understanding check

Why does localhost inside a Flink container not refer to Redpanda?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/02-redpanda.md)
