@echo off

set str=%2
set str=%str:/=_%

DEL %1\*.jar /Q
RD %1\%str%
MD %1\%str%

COPY .\target\*.jar %1\%str%
