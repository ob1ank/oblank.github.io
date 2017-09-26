- 开始搜索框中输入cmd然后看到cmd.exe后右键以管理员身份进入
- 在cmd命令行下我们输入 netsh wlan set hostednetwork mode=allow ssid=myssid key=mykey
- 打开网络共享中心
- 多了一个无线网络连接2，它是一个虚拟连接。
<input type="hidden" value="Just for something ! You can ignore it.">
- 选择本地连接点击右键选择属性。
- 选择共享，勾上允许其他网络。。。并在下面选择框中选择新建的无限网络
- cmd输入 netsh wlan start hostednetwork
- 检查下虚拟无线网卡上有无配置ip，一般是ip=192.168.任意.1,掩码255.255.255.0
- 停止虚拟无线命令式 netsh wlan stop hostednetwork