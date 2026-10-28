# Unit 7 — pgAdmin and Docker Network

- pgAdmin is a web-based database management tool.
- Containers need a shared Docker network to talk to each other 
by container name.
- Inside `pg-network`, pgAdmin connects to host `pgdatabase`, 
port `5432`.                                                          - `localhost` inside a container means that container itself, not 
the host machine.                                                     - `-p 8085:80` exposes pgAdmin to the browser at `localhost:8085`.
- `-v pgadmin_data:/var/lib/pgadmin` keeps pgAdmin settings           across container restarts.