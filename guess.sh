`expr clear`
RED_COLOR='\E[1;31m'   #红
GREEN_COLOR='\E[1;32m' #绿
YELOW_COLOR='\E[1;33m' #黄
BLUE_COLOR='\E[1;34m'  #蓝
PINK='\E[1;35m'        #粉红
RES='\E[0m'
timeNowLocal=`date "+%Y-%m-%d %H:%M:%S"`
count=0
random_number=$RANDOM
echo -e "${RED_COLOR}---Auther: Tian @https://github.com/superorange \n---现在是 ${timeNowLocal}${RES}"
echo -e "${GREEN_COLOR}---shell猜数字游戏---${RES}"
while true;do
    echo -ne "${PINK}>>>请输入随机整数(0~32767):${RES}"
    read number
    echo $number | grep "^[0-9]*[0-9]$" >> /dev/null
    if (($?!=0));then
        echo "---你输入的内容非整数，请重新输入---"
        continue
    fi
    let count++
    if ((${random_number}>$number));then
        echo -e "+++${number}: ${YELOW_COLOR}太小了${RES}+++"
    elif ((${random_number}<$number));then
        echo -e "---${number}: ${BLUE_COLOR}太大了${RES}---"
    else
        echo "---正确数字：$number"
        echo "---你猜对了,你花费了${count}次"
        break 
    fi
done