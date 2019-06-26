#!/bin/bash

echo maven-proj > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i $HOME/prod /tmp/.auth jenkins@192.168.0.57:/tmp/.auth
scp -i $HOME/prod ./jenkins/deploy/publish.sh jenkins@192.168.0.57:/tmp/publish.sh
ssh -i $HOME/prod jenkins@192.168.0.57 "/tmp/publish.sh"