@echo off
REM usage
SET show_code_error= isv service up failed!!! developer code must not be empty!!!
SET show_key_error=  isv service up failed!!! developer key can not be empty!!!
REM after start
SET after_start=isv service up successful!! next step maybe config your saas on  http://localhost:9881/sdf/config
REM developer code
SET /p DEVELOPER_CODE=Developer Code:
REM developer key
SET /p DEVELOPER_KEY= Developer Key:
if "%DEVELOPER_CODE%"=="" (
        echo %show_code_error%
pause
exit
)
if "%DEVELOPER_KEY%"=="" (
        echo %show_key_error%
pause
exit
)
COPY /Y config.properties .env > nul
echo.>>.env
echo ## auto generated developer info env >> .env
echo DEVELOPER_CODE=%DEVELOPER_CODE% >> .env
echo DEVELOPER_KEY=%DEVELOPER_KEY% >> .env
echo service env create successful!
if not exist docker-compose (
    echo docker-compose not installed...
    curl -o docker-compose https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-windows-x86_64.exe
    docker-compose --version
) else (
    echo docker-compose installed...
)
docker-compose up -d
echo %after_start%
pause
exit