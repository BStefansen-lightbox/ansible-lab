#!/bin/sh
docker build -t ansible-host host/.
docker build -t ansible-worker worker/.

docker run --name ansible-worker -d -it -p 22:22 ansible-worker:latest
docker run --name ansible-host -d -it ansible-host:latest

docker network create ansible-network
docker network connect ansible-network ansible-host 
docker network connect ansible-network ansible-worker

docker exec -it ansible-host sh
