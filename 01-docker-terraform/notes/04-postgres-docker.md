# Unit 4 - PostgreSQL with Docker

- 'docker run' creates and starts a container.
- Enviroment variables configure the PostgreSQL container: user, password, database.
- '-p host:container' exposes a container port to the host.
- A named volume keeps database file separate from the container lifecycle.
- 'pgcli' connects to the database through the mapped port '5432'