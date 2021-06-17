#!/usr/bin/env bash
# a=10
# b=11
# c=$[ $a * $b ]
# echo $c
# a=ababccc
# echo ${a#ab}
# if ((1&&1))
# then
#     echo "true"
# fi

# a="./test7.sh"
# -d dir
# -f file
# -r read
# -w write
# -x 执行
# -s 非空，不为空返回true
# -e 是否存在
# read name 
# if [  -e $a ]
# then
#     echo "执行文件"
#     `expr ./$a`
# fi
# echo "over"
# echo $name
# printf "nihaoma\n"

echo -e "hello \n"
echo "My love"
echo "over"
echo "重定向测试">a.txt
if [[ 2 > 1 ]]
then
    echo "重定向完成"
fi