# Module 7 Unit 1 - PyFlink: Stream Processing Workshop

- The workshop connects taxi events through a Kafka-compatible broker to Python consumers, Flink, and PostgreSQL.
- A producer publishes events, a broker stores the log, consumers process records, and a sink stores outputs.
- The broker stores the ordered event log, while Flink performs the window calculations on those records.
- The working code is a course-derived local lab, not a production deployment.
- PyFlink exposes Flink's DataStream and Table APIs to Python programs on the shared Flink runtime.
- Each stage scales independently, so a slow sink builds consumer lag instead of blocking the broker.
