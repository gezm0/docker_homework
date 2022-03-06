#!/bin/sh

docker run -d -p 3000:3000 --name frontend_app --net app_net --ip=10.0.3.100 frontend
docker run -d -p 8000:8000 --name backend_app --net app_net --ip=10.0.3.101 backend

# . docker_db_env.sh
# docker run -d -p 5432:5432 --name postgresql_app --net app_net --ip=10.0.3.102 postgres:alpine3.14

docker run -d -p 5432:5432 --name postgresql_app --net app_net --ip=10.0.3.102 -e POSTGRES_USER=django -e POSTGRES_PASSWORD=django -e POSTGRES_NAME=django postgres:alpine3.14