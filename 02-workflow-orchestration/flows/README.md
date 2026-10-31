# Module 2 Flows

This folder contains the Kestra flow files used for learning.

## Local flows

These can be run once Kestra and local Postgres are up:

```text
01_hello_world.yaml
02_kestra_concepts.yaml
03_python_dockerhub.yaml
04_getting_started_data_pipeline.yaml
05_postgres_taxi.yaml
06_postgres_taxi_scheduled.yaml
```

Recommended custom namespace:

```text
de_zoomcamp_2027
```

## GCP reference flows

These require Google Cloud credentials, KV values, and BigQuery/GCS resources:

```text
gcp/06_gcp_kv.yaml
gcp/07_gcp_setup.yaml
gcp/08_gcp_taxi.yaml
gcp/09_gcp_taxi_scheduled.yaml
```

Do not commit real service account JSON keys.

## AI reference flows

These require Gemini API access:

```text
ai/10_chat_without_rag.yaml
ai/11_chat_with_rag.yaml
```

Do not commit API keys.
