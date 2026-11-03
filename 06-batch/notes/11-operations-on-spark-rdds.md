# Module 6 Unit 11 - Operations on Spark RDDs

- RDDs expose lower-level distributed collections with map, filter, and reduceByKey.
- RDD work is optional because DataFrame APIs cover most analytical needs.
- DataFrame APIs carry schema information and enable more automatic optimization.
- The optimizer cannot rewrite arbitrary RDD functions the way it rewrites DataFrame plans.
- Associative aggregation combines partial results without gathering data on the driver.
- Driver-side processing of a full dataset does not scale past one machine.
- RDDs are the older Spark abstraction that DataFrames were built to improve on.
