# Module 7 Unit 7 - The Flink Image and Services

- The JobManager coordinates job execution while TaskManagers run the actual work.
- The Flink image bundles Python together with the connector and runtime libraries the jobs need.
- Compose defines local networking and mounts src into containers, which does not create a production cluster.
- Python code can parse successfully while a Flink job fails, because connector loading happens at runtime.
- A missing or incompatible connector JAR surfaces when the job graph is submitted and classloading runs.
- The Dockerfile comes from the course snapshot, so connector and runtime compatibility still needs validation.
- The Flink web UI listens on port 8081 in this local Compose setup.
