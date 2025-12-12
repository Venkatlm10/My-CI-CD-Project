#!/bin/bash
set -e

IMAGE="my-ci-cd-project:nginx"
CONTAINER="nginx-ui"

echo "🚀 Building Docker image..."
docker build -t $IMAGE .

echo "🛠 Deploying container..."
docker stop $CONTAINER || true
docker rm $CONTAINER || true
docker run -d --name $CONTAINER -p 9090:80 $IMAGE

echo "✅ Deployment complete! Access at http://localhost:9090"
