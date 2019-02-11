# Project V

[![Build Status][1]][2] [![codecov.io][3]][4] [![GoDoc][5]][6] [![codebeat][7]][8] [![Downloads][9]][10]

[1]: https://dev.azure.com/v2ray/core/_apis/build/status/v2ray.core "Build Status badge"
[2]: https://dev.azure.com/v2ray/core/_build/latest?definitionId=1 "Azure Build Status"
[3]: https://codecov.io/github/v2ray/v2ray-core/coverage.svg?branch=master "Coverage badge"
[4]: https://codecov.io/github/v2ray/v2ray-core?branch=master "Codecov Status"
[5]: https://godoc.org/v2ray.com/core?status.svg "GoDoc badge"
[6]: https://godoc.org/v2ray.com/core "GoDoc"
[7]: https://codebeat.co/badges/f2354ca8-3e24-463d-a2e3-159af73b2477 "Codebeat badge"
[8]: https://codebeat.co/projects/github-com-v2ray-v2ray-core-master "Codebeat"
[9]: https://img.shields.io/github/downloads/v2ray/v2ray-core/total.svg "All releases badge"
[10]: https://github.com/v2ray/v2ray-core/releases/ "All releases number"

Project V is a set of network tools that help you to build your own computer network. It secures your network connections and thus protects your privacy. See [our website](https://www.v2ray.com/) for more information.

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
"udp": false
}
}
],






## License

[The MIT License (MIT)](https://raw.githubusercontent.com/v2ray/v2ray-core/master/LICENSE)

## Credits

This repo relies on the following third-party projects:

* In production:
  * [gorilla/websocket](https://github.com/gorilla/websocket)
  * [gRPC](https://google.golang.org/grpc)
* For testing only:
  * [miekg/dns](https://github.com/miekg/dns)
  * [h12w/socks](https://github.com/h12w/socks)
