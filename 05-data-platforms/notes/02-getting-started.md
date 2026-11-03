# Module 5 Unit 2 - Getting Started with Bruin

- Development happens in WSL against the Bruin CLI installed in that environment.
- Check the installed version and CLI help before trusting flags copied from a course snapshot.
- `.bruin.yml` stores the local environments and connections for the project.
- `pipeline.yml` stores the schedule and defaults, while each asset stores its executable definition.
- Local connection settings live in an ignored file so credentials stay out of committed code.
- The supplied starter uses only synthetic CSV data and DuckDB, so it needs neither the taxi download nor GCP.
