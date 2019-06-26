#!/bin/bash

IMAGE="maven-proj"

docker login -u chsunny548 -p $PASS

docker tag $IMAGE:$BUILD_TAG chsunny548/$IMAGE:$BUILD_TAG

docker push chsunny548/$IMAGE:$BUILD_TAG
