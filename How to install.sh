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
  "inbounds": [
    {
      "port": 16823, // 服务器监听端口
      "protocol": "vmess",    // 主传入协议
      "settings": {
        "clients": [
          {
            "id": "b831381d-6324-4d53-ad4f-8cda48b30811",  // 用户 ID，客户端与服务器必须相同
            "alterId": 64
          }
        ]
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",  // 主传出协议
      "settings": {}
    }
  ]
}

2、添加ss协议兼容，在1.中"outbounds": 上一行插入如下内容
"inboundDetour": [
{
"protocol": "shadowsocks",
"port": 2333,
"settings": {
"method": "aes-256-cfb",
"password": "shan2699562239",
"udp": false //true也无妨
}
}
],
