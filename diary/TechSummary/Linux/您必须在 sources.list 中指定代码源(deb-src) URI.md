sudo apt-get build-dep -y libfltk1.3
E: 您必须在 sources.list 中指定代码源(deb-src) URI

检查你sources.list,你可以看到在网址前面有个 deb ,这个表示是二进制包,如果要用到编译等使用的源代码等,需要用deb-src 来表示.所以操作方式是,把原来的deb的那些行复制一下,粘贴,把deb改成deb-src,注意,不要把包含有ubuntu-cn的那些源也修改,因为这里面没有源代码,包含进去会报错. 
