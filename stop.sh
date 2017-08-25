clear

kill `ps -ef|grep -v grep|grep -i dbforbix-0.6 | awk '{ print $2 }'`

ps -ef|grep -v grep|grep -i dbforbix-0.6

echo ''
echo '没有 dbforbix-0.6 显示，即为停止成功.'
