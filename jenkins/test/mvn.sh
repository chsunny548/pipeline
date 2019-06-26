#!/bin/bash
WORKSPARCE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-maven-proj
docker container run --rm -v /root/.m2:/root/.m2 -v $WORKSPACE/java-app:/app -w /app maven:3-alpine "$@"
