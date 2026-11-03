# Module 6 Unit 10 - Joins in Spark

- Large joins often shuffle both sides of the join by the join key.
- A broadcast join distributes a sufficiently small lookup table to every executor.
- Broadcasting avoids that key-based shuffle because neither side is redistributed.
- A broadcast hint changes the physical plan while leaving the result unchanged.
- Duplicate keys on the lookup side can multiply fact rows after the join.
- Comparing row counts before and after a join exposes that row multiplication.
- Broadcasting a large table risks memory failure on the driver and on executors.
- Spark picks the physical join strategy from sizes, statistics, and configuration.
