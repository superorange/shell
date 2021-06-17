#!/bin/bash
echo '重启服务操作'
echo "###############输入你的选择##############"
echo "##            1-重启防火墙              ##"
echo "##            2-重启ssh服务             ##"
echo "##            3-重启shadowsocks         ##"
echo "##            4-还没有                  ##"
read choose
if [ "$choose" = "1" ]
then
echo "你选的是重启防火墙服务,重启开始>>>"
	systemctl restart firewalld.service 2>/dev/null
	if [ $? -eq 0 ];then
		echo -e "\033[32m 防火墙重启成功 \033[0m" 
	else
		echo -e "\033[31m 防火墙重启失败 \033[0m" 
	fi
	
elif [ "$choose" = "2" ]
then
	echo "你选的是重启ssh服务,重启开始>>>"
	service sshd restart 2>/dev/null
	if [ $? -eq 0 ];then
		echo -e "\033[32m sshd重启成功 \033[0m" 
	else
		echo -e "\033[31m sshd重启失败 \033[0m" 

	fi
elif [ "$choose" = "3" ]
then
	echo "你选择的是重启shadowsocks,重启开始"
	/etc/init.d/shadowsocks-r restart 2>/dev/null
	if [ $? -eq 0 ];then
		echo -e "\033[32m shadowsocks重启成功 \033[0m" 
	else
		echo -e "\033[31m shadowsocks重启失败 \033[0m" 
	fi
else 
	echo -e "\033[31m 输入有误 \033[0m" 
fi 