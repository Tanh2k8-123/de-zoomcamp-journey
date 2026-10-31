# Module 2 Unit 10 — Setup Google Cloud Platform

This unit requires an accessible GCP account and billing-enabled project. It was not executed in this learning repo because the Google Cloud $300 credit account was not available.

## Required resources

You need:

- A GCP project ID.
- A BigQuery dataset.
- A GCS bucket for the data lake.
- A service account with enough permissions.
- A service account JSON key, used as a Kestra secret.

## Required Kestra KV values

The setup flow expects these KV Store values:

```text
GCP_PROJECT_ID
GCP_LOCATION
GCP_BUCKET_NAME
GCP_DATASET
```

## Required Kestra secret

```text
GCP_CREDS
```

This secret contains the service account JSON key. Never commit this JSON file to Git.

## Setup flow

Reference flow:

```text
flows/gcp/07_gcp_setup.yaml
```

It creates:

- a GCS bucket,
- a BigQuery dataset,

using Kestra GCP plugins.
