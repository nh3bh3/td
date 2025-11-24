@echo off
cd /d %~dp0
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit
:begin
tiandui119_Update 2.3.1182
