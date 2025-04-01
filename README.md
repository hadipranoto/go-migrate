# github.com/golang-migrate/migrate docker image

Docker image for database migration tool github.com/golang-migrate/migrate built on Golang's official Alpine image.

## Migrate

https://github.com/golang-migrate/migrate

Fix Version: v4.18.2


## Building

```
$ docker build -t='hadipranoto/migrate' .
```


## Running

```
$ docker run --rm hadipranoto/migrate:latest -database postgres://localhost:5432/database up 2
```


## Go
```
$ go version 
go1.23.8
```