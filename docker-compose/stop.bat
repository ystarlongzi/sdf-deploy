@echo off
if not exist .env (
    echo .env not exist, use current config
    COPY /Y config.properties .env > nul
)
REM delete images use under command
REM docker-compose down --rmi all
docker-compose down
echo isv service down successful!
pause
exit