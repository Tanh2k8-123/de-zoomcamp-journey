# Module 6 Unit 13 - Connecting to Google Cloud Storage

- Spark needs a compatible storage connector and credentials to read gs:// paths.
- Those credentials decide whether a storage request is authenticated at all.
- IAM permissions determine which buckets and objects a job may access.
- Files on object storage are a separate resource from the cluster compute.
- Replacing a local path with gs:// changes access, not the transformation logic.
- Credentials must stay out of version control repositories.
- Local Parquet files are enough to practice read, transform, and write flow.
