#!/bin/bash
echo "🧹 Cleaning up Docker containers..."
docker stop $(docker ps -q) || true
docker rm $(docker ps -aq) || true
echo "✅ Cleanup done."
