docker run -tid \
  --device /dev/net/tun \
  --cap-add NET_ADMIN \
  --dns 223.5.5.5 \
  -v /data/proxy/.ecdata:/root/ \
  -e PING_ADDR_URL=http://192.168.130.113/dashboard/groups \
  -e PING_ADDR=www.baidu.com \
  -e PING_INTERVAL=60 \
  -e URLWIN=1 \
  -e PASSWORD=xxxx \
  -e URLWIN=1 \
   -p 127.0.0.1:5901:5901 \
   -p 127.0.0.1:1080:1080 \
   -p 127.0.0.1:8888:8888 \
   --restart always \
   hagb/docker-easyconnect:7.6.7