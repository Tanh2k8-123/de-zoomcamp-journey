# Module 6 Unit 13 — Connecting to Google Cloud Storage

## Core ideas

- Reference-only without GCP access: Spark needs a compatible storage connector and credentials for gs:// paths.
- IAM permissions determine access; files on object storage are separate from cluster compute.
- Keep credentials out of Git. Local Parquet files are enough to learn read, transform, and write concepts.

## Practice plan

1. Read the pinned course unit for connector configuration; do not provision resources now.
2. Run the same transformation with a local input/output path.

## Understanding check

What changes when replacing a local path with gs://?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/13-connecting-to-google-cloud-storage.md)
- [Lesson video](https://www.youtube.com/watch?v=Yyz293hBVcQ)
