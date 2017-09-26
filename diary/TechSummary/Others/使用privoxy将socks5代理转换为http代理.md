- 下载privoxy
- 配置privoxy，配置文件/etc/privoxy/config，找到5. FORWARDING 在下面加入一行`forward-socks5 / 127.0.0.1:1080 . `具体是什么意思里面有介绍。然后重启privoxy就行了。
- 在`~/.bashrc`增加下面两行，可以使整个终端都使用代理模式：
    ```bash
    export http_proxy=http://127.0.0.1:8118
    export https_proxy=http://127.0.0.1:8118
    ```
