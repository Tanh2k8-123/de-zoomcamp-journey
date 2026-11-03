# Module 6 Unit 14 - Creating a Local Spark Cluster

- A standalone master coordinates workers and allocates cluster resources.
- Workers host the executors that run tasks for submitted applications.
- The master owns cluster capacity, while the driver owns one application's plan.
- spark-submit packages runtime configuration outside interactive notebook state.
- Cluster runs need input paths that every worker process can read.
- Spark, Python, and connector versions must match across the cluster nodes.
- Local mode skips the master because driver and executors share one JVM.
