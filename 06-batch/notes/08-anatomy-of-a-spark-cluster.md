# Module 6 Unit 8 - Anatomy of a Spark Cluster

- The driver plans the work and coordinates execution of the application.
- Executors run the tasks and store the partition data they handle.
- A task is the smallest unit of work and processes one partition.
- A cluster manager allocates resources to executors across the nodes.
- Local mode simulates parallel execution within one machine instead of provisioning a cluster.
- Executors must be able to reach any input path the job reads.
- A file path valid only on the driver is not automatically available on remote workers.
