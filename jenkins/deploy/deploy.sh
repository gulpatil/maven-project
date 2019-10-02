#!/bin/bash

echo maven-project > /tmp/.auth
echo $1 >> /tmp/.auth
echo $2 >> /tmp/.auth


scp -i /opt/prod /tmp/.auth prod-user@13.127.127.254:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh prod-user@113.127.127.254:/tmp/publishfile.sh
ssh -i /opt/prod prod-user@13.127.127.254 "/tmp/publishfile.sh"
