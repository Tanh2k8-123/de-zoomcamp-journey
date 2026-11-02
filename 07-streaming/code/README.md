# Streaming working project

Status: course code prepared for study. Containers, producers, and Flink jobs have not been run during preparation. Connector/runtime compatibility needs an actual build and job submission later.

Architecture: producer -> Redpanda -> Python consumer or Flink -> PostgreSQL.

## WSL workflow

```bash
cd /mnt/e/TuanAnh/Project/de-zoomcamp-2027/07-streaming/code
docker compose config --quiet
uv sync --python 3.12
docker compose up -d redpanda postgres
docker compose exec -T postgres psql -U postgres -d postgres -v ON_ERROR_STOP=1 < ../sql/init.sql
```

For the Python consumer exercise, run a consumer in one terminal and the producer in another:

```bash
uv run python src/consumers/consumer.py
# Alternatively: uv run python src/consumers/consumer_postgres.py
```

```bash
uv run python src/producers/producer.py
```

The producer downloads a monthly remote Parquet input before selecting 1,000 rows. Its network/data availability has not been checked. Default host ports: 5432 (PostgreSQL), 9092 (Kafka), 8081 (Flink UI). Stop conflicting earlier labs before starting services; Docker ports and container DNS are different address spaces.

## Flink exercise

After studying Units 6–8:

```bash
docker compose up --build -d
docker compose exec jobmanager ./bin/flink run -py /opt/src/job/pass_through_job.py --pyFiles /opt/src -d
```

Publish new records after submitting the latest-offset job. Use the UI at http://localhost:8081 to inspect and cancel it before moving to another exercise. The Makefile provides job, aggregation_job (one-hour windows), and demo_job (ten-second windows) targets. Avoid running several exercises against the same sink concurrently.

The JDBC targets must exist: init.sql creates both pass-through and aggregate tables. The aggregate primary key supports upserts; the pass-through table can accumulate duplicates on replay. Checkpointing alone does not establish end-to-end exactly-once writes.

## Cleanup and storage

```bash
docker compose down
```

The course Compose defines no explicit durable database/broker volumes; do not rely on container recreation to preserve lab data. The PostgreSQL password in this workshop is a public local-demo value, not an account credential. Keep the lab local.

## Attribution

Primary workshop files copied from [DataTalksClub](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/code), revision 8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e. The Makefile job path was corrected from missing start_job.py to pass_through_job.py; demo_job, target-table SQL, and this guide were added. The optional live/extras trees and homework were excluded.
