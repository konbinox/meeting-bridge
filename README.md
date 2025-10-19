# Meeting Bridge

一个连接 Zoom 和 Jitsi 的智能会议桥接系统。

## 🚀 功能特点

- 🌍 跨平台会议桥接
- 🐳 Docker 容器化部署
- 🔄 GitHub Actions 自动部署
- 📊 健康状态监控

## 📋 前置要求

- Ubuntu 20.04+ 服务器
- Docker & Docker Compose
- 至少 2GB 内存
- 稳定的网络连接

## ⚙️ 配置步骤

1. **Fork 这个仓库**
2. **配置 GitHub Secrets**:
   - `SERVER_HOST`: 服务器IP地址
   - `SERVER_USER`: SSH用户名
   - `SERVER_SSH_KEY`: SSH私钥

3. **修改配置**:
   - 在 `Dockerfile.zoom` 中替换 `YOUR_ZOOM_MEETING_ID`
   - 在 `Dockerfile.jitsi` 中替换 `YOUR_JITSI_ROOM_NAME`

4. **推送代码到 main 分支自动部署**

## 🛠️ 手动部署

```bash
git clone https://github.com/konbinox/meeting-bridge.git
cd meeting-bridge
chmod +x scripts/*.sh
./scripts/setup-server.sh
docker-compose up -d
