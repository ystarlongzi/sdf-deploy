## 开发者服务说明，必看

## 运行环境

- 操作系统：支持linux CentOS，Windows，暂不支持 mac M1 系统
- 软件环境：Docker 环境
- 端口：默认2828、3000、9881端口
- CPU&内存：1核1G（最小），2核2G（推荐）
- 磁盘：2G（最小），5G（推荐）


## 快速开始
### 申请开发者账号 developerCode/secretKey

### 修改 .env 配置文件

查看和修改 _env 文件， 将文件名修改为 .env

### 启动服务

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

