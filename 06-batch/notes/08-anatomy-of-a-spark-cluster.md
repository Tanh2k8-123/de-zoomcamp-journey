# Module 6 Unit 8 — Anatomy of a Spark Cluster

## Core ideas

- The driver plans work and coordinates execution; executors run tasks and store partition data.
- A cluster manager allocates resources. Local mode simulates execution within one machine rather than provisioning a distributed cluster.
- Executors must access input paths; a driver-local file is not automatically available on remote workers.

## Practice plan

1. Draw driver -> executors -> shared storage.
2. Compare local[2] in the demo with a standalone master URL before configuring a cluster.

## Understanding check

Why can a path valid on the driver still fail on an executor?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/08-anatomy-of-a-spark-cluster.md)
- [Lesson video](https://www.youtube.com/watch?v=68CipcZt7ZA)
