# Unit 9 - Docker Compose
- Docker Compose describes multiple containers as services in one YAML file.
- Compose creates a default network automatically; services on it can reach each other by service name.
- The Postgres service name is 'pgdatabase', so pgAdmin and ingestion containers use host 'pgdatabase'.
- 'ports' exposes services to the host, eg: 'localhost:8085'.
- Compose doesn't need explicit 'pg-network'; it handles the network for us.
- 'docker compose down' removes containers, but keeps named volumes.
- 'docker compose down -v' removes volumes too, which deletes database data.