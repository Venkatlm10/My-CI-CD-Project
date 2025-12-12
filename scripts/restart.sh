#!/bin/bash
HOST=$1
ENV=$2
TAG=$3

echo "🧹 Cleaning up old containers..."
docker stop $(docker ps -q) || true
docker rm $(docker ps -aq) || true

echo "🚀 Building Docker image..."
docker build -t nginx-app:$TAG .

echo "▶️ Running container..."
docker run -d -p 80:80 nginx-app:$TAG
