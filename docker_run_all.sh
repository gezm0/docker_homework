#!/bin/sh

docker run -d -p 3000:3000 --name frontend_app --net app_net --ip=10.0.3.100 frontend
docker run -i --name lib_catalog --net app_net --ip=10.0.3.101 lib_catalog

# db with env variables usage
#docker run -d -p 5432:5432 --name postgresql_app --net app_net --ip=10.0.3.102 postgres:alpine3.14

docker run -d -p 5432:5432 --name postgresql_app --net app_net --ip=10.0.3.102 -e POSTGRES_USER=test -e POSTGRES_PASSWORD=test -e POSTGRES_DB=test postgres:alpine3.14