# Module 7 Unit 13 - Cleanup

- Submitted Flink jobs and local Compose services should be stopped once the workshop is finished.
- The `docker compose down` command removes the containers and network created for this project.
- The `-v` flag additionally removes managed volumes and can destroy local data.
- The course Compose file defines no explicit durable volumes for broker or PostgreSQL data.
- Container recreation therefore does not preserve workshop state between runs.
- Broad Docker prune commands affect every local image, container, and volume, not only the lab.
