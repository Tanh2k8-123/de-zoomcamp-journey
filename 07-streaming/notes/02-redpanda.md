# Module 7 Unit 2 - Redpanda - a Kafka-Compatible Broker

- Redpanda exposes Kafka-compatible APIs, so standard Kafka producers and consumers work against it.
- Host clients connect to localhost on port 9092; containers on the Compose network use redpanda on port 29092.
- Bootstrap servers and advertised listener addresses must be reachable from the network each client uses.
- Inside a Flink container, localhost is that container's own loopback interface, not the Redpanda broker.
- Kafka clients fetch cluster metadata after connecting, so advertised addresses must resolve for the client.
- A topic is split into partitions, and each partition stores an ordered, append-only log of records.
