@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
TITLE Messages

:READ

for /f "delims=" %%x in (chat.log) do set CHAT=%%x

TYPE chat.log
TIMEOUT /T 1 >NUL
CLS

for /f "delims=" %%x in (chat.log) do set CHAT_NEW=%%x
IF "%CHAT%" NEQ "%CHAT_NEW%" CALL :NOTIFY
GOTO READ

:NOTIFY
powershell -c (New-Object Media.SoundPlayer "C:\Windows\Media\notify.wav").PlaySync();
SET CHAT=%CHAT_NEW%
GOTO :EOF

TODO LIST
Refresh display only when there is a new message