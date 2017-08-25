clear

kill `ps -ef|grep -v grep|grep -i dbforbix-0.6 | awk '{ print $2 }'`

java -Duser.language=en -Duser.country=US -Dlog4j.configuration=./conf/log4j.properties -cp $(for i in lib/*.jar ; do echo -n $i: ; done).:./dbforbix-0.6.jar com.smartmarmot.dbforbix.bootstrap start ./conf/config.props & 

ps -ef|grep -v grep|grep -i dbforbix-0.6

echo ''
echo '有 dbforbix-0.6 显示，即为启动成功.'
