@echo off

DEL %1\*.jar /Q
COPY .\target\*.jar %1
