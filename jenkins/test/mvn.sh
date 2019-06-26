#!/bin/bash

docker container run --rm -v /root/.m2:/root/.m2 -v $PWD/java-app:/app -w /app maven:3-alpine "$@"
