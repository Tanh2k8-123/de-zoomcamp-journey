# Module 6 Unit 15 - Setting up a Dataproc Cluster

- Dataproc provides managed Spark cluster infrastructure on Google Cloud.
- Cluster creation, job submission, storage, permissions, and cleanup are distinct concerns.
- A managed service absorbs node provisioning and ongoing cluster upkeep.
- Data grain, schema, and output correctness remain the pipeline owner's responsibility.
- Product limits and costs change, so they must be verified before deployment.
- Compute and storage lifetimes are independent, so outputs outlive the cluster.
- These notes treat Dataproc as reference-only, since no cloud resources are provisioned.
