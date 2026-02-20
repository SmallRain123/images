#!/bin/bash

# 目标图片链接
URL="https://t.alcy.cc/ycy"
# 初始化计数器
COUNT=1

echo "开始持续下载图片（按 Ctrl+C 停止）..."

# 无限循环
while true
do
    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    FILENAME="images-${TIMESTAMP}.jpg"
    
    echo "正在下载第 ${COUNT} 张图片，保存为：${FILENAME}"
    curl -L -s -o "${FILENAME}" "${URL}"
    
    # 延迟 1 秒
    sleep 1
    # 计数器自增
    COUNT=1
done
