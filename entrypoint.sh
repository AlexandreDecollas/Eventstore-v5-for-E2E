#!/bin/sh -l

docker run -d --name eventstore-eventbus-E2E -it -p 2113:2113 -p 1113:1113 eventstore/eventstore:release-5.0.8
