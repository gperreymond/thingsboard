# THINGSBOARD

## Usages
```sh
# start the stack
$ ./start.sh
# stop the stack
$ ./stop.sh
```

## Links

* traefik = http://localhost:8080
* zookerper admin = http://zookeeper-admin.docker.localhost/commands
* kafka webui = http://kafka-admin.docker.localhost
* pgadmin = http://pgadmin.docker.localhost

> thingsboard admin
* http://thingsboard-admin.docker.localhost
* username: sysadmin@thingsboard.org
* password: sysadmin

> thingsboard
* http://thingsboard.docker.localhost
* username: __the one you created in the admin__
* password: __the one you created in the admin__

## Documentations

* https://github.com/thingsboard/thingsboard/blob/master/transport/mqtt/src/main/resources/tb-mqtt-transport.yml
* https://github.com/thingsboard/thingsboard/blob/master/application/src/main/resources/thingsboard.yml
* https://thingsboard.io/docs/user-guide/install/config/
* https://github.com/thingsboard/thingsboard/blob/master/dao/src/main/resources/sql/schema-timescale.sql