#!/bin/bash
#获取传入的位置参数 $0 代表执行的脚本命令
clear
echo "获得传入的第一个参数：$0"
echo "获得传入的第二个参数：$1"
echo "获得传入的第三个参数：$2"
echo "获得传入的参数个数：$#"
echo "获得传入的所有参数：$*"
echo "获得当前pid：$$"
echo "获得后台最后一个pid：$!"
echo "显示shell使用的当前选项：$-"
readonly value
echo "当前程序是否运行正常：$?"
if [ -n "$value" ];then
    echo "then"
else
    echo "else"
fi