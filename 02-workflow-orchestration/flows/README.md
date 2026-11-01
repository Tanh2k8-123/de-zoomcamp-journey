# Module 2 Flows

This folder contains the Kestra flow files used for learning.

## Local runnable flows

These can be run after starting the Module 2 Docker Compose stack:

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

These require Google Cloud credentials, Kestra KV values, and GCS/BigQuery resources:

```text
06_gcp_kv.yaml
07_gcp_setup.yaml
08_gcp_taxi.yaml
09_gcp_taxi_scheduled.yaml
```

Do not commit real service account JSON keys. Use Kestra Secrets and KV Store.

## AI reference flows

These require Gemini API access:

```text
10_chat_without_rag.yaml
11_chat_with_rag.yaml
```

Do not commit API keys.
