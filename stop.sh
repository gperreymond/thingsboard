#!/bin/bash

docker compose --file docker-compose.thingsboard.yaml down
docker compose --file docker-compose.default.yaml down
docker network rm thingsboard
