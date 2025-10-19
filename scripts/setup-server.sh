#!/bin/bash

echo "🛠️  Setting up Meeting Bridge server..."

# 安装Docker
if ! command -v docker &> /dev/null; then
    echo "📦 Installing Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER
fi

# 安装Docker Compose
if ! command -v docker-compose &> /dev/null; then
    echo "📦 Installing Docker Compose..."
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

# 启用虚拟摄像头（如果需要）
sudo modprobe v4l2loopback devices=2 video_nr=10,11 card_label="VirtualCam1,VirtualCam2"

echo "✅ Server setup completed!"
