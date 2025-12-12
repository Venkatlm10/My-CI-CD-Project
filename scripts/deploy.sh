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
docker login -u "$3" -p "$4"
docker build -t "$1:$2" .
docker push "$1:$2"

echo "✅ Deployment complete! Access at http://localhost:9090"
