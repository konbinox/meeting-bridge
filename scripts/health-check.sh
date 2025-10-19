#!/bin/bash

echo "🔍 Checking Meeting Bridge health..."

# 检查Docker服务
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running"
    exit 1
fi

# 检查容器状态
if docker-compose ps | grep -q "Up"; then
    echo "✅ All services are running"
else
    echo "❌ Some services are down, restarting..."
    docker-compose restart
fi
