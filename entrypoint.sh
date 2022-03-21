#!/bin/sh -l

docker run -d --name eventstore-eventbus-E2E-main -it -p 2113:2113 -p 1113:1113 eventstore/eventstore:release-5.0.8 --insecure --run-projections=All --enable-atom-pub-over-http

docker run -d --name eventstore-eventbus-E2E-interco-helper -it -p 21131:21131 -p 11131:11131 eventstore/eventstore:release-5.0.8 --insecure --run-projections=All --enable-atom-pub-over-http

docker run --platform linux/amd64 -d --name eventbus-e2e-postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres

docker run --platform linux/amd64 -d --name eventbus-e2e-redis -p 6379:6379 -d redis
