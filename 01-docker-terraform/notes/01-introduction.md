# 01-introduction

1. A Docker image is a snapshot/template; a container is a running instance of that image
2. 'docker run' pulls the image if needed, creates a container, and runs the specified command.
3. Containers are stateless by default: changes inside a container are lost when the container is removed.
4. '--rm' automatically removes a containers when it exits.
5. 'docker ps - a' lists both running and stopped containers.
6. A volume (-v host:container) shares files from the host machine with the container, so the files remain on the host after the container is delete.