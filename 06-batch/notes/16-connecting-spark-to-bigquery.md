# Module 6 Unit 16 - Connecting Spark to BigQuery

- A compatible Spark BigQuery connector handles warehouse reads and writes.
- The connector version has to match the Spark runtime executing the job.
- Authentication and project or dataset permissions decide whether a job runs.
- Connector write mode decides whether a BigQuery table is appended or overwritten.
- Sandbox access to public queries does not grant permission to write pipeline outputs.
- Reads and writes are authorized separately, so public reads can succeed while writes fail.
- Billing state and project quotas can block writes even when reads work.
