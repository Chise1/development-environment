# 开发环境

将常用环境打包到容器，方便启动和停止。
分为两种，一种为使用birdge，使用独立的ip和网络，这是最好的方案。但是无法在外部访问。
第二种使用host，使用宿主机的网络，可以在外部访问。

包含的服务有：

- mysql
- nacos
- redis
- kafka
- portainer 容器管理
- kafka-ui kafka监控


默认的mysql账户密码为root/123456

部署说明

如果是host，需要修改host的信息。

1. 直接执行`docker compose up -d` 
2. 使用工具连接到mysql，创建sdn数据表，然后将sql中的nacos.sql执行一下。
3. 再次执行`docker compose up -d`，以启动因为没有数据库导致失败的nacos容器。