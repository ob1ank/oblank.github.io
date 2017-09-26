- 一路安装，中间有个要选浏览器的，选择你调试用的浏览器就行了
- 配置WampServer的www目录
    - WampServer安装完成之后，默认的www目录在程序安装所在文件夹的www子文件夹下，
    - 但是一般这不是我们想要的目录，为了管理方便，一般将这个设置为我们自己的Web
    - 主目录，假设自己的Web主目录路径为D:\Web\
    - 设置方法如下：
<input type="hidden" value="Just for something ! You can ignore it.">
    - 首先进入程序所在的文件夹，找到Scripts文件夹，进入后有一个名为config.inc.php的文件
    - 用记事本打开此文件，找到代码（$wwwDir），默认为安装目录的www文件夹，将等号后面修改
    - 为我们自己的目录即可，注意：Windows里的文件夹为D:\Web，这里的是D:/Web
    - 关闭并保存文件，退出WampServerserver再次进入即可生效

- 配置Apache Web服务器
    - 设置主目录的位置和主页的文件名：
    - 进入安装目录，找到bin/apache/apache***/conf/httpd.conf
    - 以记事本方式打开，找到代码（DocumentRoot，注意前面没有井号#），选中的就是要设置的Web主目录
    - 找到 <Directory 某目录 > 将里面的目录改为跟上面一样 
- 配置PHP解释器
    - PHP时区设置：PHP解释器默认使用格林威治时间GMT，这样就产生了一个问题，
    - 函数调用后显示的时间与实际时间相差8小时（中国时间是GMT+8）所以要进行设置。
    - 进入安装目录，找到bin/php/php***/php.ini
    - 找到[Date]字段，去掉date.timezone前的分号，并在等号后面加上”Asia/Chengdu”并将其他的注释掉

- 设置完phpmyadmin密码后，找到安装目录下apps/phpmyadmin***/config.inc.php
    - 找到$cfg['Servers'][$i]['password'] = ' ';将密码填进去
  
- 开启apache对.htaccess重定向的支持
    - 进入安装目录，找到bin/apache/apache***/conf/httpd.conf
  
```
(1)
AllowOverride None
改为
AllowOverride All
(2)去掉下面的注释
LoadModule rewrite_module modules/mod_rewrite.so
```
- 允许外部访问：
    - 找到安装目录下bin/apache/apache***/conf/httpd

```
AllowOverride all
Require all denied
改为
AllowOverride all
Require all granted
将Require local注释掉 
```
