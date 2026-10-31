# Module 2 Completion Status

## Completed locally

- Unit 1: workflow orchestration concept.
- Unit 2: Kestra overview.
- Unit 3: Kestra Docker Compose installation.
- Unit 4: Kestra concepts.
- Unit 5: Python task in Kestra, Docker Hub flow executed successfully.
- Unit 6: getting-started pipeline material and flow copied.
- Unit 7: local Postgres taxi flow copied and explained.
- Unit 8: scheduled/backfill flow copied and explained.
- Unit 9: ETL vs ELT concept notes completed.

## Blocked by GCP access

These are documented and flow files are copied, but not executed:

- Unit 10: setup GCP.
- Unit 11: load taxi data to BigQuery.
- Unit 12: schedule and backfill full dataset in GCP.
- Unit 17: deploy Kestra to cloud.

## Blocked by Gemini API access

These are documented and flow files are copied, but not executed:

- Unit 15: Kestra AI Copilot.
- Unit 16: RAG example flows.

## Next steps after GCP is available

1. Create a GCP project.
2. Enable required APIs.
3. Create a service account and key.
4. Store the key in Kestra as `GCP_CREDS`.
5. Set KV values:
   ```text
   GCP_PROJECT_ID
   GCP_LOCATION
   GCP_BUCKET_NAME
   GCP_DATASET
   ```
6. Run:
   ```text
   flows/gcp/07_gcp_setup.yaml
   flows/gcp/08_gcp_taxi.yaml
   flows/gcp/09_gcp_taxi_scheduled.yaml
   ```
