# MySQL in Docker
A simple way of running specific versions of MySQL in a
docker container with data persisted to `/data`. By default
it creates a `docker` user with password `docker` (so only suitable
for local development).

## Running service
To start the service as detached
```
$ make start
```

## Stopping service
```
$ make stop
```

## Stopping service and removing data
```
$ make stop-data
```

## How to connect 

### When client app is not containerized
```
MYSQL_HOST='127.0.0.1'
```

### Mac OS X, if your client app is containerized
```
MYSQL_HOST=host.docker.internal
```
