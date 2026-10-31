# Module 2 Unit 11 — Load Taxi Data to BigQuery

This unit requires working GCP credentials. Reference flow:

```text
flows/gcp/08_gcp_taxi.yaml
```

## Pipeline pattern

```text
Extract CSV
  -> Upload CSV to GCS
  -> Create external BigQuery table pointing to GCS data
  -> Load/transform into a monthly BigQuery table
  -> MERGE monthly table into main yellow/green table
```

## Why external table?

BigQuery can query data stored in GCS without fully loading it into storage first. This is useful for inspecting raw data and separating raw landing from modeled tables.

## Why monthly table then merge?

The monthly table represents the current file partition. Merging into the main table lets the pipeline append new months incrementally without duplicating existing rows.
