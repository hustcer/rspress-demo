#!/bin/sh

# 方便查看当前部署文档的 Commit ID及部署时间

VER_PATH='docs/v__.md';
echo '### Current Version' > $VER_PATH;
echo `git rev-parse --short HEAD` >> $VER_PATH;
echo "@ `date '+%Y/%m/%d %H:%M:%S'`" >> $VER_PATH;
