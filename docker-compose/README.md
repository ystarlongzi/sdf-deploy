####开发者服务说明，必看！！！####

开发者服务依赖docker环境，请提前安装docker！
修改config.properties自定义开发者服务配置！
使用root权限启动开发者服务!

####运行环境
操作系统：支持linux CentOS，Windows，暂不支持mac M1系统
软件环境：Docker环境
端口：默认2828、3000、9881端口
CPU&内存：1核1G（最小），2核2G（推荐）
磁盘：2G（最小），5G（推荐）

#### 1.申请开发者账号 developerCode/secretKey

#### 2.修改config.properties 配置文件
## redis配置
REDIS_HOST=
REDIS_PORT=
REDIS_PASSWORD=
REDIS_DB=
REDIS_POOLSIZE=
REDIS_VOL_CONF_PATH=
REDIS_VOL_DATA_PATH=
## 后端网关配置
TEDGEOPEN_URL=
TEDGEOPEN_PORT=
TEDGEOPEN_VOL_LOG_PATH=
## 基础服务配置
BASIC_URL=
BASIC_PORT=
BASIC_VOL_LOG_PATH=
## 前端网关配置
FGW_PORT=
## 用于云项目获取项目信息接口加密（rsa的公私钥）
PUBLIC_KEY=
PRIVATE_KEY=


#### 3.启动服务
Linux:
./startup.sh -devc yourDeveloperCode -devk yourDeveloperKey
例子：./startup.sh -devc testCode -devk testKey
Windows:
startup.bat

#### 服务关闭命令
Linux:
./stop.sh
Windows:
stop.bat

#### 数据目录
./redis/data

#### 日志目录
./tedgeopen/logs
./sdf-basic-micro/logs

