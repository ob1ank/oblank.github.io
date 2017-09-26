### 将linux服务器的一个端口映射到本地的另一个端口

例：将3722端口映射到22端口
```bash
$ sudo iptables -t nat -I PREROUTING -p tcp --dport 3722 -j REDIRECT --to-ports 22
$ sudo iptables -t nat -I OUTPUT -p tcp -o lo --dport 3722 -j REDIRECT --to-ports 22
```

#### 永久生效
- 安装iptables-persistent
    ```bash
    sudo apt-get install iptables-persistent
    ```
- 然后，可以通过下面的命令来保存或重新加载iptables rules
    ```bash
    sudo /etc/init.d/iptables-persistent save
    sudo /etc/init.d/iptables-persistent reload
    ```
- 对Ubuntu 16.04 Server上面的两个命令好像不好使，用下面两个命令代替：
    ```bash
    sudo netfilter-persistent save
    sudo netfilter-persistent reload
    ```
