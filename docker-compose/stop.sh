envFile=".env"
if [[ ! -f "$envFile" ]]; then
echo ".env not exist,use current config"
cp -f ./config.properties ./.env
fi
sudo docker-compose down
## 删除镜像使用以下指令
### sudo docker-compose down --rmi all