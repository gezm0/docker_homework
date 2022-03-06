#!/bin/bash

docker network create --subnet 10.0.3.0/24 --gateway=10.0.3.1 --ip-range 10.0.3.0/24 --label=app_net app_net