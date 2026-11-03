# Module 7 Unit 8 - The Pass-Through Flink Job

- The pass-through job declares a Kafka source and a JDBC sink, then inserts converted events into PostgreSQL.
- Flink table DDL describes the connector, but the physical PostgreSQL target table must already exist.
- The job enables checkpoints, and recovery still depends on available checkpoints plus restart and state storage settings.
- JDBC append does not automatically provide exactly-once output even when checkpoints are enabled.
- The source uses latest-offset, so a freshly submitted job starts reading at the end of the log.
- A running latest-offset job can write zero rows because records produced earlier are never read.
- Reading from earliest-offset instead replays the retained history of each partition into the sink.
