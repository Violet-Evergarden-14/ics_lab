#!/bin/bash
# nuclear 运行助手
# 用法: ./run.sh 或 ./run.sh <student_id> <password>
#
# 解决的问题:
#   1. 缺 libcrypto.so.1.1 (OpenSSL 1.1) -> 用本地 libs/ 目录提供
#   2. 反调试:gdb 父进程名以 "db" 结尾会触发 SIGFPE -> 调试时用 gx(改名的 gdb)
set -e
cd "$(dirname "$0")"
export LD_LIBRARY_PATH="$(pwd)/libs${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

if [ $# -ge 2 ]; then
    exec ./nuclear "$1" "$2"
else
    exec ./nuclear 2025201915 191b1dae
fi
