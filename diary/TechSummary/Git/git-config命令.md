#### 配置目录
git配置目录分三级:
- 仓库级，通过`--local`配置，在当前仓库下`.git/config`
- 全局级，通过`--global`配置，在用户目录下`~/.gitconfig`
- 系统级，通过`--system`配置，在`/etc/gitconfig`中
- 配置文件的权重是`仓库>全局>系统`

#### 一些配置详解
- `core.gitProxy`：当使用Git协议抓取时（作为命令主机端口？）执行的“代理命令”，而不是直接建立连接。如果变量值使用“COMMAND FOR DOMAIN”的格式，则该命令仅适用于以指定的域字符串结尾的主机名。该变量可以多次设置，并按照给定的顺序进行匹配; 以第一次匹配到的为准。
这个配置可以被`GIT_PROXY_COMMAND`环境变量覆盖（它始终普遍应用）。
特殊字符串`none`可以用作代理命令来指定给定域模式不使用任何代理。 这有助于在为外部域使用通用代理的同时从代理使用中排除防火墙内的服务器。
- `http.sslVerify `：是否在获取或推送HTTPS时验证SSL证书。 可以被`GIT_SSL_NO_VERIY`环境变量覆盖。
- `http.sslCert`：获取或推送HTTPS时包含SSL证书的文件。 可以被`GIT_SSL_CERT`环境变量覆盖。
- `http.sslKey`：获取或推送HTTPS时包含SSL私钥的文件。 可以被`GIT_SSL_KEY`环境变量覆盖。
