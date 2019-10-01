#!/bin/bash

export PASS=$(sed -n '3p' /tmp/.auth)
export IMAGE=$(sed -n '1p' /tmp/.auth)
export BUILD_TAG=$(sed -n '2p' /tmp/.auth)

docker login -u gulabpatil -p "$PASS"
cd ~/maven && docker-compose up -d

