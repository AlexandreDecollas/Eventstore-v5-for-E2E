#!/bin/sh -l

docker run --platform linux/amd64 -d --name eventbus-e2e-eventstore -it -p 2113:2113 -p 1113:1113 eventstore/eventstore:release-5.0.8
docker run --platform linux/amd64 -d --name eventbus-e2e-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
docker run --platform linux/amd64 -d --name eventbus-e2e-redis -d redis

