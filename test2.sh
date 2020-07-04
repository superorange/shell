#!/usr/bin/env bash

# #!/usr/bin bas
# echo "Hrllo World"
# # printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
# # printf "%-10s %-8s %-4.2f\n" 郭靖 �? 66.1234 
# # printf "%-10s %-8s %-4.2f\n" 杨过 �? 48.6543 
# # printf "%-10s %-8s %-4.2f\n" 郭芙 �? 47.9876 
# name() {
#     echo "function start"
#     return `expr 1 + 2`
# }

# name 5 
# echo "函数执行结果 $?"

echo "hello world"
function name(){
        return 45
}
name
echo $?
echo "over" 
echo $?            