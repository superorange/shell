#!/bin/bash
#直接使用命令，不用加``
clear
echo "hello world"
# 申明变量之间没有空格，应用变量双引号加$,如果已知为string，可以不同双引号，
# 变量名为多个单词时候应该加{}来区别变量
auther="Tian"
ni_hao="nihao"
echo $auther
echo "ni_hao:${ni_hao}"
# ``等价于$() `ls -l` == $(ls -l) 优先使用后者
# for语句 for--do--done，若换行，do的位置和done没有定义
for file in $(ls); do
    echo "$file"
done
#只读变量  readonly,申明并且赋值后的变量不可以再次赋值
myValue="po"
readonly myValue
echo $myValue
# myValue="op"  报错
#删除变量 unset 删除其引用地址
# unset myValue

#shell 字符串
#计算字符串长度 ${#xxx}
#截取字符串长度 ${xxx:start:end} 前闭后闭
length=${#auther}
substring=${auther:1:2}
echo $length
echo $substring


#shell数组
#shell 数组没有溢出的说法，可以随意使用
#数组之间使用空格代替逗号
#取用全部数组用*  array[*] 可以循环拿到结果
array[9]="你好"
myArray=(1 2 3 "op")
# array[6]="错过了"
echo ${array[9]}
echo "${myArray[*]}"
#获取数组长度
echo ${#myArray[*]}
for i in ${myArray[*]};do
    echo "$i"
done
#for循环获取长度   条件表达式用两个花括号 (())
for((i=0;i<${#myArray[*]};i++)); do
    echo "${myArray[i]}"
done





