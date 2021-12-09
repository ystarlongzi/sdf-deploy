## 开发者服务说明，必看

## 运行环境

- 操作系统：支持linux CentOS，Windows，暂不支持 mac M1
- 软件环境：[Docker](https://www.docker.com)、[Docker-compose](https://docs.docker.com/compose/install)
- 端口：默认2828、3000、6379、9881端口
- CPU&内存：1核1G（最小），2核2G（推荐）
- 磁盘：2G（最小），5G（推荐）


## 快速开始
### 申请开发者账号 developerCode/secretKey

### 创建 .env 配置文件

基于 _env 创建 .env 文件
```bash
cp _env .env
```

编辑 .env 文件， 添加你的配置

```
DEVELOPER_CODE= 您的开发者Code
DEVELOPER_KEY= 您的开发者SecretKey
```
### 启动服务
此目录下执行
```bash
docker-compose up
```

如果想要后台启动服务， 可以添加 `-d` 参数

```bash
docker-compose up -d

```
### 关闭服务

```bash
docker-compose down
```

## 相关目录

数据目录

```
./redis/data
```

日志目录

```
./tedgeopen/logs
./sdf-basic-micro/logs
```

