# Local setup plan (WSL)

Status: prepared, not installed or executed during scaffolding.

Use Python 3.12 and Java 17 with the pinned PySpark 3.5.3 learning environment. Ensure JAVA_HOME points to that JDK in WSL; Windows Java settings do not automatically configure WSL.

```bash
java -version
uv --version
cd /mnt/e/TuanAnh/Project/de-zoomcamp-2027/06-batch
uv sync --python 3.12
uv run python -c "import pyspark; print(pyspark.__version__)"
uv run python code/local_spark_demo.py
```

If Java is missing, install an appropriate JDK in WSL before running Spark. Keep this environment separate from Module 4. Do not install dependencies into the course-reference checkout.

Start in local[2] mode. A standalone cluster, GCS, Dataproc, and BigQuery are later exercises; no cloud account is needed for the local demo. Spark's local UI normally uses port 4040 while the application is alive.

Reference: [Spark 3.5.3](https://spark.apache.org/docs/3.5.3/), [course installation](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/06-batch/03-installing-spark.md).
