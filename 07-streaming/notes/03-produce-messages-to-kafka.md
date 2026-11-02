# Module 7 Unit 3 — Produce messages to Kafka

## Core ideas

- A producer serializes ride fields into bytes and sends records to a topic.
- The course producer reads a monthly Parquet file then emits 1,000 rows; head(1000) does not guarantee a tiny download.
- flush waits for pending sends; delivery guarantees also depend on acknowledgment/retry settings.

## Practice plan

1. Inspect src/models.py and src/producers/producer.py before running it.
2. Start the broker, then run uv run python src/producers/producer.py from ../code.

## Understanding check

Why must producers and consumers agree on timestamp units and payload schema?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/03-produce-messages-to-kafka.md)
