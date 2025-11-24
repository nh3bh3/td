@echo off
:: 网络环境下的自更新程序会在启动时尝试联网检查并拉取补丁，
:: 在未联网或隔离环境下会导致反复提示“设备未联网”。
::
:: 为避免登录前的联网检测，这里直接跳过更新程序并启动客户端，
:: 让软件在离线环境下也能正常进入。
:: 如需恢复自动更新，只需重新调用下方的可执行文件即可。

setlocal
set "APP_ROOT=%~dp0..\.."
set "CLIENT_EXE=%APP_ROOT%\数字消防系统.exe"

if exist "%CLIENT_EXE%" (
    start "" "%CLIENT_EXE%"
    exit /b 0
)

:: 如果找不到客户端主程序，则保持当前行为直接返回。
exit /b 0

REM 原有逻辑：
REM cd /d %~dp0
REM if "%1" == "h" goto begin
REM mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit
:begin
REM tiandui119_Update 2.3.1182
