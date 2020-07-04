`expr clear`
if [ $(ps -ef | grep -c "ssh") -gt 1 ]; 
then 
    echo "true"
fi

if [ 1 -gt 2 ]; then
    echo "1>2"
elif [ 2 -lt 3 ]; then
    echo "2 < 3"
else
    echo "over"
fi
#for循环
# for item in 1 2 3 4; do
#     echo "$item"
# done
i=0
while (($i<1)); do
    echo "Hello World:------->$i"
    let i++
done
# echo "'按下 <CTRL-D> 退出'"
# echo -n "输入网站名"
# while read name;do
#     echo "${name}是一个好网站"
# done
i=5
until [ $i -eq 1 ]; do
    echo "Until测试---->$i"
    let i--
done
p1=9

case $p1 in
    1) echo 1
    ;;
    2|3) echo 2 or 3
    ;;
    *) echo default
    ;;
esac

case 1 in 
    1) echo 1;;
    2|3) echo 2 or 3;;
    *) echo default;;
esac
echo "数字猜猜猜游戏，看谁猜的快"
count=0
random_number=$RANDOM
echo "正确数字：${random_number}"
while true;do
    read   -p "请输入随机数字:(0~32767)" number
    let count++
    if ((${random_number}>$number));then
        echo "你的数字太小了"
    elif ((${random_number}<$number));then
        echo "你的数字太大了"
    else
        printf "正确数字：$number"
        echo "你猜对了,你花费了${count}次"
        break 
    fi
done






