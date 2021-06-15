#!/bin/bash
#shell运算符
# `` 等价于 $()  
#所以 `expr 1 + 2` 等价于 $((1+2))
#双括号等价于计算表达式
#使用expr时候，运算符之间必须有空格，但是使用()可以不用空格
#shell里面0为假，其它为真
#shell里面(())双括号不支持精度
clear
value=$((1+3))
echo "${value}"
a1="hello"
a2="hello1"
if [ $a1 ];then
    echo "ok"
else
    echo $((10/3))
fi


