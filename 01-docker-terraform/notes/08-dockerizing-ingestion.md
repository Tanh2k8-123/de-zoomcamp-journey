# Unit 8 - Dockerizing the Ingestion Script
- The ingestion script becomes a Docker image.
- The image contains Python, uv, project dependencies, and 'ingest_data.py'.
- Running the image with '--network=pg-network' lets it reach the PostgreSQL container.
- Inside Docker, the database host is the container name, for example 'pgdatabase'.
-'localhost:5432' is useful from the host, but 'pgdatabase:5432' is correct between containers on the same network.
- '--rm' deletes the ingestion container after it finishes.
