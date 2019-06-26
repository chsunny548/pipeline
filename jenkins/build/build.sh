#!/bin/bash

cp -f java-app/target/*.jar jenkins/build/

cd jenkins/build/ && docker-compose build
