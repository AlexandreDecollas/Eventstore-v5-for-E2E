#!/bin/sh -l

docker run -d --name eventstore-eventbus-E2E -it -p 2113:2113 -p 1113:1113 eventstore/eventstore:release-5.0.8 --insecure --run-projections=All --enable-atom-pub-over-http

docker run --platform linux/amd64 -d --name eventbus-e2e-postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres

docker run --platform linux/amd64 -d --name eventbus-e2e-redis -p 2113:2113 -d redis
