# Module 2 Unit 18 — Additional Resources and Troubleshooting

## Course pinning rules

For reproducibility, use:

```text
kestra/kestra:v1.1
postgres:18
```

Do not use `kestra/kestra:develop` unless you are intentionally testing an unstable build.

## Common local issues

### Kestra port 8080 already used

Check:

```bash
docker ps
```

If another app uses 8080, change the Kestra port mapping in `docker-compose.yml`, for example:

```yaml
ports:
  - "18080:8080"
```

Then open:

```text
http://localhost:18080
```

### Python Docker task fails

Docker task runner needs access to the Docker socket. Check:

```bash
ls -l /var/run/docker.sock
docker info
```

On WSL, enable Docker Desktop WSL integration if the socket is unavailable.

### Shell task `extract` fails with `wget: command not found`

The taxi flow uses `taskRunner: Process`, which runs inside the Kestra server container. If `wget` or `gunzip` is missing, inspect:

```bash
docker compose exec kestra bash
which wget
which gunzip
```

### Kestra cannot connect to Postgres service

Check that the Compose service name is correct:

```bash
docker compose ps
```

The local Postgres service should be reachable as:

```text
pgdatabase:5432
```

### Plugin class cannot be found

Copy the full error and verify:

- Kestra version,
- plugin version,
- whether the plugin is included in the image,
- whether the task type spelling is correct.
