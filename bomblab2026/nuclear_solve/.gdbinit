# nuclear 调试配置(用 ./gx 启动,不要用系统 gdb!)
# 系统 gdb 父进程名以 "db" 结尾,会触发反调试 SIGFPE(除以 0)
# 本目录下的 gx 是改名的 gdb 副本,可正常调试
set args 2025201915 191b1dae
set env LD_LIBRARY_PATH=./libs

# 注意:gdb 命令里不能有行内 # 注释,注释必须独占一行!
# 不要设 b bomb_explode:它在 .data.driver 段,程序有完整性校验,
# gdb 软断点(0xcc)写进去会触发反调试直接爆炸。
# b main 也无效:restore_main_int3 会把它覆盖回 0xf3,断点被抹掉。

# 安全替代:在 .text 段各 phase 的 "call bomb_explode" 调用点打断点,
# 答案错误即将爆炸时会停在这里(还没执行爆炸),既安全又能看现场。
b *0x401867
b *0x401881
b *0x401955
b *0x401a07
b *0x401b1a
b *0x401b42
b *0x401b52
b *0x401d83
b *0x401da2

# 各 phase 入口(想停在答案处理前就启用):
# b pupil
# b tr1vial
# b rainb0w
# b q_math
# b hothothot
# b tran$f0rm
