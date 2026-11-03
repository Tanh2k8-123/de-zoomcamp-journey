# Module 7 Unit 3 - Produce Messages to Kafka

- A producer serializes ride fields into bytes and sends the records to a topic.
- The course producer reads a monthly Parquet file and emits 1,000 rows per run.
- Taking the first 1,000 rows does not guarantee a small download, because the file may still be fetched in full.
- The flush call waits for pending sends to finish before the producer continues.
- Delivery guarantees depend on acknowledgment and retry settings, not on flush alone.
- Producers and consumers must agree on timestamp units and payload schema or event-time logic misreads records.
- Records sharing a key go to the same partition, which keeps their order inside that partition.
