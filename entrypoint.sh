#!/bin/bash

# 打印启动信息
echo "============================================================================================"
echo "Container is starting..."
echo "Monitoring the container's status..."
echo "============================================================================================"

# 定义一个函数来模拟监控逻辑
monitor_status() {
    while true; do
        echo "[INFO] $(date): Container is running and healthy."
        sleep 10 # 每隔 10 秒打印一次状态
    done
}

# 启动后台服务（如果有）
# 示例：启动一个简单的 HTTP 服务器（可选）
# python3 -m http.server 8080 &

# 启动监控函数
monitor_status &

# 保持容器运行
tail -f /dev/null