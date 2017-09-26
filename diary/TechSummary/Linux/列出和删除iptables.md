### 列出和删除iptables

#### 按规范列出iptables(按创建时的语句列出)
列出所有激活的iptables rules
```bash
$ sudo iptables -S
```

#### 列出特定的Chain
```bash
$ sudo iptables -S TCP
$ sudo iptables -S INPUT
...
```
#### 以tables的形式列出
```bash
$ sudo iptables -L
```

#### 按规范删除iptables
在添加该iptables的命令中iptables后面表示添加的参数(例如`-I -A`)换成`-D`就行了
```bash
$ sudo iptables -A INPUT -m conntrack --ctstate INVALID -j DROP #添加
$ sudo iptables -D INPUT -m conntrack --ctstate INVALID -j DROP #对应的删除
```

#### 按chain和number来删除规则
首先通过下面命令来列出规则：
```bash
$ sudo iptables -L --line-number
```

```
# 示例输出
Chain INPUT (policy DROP)
num  target     prot opt source               destination
1    ACCEPT     all  --  anywhere             anywhere             ctstate RELATED,ESTABLISHED
2    ACCEPT     all  --  anywhere             anywhere
3    DROP       all  --  anywhere             anywhere             ctstate INVALID
...
```
然后我们就可以通过chain name和num来删除一条规则：
```bash
# 删除第三列target为DROP的那个规则
$ sudo iptables -D INPUT 3  # INPUT 为第一行 Chain后面的名字，num为下面要删除的那个规则那一行首的num
```

#### NOTES
我在第一次尝试的时候首先通过以下命令添加了规则：
```bash
sudo iptables -t nat -I PREROUTING -p tcp --dport 443 -j REDIRECT --to-ports 8443
sudo iptables -t nat -I OUTPUT -p tcp -o lo --dport 443 -j REDIRECT --to-ports 8443
```
然后就用列出规则的命令查看，结果怎么都出不来。
原因如下：
通过`-t nat`添加的规则，是添加到了一个叫nat的table中。而不用-t参数的时候，系统有个默认的叫做filter的table，所有不加-t参数的命令都是在操作filter这个table。
那么到底怎么才能操作nat这个table呢？很简单，只要在上面所有命令中iptables的后面也加上一个`-t nat`就可以了。比如要列出规则：
```bash
$ sudo iptables -t nat -L
```
