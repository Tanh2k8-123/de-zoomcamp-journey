# Local Bruin working project

Status: synthetic starter prepared for Module 5. This is not the complete course taxi downloader. Bruin CLI validation/execution has not yet been performed.

Preparation check: the CSV and both SQL transformations were executed independently in an in-memory DuckDB database and produced the expected report below. This does not replace Bruin CLI validation.

## Architecture

```text
sample_trips.csv -> ingestion.trips -> staging.trips -> reports.trips_report
```

Three synthetic rows demonstrate dependencies without a large download. The expected report has two rows: location 79 has 2 trips / 30.75 revenue; location 132 has 1 trip / 30.00 revenue.

## WSL workflow

Install Bruin using the official installation guide linked in the course, then:

```bash
cd /mnt/e/TuanAnh/Project/de-zoomcamp-2027/05-data-platforms/bruin_taxi
cp .bruin.yml.example .bruin.yml
bruin version
bruin validate ./pipeline/pipeline.yml
bruin lineage ./pipeline/pipeline.yml
bruin run ./pipeline/pipeline.yml
bruin query --connection duckdb-default --query "select * from reports.trips_report order by pickup_location_id"
```

Run from this directory to keep the relative DuckDB path consistent. The parent learning repository supplies Git context; do not create a nested Git repository here. Keep .bruin.yml local; the example contains no secrets.

The starter rebuilds small tables rather than applying date windows. When extending to real NYC taxi ingestion, define interval boundaries and idempotent reruns first. It is independent of the Module 4 database.

References: [course](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/05-data-platforms), [DuckDB assets](https://getbruin.com/docs/bruin/platforms/duckdb.html).
