@echo off
 setLocal EnableDelayedExpansion
 set CLASSPATH="
 for /R ./lib %%a in (*.jar) do (
   set CLASSPATH=!CLASSPATH!;%%a
 )
set CLASSPATH=!CLASSPATH!"

java -Duser.language=en -Duser.country=US -Dlog4j.configuration=./conf/log4j.properties -cp  %CLASSPATH%;dbforbix-0.6.jar com.smartmarmot.dbforbix.bootstrap start ./conf/config.props &