echo "Design by Tian"
echo "输入你的选择，1-增加端口 ，2-删除端口"
read number
if [ $number -eq 1 ]
 then
echo "输入你要添加的端口，多个端口用空格隔开"
read port
n=0
for p in $port
do
let "n = $n + 1"
if echo $p | grep -q '[^0-9]'
then
        echo "${n}---Sorry,端口${p} ：开启失败"
else
echo -n "${n}---开启tcp端口${p}：";firewall-cmd --zone=public --add-port=${p}/tcp --permanent
echo -n "${n}---开启udp端口${p}：";firewall-cmd --zone=public --add-port=${p}/udp --permanent
fi 
done
elif [ $number -eq 2 ]
then
echo "输入你要删除的端口，多个端口用空格隔开"
read port
n=0
for p in $port
do
let "n = $n + 1"
if echo $p | grep -q '[^0-9]'
then
        echo "${n}Sorry,端口${p} ：删除失败"
else
echo -n "${n}---删除tcp端口${p}：";firewall-cmd --zone=public --remove-port=${p}/tcp --permanent
echo -n "${n}---删除udp端口${p}：";firewall-cmd --zone=public --remove-port=${p}/udp --permanent
fi 
done
else
echo "Your options are error！Please check"
fi 2>/home/tian/a.log
systemctl restart firewalld.service
if [ $? -eq 0 ]
then
	echo "防火墙重启成功"
else
	echo "防火墙重启失败"
fi


