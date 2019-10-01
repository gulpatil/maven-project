#!/bin/bash

# copy the new jar into build location

cp -f java-app/target/*.jar jenkins/build/

echo "***********************************"
echo "******Building Docker Images*******"
echo "***********************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
