# Module 4 Unit 10 — dbt Packages

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- A package distributes reusable dbt macros, tests, or models. This project declares dbt_utils and codegen in packages.yml.
- dbt deps installs dependencies. Commit packages.yml and package-lock.yml; ignore the downloaded dbt_packages directory.
- int_trips uses dbt_utils.generate_surrogate_key. A hash does not guarantee that the selected business fields identify distinct real-world trips.
- Review adapter and dbt version compatibility before changing package constraints; hub listing alone is not a security guarantee.

## Practice plan

1. Inspect packages.yml, package-lock.yml, and the package macro call in int_trips.sql.
2. Run dbt deps when needed and compile int_trips to inspect the expanded expression. No package upgrade is required for this lesson.

## Understanding check

Why commit a lockfile but not the downloaded package directory?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/04-analytics-engineering/10-dbt-packages.md)
- [Lesson video](https://www.youtube.com/watch?v=KfhUA9Kfp8Y)
