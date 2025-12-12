#!/bin/bash
./scripts/cleanup.sh
./scripts/deploy.sh
docker stop $(docker ps -q) || true
docker rm $(docker ps -aq) || true
docker build -t nginx-app:$BUILD_NUMBER .
docker run -d -p 80:80 nginx-app:$BUILD_NUMBER
