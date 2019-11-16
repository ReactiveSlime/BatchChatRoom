@ECHO OFF
TITLE Text Input
CLS
SET /p USERNAME=Username: 
ECHO %USERNAME% Has Joined The Chat (%time%::%date%) >> chat.log

START read.bat
:MESSAGE
CLS
ECHO Todays Date Is %date%
ECHO Type "QUIT" To Exit Chat
SET MESSAGE=" "
SET /p MESSAGE=Type Your Message %USERNAME%: 
IF "%MESSAGE%" EQU " " ECHO Please Enter Text To Send && PAUSE >NUL && GOTO MESSAGE
IF "%MESSAGE%" EQU QUIT ECHO %USERNAME% Left The Chat (%time%::%date%)>> chat.log && EXIT
ECHO %USERNAME% - %MESSAGE% >> chat.log
IF "%MESSAGE%" EQU CLEAR DEL chat.log && ECHO CHAT HAS BEEN CLEARD >> chat.log
GOTO MESSAGE