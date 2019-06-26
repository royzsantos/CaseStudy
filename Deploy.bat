@echo off

set str=%2
set str=%str:/=_%

echo Param1: %1
echo Param2: %2
echo %1\*.jar
echo %1\%str%
echo.

DEL %1\*.jar /Q
RD %1\%str%
MD %1\%str%

COPY .\target\*.jar %1\%str%
