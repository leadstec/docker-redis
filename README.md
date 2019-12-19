### CHANGELOG

**2019-12-19**
* Update to 5.0.5

**4.0.11 2018-12-04**
* 升级版本
* 支持 lcs 1.6.2

**4.0.6**
* 更新2018年
* 基于alpine 3.7
    - 新增设置参数
        + REDIS_PORT 
        + REDIS_PROTECT_MODE (默认不保护,可远程连接host)

**3.2.8**

* 基于alpine 3.6（LCS 1.5.1）

**3.2.5**

* 发布到cangku.cloud
* Production Release


**3.2.5**

* 基于alpine 3.5（LCS 1.4）

**3.2.0**

* 支持LCS 1.2.0

**3.0.5**

* 支持Image Schema
* 支持LCS Tools

**3.0.2**

* 3.0.2-20
    - 支持captool
* 3.0.2-
    - Production Ready - 基于alpine:3.2.2

**2.8.17**

* 2.8.17-3
    - 基于alpine:3.1-3
    - 删除/setup目录
* 2.8.17-2
    - 基于alpine:3.1-2
    - 首次启动脚本runonce_redis.sh
    - 修改配置daemonize为no，修复supervisor无法控制的问题
* 2.8.17-1
    - 基于Alpine 3.1-1
    - 添加系统volume绑定，数据文件夹/data/db
    - 保存Redis logs到CONTAINER_LOG_DIR
    - 新增设置参数
        + REDIS_PORT
        + RDB_COMPRESSION_ENABLED
        + MAX_CLIENTS

**采用Redis版本号**

**0.5.2**

* Change to based on Alpine image to reduce image size.

**0.5.1**

* Update to base:0.5.1

**0.4.1**

* Based on image reg.leadstec.com/base:0.4.1 (Refer to base/0.4.1 for details)
* Remove EXPOSE ports from Dockerfile, please map ports while creating the container

**0.4**

* Combine dev and runtime into one image.
* Based on image reg.leadstec.com/base:0.4 (Refer to base/0.4 for details)

**0.3.1**

* Bug fixed on 0.3 run script about starting supervisord.

**0.3**

* Update to use supervisorctl control processes within container and prevent restart container frequently.

**0.2**

* Based on reg.leadstec.com/dev:0.2
* Dockerfile support up to docker version 1.2+
* initial image


