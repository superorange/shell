
echo $timeNowLocal
starttime=`date +'%Y-%m-%d %H:%M:%S'`
#执行程序
endtime=`date +'%Y-%m-%d %H:%M:%S'`
start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo "本次运行时间： "$((end_seconds-start_seconds))"s"
