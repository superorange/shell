count=0
random_number=$RANDOM
echo "累了，困了，猜数字"
while true;do
    read   -p "请输入随机数字(0~32767)--->:" number
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