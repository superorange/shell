#!/bin/bash
clear
#a=$?
#if ${a};then
#    echo "是数字"
#else
#    echo "不是数字"
#fi
flag=1
while (($flag == 1)); do
    read -p "请输入数字" name
    echo ${name} | grep "^[0-9]*[0-9]$" >>/dev/null
    if (($? == 0)); then
        echo "是数字"
        break

    else
        echo "不是数字"
        continue
    fi
    echo "继续输出"
done
echo "over?"

