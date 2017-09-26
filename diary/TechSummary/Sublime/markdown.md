### 用sublime写markdown
-----
- 首先安装插件Markdown Extended，因为目前的主题只对Markdown Extended可用
- 然后安装插件Monokai Extended，我们要用到它的color theme，安装完成之后手动选择该主题
- 最后安装插件OmniMarkupPreviewer，来实现实时预览的效果
<input type="hidden" value="Just for something ! You can ignore it.">
    - OmniMarkupPreviewer支持在一个设备上写markdown，在另一个设备上实时预览
        - 添加用户配置server_host，值为我们写markdown所在设备的ip
        - 然后在markdown界面右键选"Preview Markup in Browser"或者直接"Ctrl + Alt + O"
        - 再然后浏览器会自动打开，显示出预览效果，并且是实时更新的
        - 要在别的设备上预览，我们只要在别的设备上打开刚刚浏览器上的url即可