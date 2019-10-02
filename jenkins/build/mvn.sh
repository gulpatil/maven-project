#!/bin/bash

echo "*****************************************"
echo "*******Building Jar files ***************"
echo "*****************************************"

WORKSPACE=/home/ec2-user/jenkins/jenkins_home/workspace/Pipeline-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

