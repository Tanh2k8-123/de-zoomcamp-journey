# Module 2 Unit 3 — Installing Kestra

- Kestra is installed locally using Docker Compose.
- The local stack includes:
  - `kestra`: the Kestra server/UI.
  - `kestra_postgres`: internal PostgreSQL used by Kestra for state and queues.
  - `pgdatabase`: PostgreSQL for the `ny_taxi` learning database.
  - `pgadmin`: optional database UI.
- The Kestra UI is available at `http://localhost:8080`.
- Kestra can access the Docker socket so it can run tasks inside Docker containers.
- Useful commands:
  - `docker compose up -d`
  - `docker compose ps`
  - `docker compose logs kestra`
  - `docker compose down`
