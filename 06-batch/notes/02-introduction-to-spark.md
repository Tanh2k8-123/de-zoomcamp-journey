# Module 6 Unit 2 - Introduction to Spark

- Spark is a distributed processing engine for large-scale data workloads.
- PySpark exposes Spark's processing APIs to Python programs.
- Spark runs locally in one process for learning and on clusters for larger workloads.
- A SparkSession is the entry point holding configuration and context for an application.
- DataFrames and Spark SQL describe transformations that Spark plans and executes itself.
- Expressing work as DataFrame transformations avoids pulling all rows into Python.
- Using collect() on a large DataFrame moves every row to the driver and can exhaust its memory.
