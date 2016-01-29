#!/bin/bash

DATE=$(date '+%Y-%m-%d')

docker build -t hub.bccvl.org.au/centos/centos7:$DATE

docker push hub.bccvl.org.au/centos/centos7:$DATE
