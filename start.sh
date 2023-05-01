#!/bin/bash

docker network create thingsboard
# run backend components
docker compose --file docker-compose.default.yaml up --detach
# install sql schemas
docker run --name tb-database --rm \
    --network thingsboard \
    -v ./tb-core/data/sql:/data/sql \
    -e install.data_dir=/data \
    -e INSTALL_TB=true \
    -e LOAD_DEMO=false \
    -e DATABASE_TS_TYPE=timescale \
    -e DATABASE_TS_LATEST_TYPE=timescale \
    -e SPRING_DRIVER_CLASS_NAME=org.postgresql.Driver \
    -e SPRING_DATASOURCE_URL=jdbc:postgresql://timescaledb:5432/thingsboard \
    -e SPRING_DATASOURCE_USERNAME=thingsboard \
    -e SPRING_DATASOURCE_PASSWORD=changeme \
    thingsboard/tb-node:3.4.4
# run thingsboard components
docker compose --file docker-compose.thingsboard.yaml up --detach
