### usage
show_usage="args: [-devc, -devk]"
### example
show_example="For example: [./startup.sh -devc yourDeveloperCode -devk yourDeveloperKey]"
### after start
after_start="isv service up successful!! next step maybe config your saas on  http://localhost:9881/sdf/config"
### developer code
DEVELOPER_CODE=""
### developer key
DEVELOPER_KEY=""
while [ -n "$1" ]
do
    case "$1" in
        -devc) DEVELOPER_CODE=$2;
            shift 2;;
        -devk) DEVELOPER_KEY=$2;
            shift 2;;
        *) break;;
    esac
done
if [[ -z $DEVELOPER_KEY || -z $DEVELOPER_CODE ]]; then
        echo $show_usage
        echo $show_example
        exit 0
fi
cp -f ./config.properties ./.env
echo "" >> ./.env
echo "## auto generated developer info env" >> ./.env
echo "DEVELOPER_CODE=$DEVELOPER_CODE" >> ./.env
echo "DEVELOPER_KEY=$DEVELOPER_KEY" >> ./.env
echo 'service env create successful!'
if ! sudo -l docker-compose >/dev/null 2>&1; then
    echo 'docker-compose not installed...';
    sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose;
    sudo chmod +x /usr/local/bin/docker-compose;
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose;
    sudo docker-compose --version;
else
    echo 'docker-compose installed...';
fi
sudo docker-compose up -d;
echo $after_start
