#### git clone慢的解决方法
- 首先你要有一个代理，推荐[shadowsocksr](https://github.com/shadowsocksr)
- 为`http`和`https`协议设置socks5代理：
    ```bash
    git config --global http.proxy 'socks5://<your_proxy_host>:<your_proxy_port>'
    git config --global https.proxy 'socks5://<your_proxy_host>:<your_proxy_port>'
    ```
- 为`git`协议设置socks5代理：
    - 以下格式使用的是`git`协议：
        ```bash
        git clone git://github.com/git/git.git
        ```
    - 首先创建一个文件`git-proxy`，写入以下内容：
        ```bash
        #!/bin/bash
        nc -x <your_proxy_host>:<your_proxy_port> $1 $2
        ```
      这里的`nc`是`netcat openbsd`而不是`netcat traditional`。
      给文件添加可执行权限`sudo chmod +x git-proxy`。
    - 将`git-proxy`文件所在文件夹加入环境变量`$PATH`（记得刷新环境变量）。
    - 配置`core.gitProxy`：
        ```bash
        git config --global --add core.gitProxy git-proxy
        ```

- 为`ssh`协议设置socck5代理：
    - 以下格式使用的是`ssh`协议：
        ```bash
        git clone git@github.com:git/git.git
        ```
    - 在配置之前首先运行以下命令确保你能`ssh`到你想连接的网站。例如`github`：
        ```bash
        ssh -vT git@github.com
        ```
      出现以下回应说明成功：
        ```nohighlight
        Hi your_username! You've successfully authenticated, but GitHub does not provide shell access.
        ```
    - 以下方法不一定每个人都能用，取决于你的代理服务商有没有提供相关功能：
      修改 `~/.ssh/config` 加入如下内容：
      全局代理：
        ```bash
        ProxyCommand nc -X 5 -x <your_proxy_host>:<your_proxy_port> %h %p
        ```
      特定域名进行代理：
        ```bash
        Host 域名
        ProxyCommand nc -X 5 -x <your_proxy_host>:<your_proxy_port> %h %p

        Host github.com
        ProxyCommand nc -X 5 -x <your_proxy_host>:<your_proxy_port> %h %p
        ```
      如果`git clone git@github:git/git.git`长时间无反应，最后报以下错误：
        ```nohighlight
        ssh_exchange_identification: Connection closed by remote host
        fatal: Could not read from remote repository.

        Please make sure you have the correct access rights
        and the repository exists.
        ```
      说明代理服务商不支持相关功能。
