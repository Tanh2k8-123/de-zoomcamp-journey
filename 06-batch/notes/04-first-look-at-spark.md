# Module 6 Unit 4 - First Look at Spark/PySpark

- A first Spark program creates a SparkSession, reads data, inspects schema, and writes a result.
- Reading CSV with schema inference adds work and can guess inappropriate column types.
- Declaring an explicit schema states the intended representation before parsing starts.
- A partition is the basic unit of distributed data processing in Spark.
- Writing a DataFrame commonly produces a directory of part files rather than one file.
- Each task writes its own file, so a Parquet output path usually holds several files.
- Spark fails a write to an existing path unless an output mode is set explicitly.
