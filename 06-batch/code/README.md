# Batch working files

- local_spark_demo.py: synthetic three-row example of transformations, aggregation, and Parquet output.
- taxi_monthly_revenue.py: configurable local/cluster job for prepared green/yellow Parquet files with raw NYC TLC column names.
- course_reference/: original course scripts; inspect paths, API versions, and overwrite modes before using.
- ../notebooks/: course notebooks with outputs and execution counts cleared; homework excluded.

Read ../setup/README.md first. Runtime Spark jobs have not been executed as part of preparation.

From the module root in WSL:

```bash
uv sync
uv run python code/local_spark_demo.py
uv run python code/taxi_monthly_revenue.py --input-green data/green --input-yellow data/yellow --output data/monthly_revenue
```

The second command requires existing Parquet inputs. Both new scripts reject an existing output path; choose a fresh path for a rerun. Expected synthetic result: Green/79 = 2 trips, 30.75 revenue; Yellow/132 = 1 trip, 30.00 revenue.

Course references are copied from [DataTalksClub](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/06-batch/code), revision 8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e. Historical examples may require API changes for the selected runtime; they are preserved for study, not claimed as tested solutions.
