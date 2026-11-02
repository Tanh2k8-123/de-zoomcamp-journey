# Module 6 Unit 3 — Installing Spark

## Core ideas

- Java, Python, Spark, and connectors must be compatible; old course commands are not a version guarantee.
- Use WSL consistently for environment paths and execution. Inspect java -version and the actual PySpark version.
- The learning starter declares PySpark 3.5.3 with Python >=3.10,<3.13; its upstream reference files may use older APIs.

## Practice plan

1. Follow ../setup/README.md, then run the small demo.
2. Open the Spark UI while a job is running if needed; do not assume the UI remains available after spark.stop().

## Understanding check

Why can having Python installed still leave Spark unable to start?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/03-installing-spark.md)
- [Lesson video](https://www.youtube.com/watch?v=hqUbB9c8sKg)
