## How to install?(点开修改README.md，直接在外面看格式都乱的)
或者点开 How to install.sh 安装代码指令都在里面
git clone https://github.com/HyoukaChitandaEru/v2ray-core
cd v2ray-core
chmod +x V2rayGo-Install.sh
./V2rayGo-Install.sh local

sudo systemctl start v2ray（重启v2ray服务，每次修改过配置都要重启服务哦！）
如果提示git命令不可用，那就自己装一个喽？什么不会？我也不会，^_^、、

输入
vi  /etc （找到 v2ray 目录下的 config.json进行修改）或者 vi /etc/v2ray 

1、以下是服务器配置，将服务器 /etc/v2ray 目录下的 config.json 文件修改成下面的内容，修改完成后要重启 V2Ray 才会使修改的配置生效。

{
"log": {
"access": "/var/log/v2ray/access.log",
"error": "/var/log/v2ray/error.log",
"loglevel": "warning"
},
"inbound": {
"port": 2233,
"protocol": "vmess",
"settings": {
"clients": [
{
"id": "1d9aa805-5d0f-d2c7-52df-24fc7e31dfa2",
"level": 1,
"alterId": 64
},
{
"id": "1239d019-f12d-28a5-72ac-83d3ee3725ab",
"level": 1,
"alterId": 64
},
{
"id": "5fc205ad-e659-802f-0aa5-53b5b6ed6a40",
"level": 1,
"alterId": 64
}
]
}
},
"outbound": {
"protocol": "freedom",
"settings": {}
},
"inboundDetour": [
{
"port": 2333,
"protocol": "vmess",
"settings": {
"clients": [
{
"id": "1d9aa805-5d0f-d2c7-52df-24fc7e31dfa2",
"level": 1,
"alterId": 64
},
{
"id": "1239d019-f12d-28a5-72ac-83d3ee3725ab",
"level": 1,
"alterId": 64
},
{
"id": "5fc205ad-e659-802f-0aa5-53b5b6ed6a40",
"level": 1,
"alterId": 64
}
]
}
},
{
"port": 10000,
"protocol": "vmess",
"settings": {
"clients": [
{
"id": "1d9aa805-5d0f-d2c7-52df-24fc7e31dfa2",
"level": 1,
"alterId": 64
},
{
"id": "1239d019-f12d-28a5-72ac-83d3ee3725ab",
"level": 1,
"alterId": 64
},
{
"id": "5fc205ad-e659-802f-0aa5-53b5b6ed6a40",
"level": 1,
"alterId": 64
}
]
}
},
{
"port": 10080,
"protocol": "shadowsocks",
"settings": {
"method": "aes-256-cfb",
"password": "shan2699562239",
"udp": true
}
}
],
"outboundDetour": [
{
"protocol": "blackhole",
"settings": {},
"tag": "blocked"
}
],
"routing": {
"strategy": "rules",
"settings": {
"rules": [
{
"type": "field",
"ip": [
"0.0.0.0/8",
"10.0.0.0/8",
"100.64.0.0/10",
"127.0.0.0/8",
"169.254.0.0/16",
"172.16.0.0/12",
"192.0.0.0/24",
"192.0.2.0/24",
"192.168.0.0/16",
"198.18.0.0/15",
"198.51.100.0/24",
"203.0.113.0/24",
"::1/128",
"fc00::/7",
"fe80::/10"
],
"outboundTag": "blocked"
}
]
}
}
}