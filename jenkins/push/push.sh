#!/bin/bash

echo "*****************************"
echo "**** Pushing Image **********"
echo "*****************************"

IMAGE="maven-project"

echo "******Logging In*************"
docker login -u gulabpatil -p $PASS
echo "****Tagging Image************"
docker tag $IMAGE:$BUILD_TAG gulabpatil/$IMAGE:$BUILD_TAG
echo "*****Pusshing Image**********"
docker push gulabpatil/$IMAGE:$BUILD_TAG
