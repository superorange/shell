#!/bin/bash
# 变量名与等号之间没有空格
# 引用变量 ${}花括号区别边界
# readonly只读变量
# 使用 unset 命令可以删除变量。语法：
# unset variable_name
# 变量被删除后不能再次使用。unset 命令不能删除只读变量。
# 变量类型
# 运行shell时，会同时存在三种变量：
# 1) 局部变量 局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
# 2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
# 3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行
# Shell 字符串
# 字符串是shell编程中最常用最有用的数据类型（除了数字和字符串，也没啥其它类型好用了），
# 字符串可以用单引号，也可以用双引号，也可以不用引号。单双引号的区别跟PHP类似。
# 单引号字符串的限制：
# 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
# 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。
# 双引号的优点：
# 双引号里可以有变量
# 双引号里可以出现转义字符
# 获取字符串长度
# string="abcd"
# echo ${#string} #输出 4
# 提取子字符串
# 以下实例从字符串第 2 个字符开始截取 4 个字符：
# string="runoob is a great site"
# echo ${string:1:4} # 输出 unoo
# echo "massage"
# name="Tian Jin Gang"
# age="我爱你"
# con=$age$name
# w="${age}${name}"
# echo $con
# echo ${#w}
# echo ${w:0:6}
# echo `expr  "$w" 你`
# shuzu=(1 w d 2 d y)
# for item in ${shuzu[*]}; do
#     echo "$item"
# done
# echo ${#shuzu[*]}
# echo $0


# echo $#
# p=$*
# for item in ${p[*]}; do
#     echo "$item"
# done

# for VAR in $(ls /etc)
# do
#     echo $VAR
# done
# echo "My name is ${name}"
# for item in A B C; do
#     echo "$itemc"
# done
# readonly readP="Http"
# echo $readP
# unset name
# echo $name
# echo $$
# echo $!
# echo $*
# echo $a
# echo $-


# for item in "$@"; do
#     echo "$item"
# done
# for item in "$*"; do
#     echo "$item"
# done
# a="da"
# unset a
# echo $a
# echo $?
# c=`expr $a + $b`
# d=`expr $a - $b `
# e=`expr $a \* $b`
# f=`expr $a / $b `
# g=`expr $a % $b`

# if (( $a == $b )); then
#     echo "true"
# fi
# if ([ $a != $b ]); then
#     echo "false"
# fi

# echo $c
# echo $d
# echo $e
# echo $f
# echo $g
# echo $h
# echo $i
# echo $?
# if ([ $a -ne $b ]); then
#     echo "equal"
# fi

# echo "kill Ok"
# if (( 1 > 2 )); then
#     echo greater
# else
#     echo nice
# fi
# if [ `command -v ws` ]; then
#     # body
#     echo 命令存在
# else
#     echo 命令不存在
# fi

# if ( false ); then
#     echo wiop
# else 
#     echo opp
# fi

# a=true
# b=false
a=10 b=20
if ([ 2 -lt 3 ]); then
     echo "true"
else
     echo "false"
fi
echo $a
echo $b





