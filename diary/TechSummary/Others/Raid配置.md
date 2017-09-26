#### 不同品牌服务器进入raid bios的快捷键：
- 联想： CTRL+G
- 戴尔： CTRL+r 
- 惠普： F8
- 浪潮： Ctrl+A 
- IBM ： Ctrl+H
<input type="hidden" value="Just for something ! You can ignore it.">

#### 不同品牌服务器Raid配置：
##### 戴尔：
- Press CTRL+A for Configuration Utility!
- “Container configuration utility”
- Initialize Drivers  格式化磁盘
- Insert”键选中需要被初始化的硬盘
- created container  创建容器
- Insert选择要加入的磁盘
- 选择raid级别
- manage container 检测scrub  ok就好了

##### 惠普：
- 快捷键进入 configuration for arrays utility
- Create Logical Drive  创建新的
- 左侧选磁盘  右侧上选级别   //注：raid1两块磁盘大小必须相同，否则取最小
- 选择成功后会在 [ ] 前面有 X 的提示
- 左侧选完后  Tab  转到右侧选择 
- Enter创建
- F8保存
- 回主菜单  选 View Logical Drive       后面ok的话就好了

##### 浪潮：
- Press Ctrl+A for Adaptec RAID Configuration!
- 进入ARC菜单，如下：  
- Array Configuration Utility   
- Select Utility   
- Disk Utilities
- up/down  方向键选择    enter确认   esc返回 
- Array Configuration Utility ：
	- Manage Arrays  查看系统中已创建的磁盘阵列(array)的属性
	- Create array  insert或者空格键依次选择您希望array中包含的物理磁盘成员   
	- Delete键取消您的某次选择  <Enter>确认  Array Label（阵列的名字）

##### IBM：
- ctrl+H进入WebBIos
- 选择start 进入RAID卡界面
- 硬盘有“JBOD”表示有硬盘没被激活 选择  激活
- make unconfGood  => go
- Configuration Wizard
- Add Configuration（添加配置），然后next
- manual configuration 选项，点击 next
- 选择左侧要用的磁盘 Add to array
- Accept DG
- next
- Array with free space
- Add to SPAN
- next
- RAID Level 选择
- Select Size 写磁盘大小
- Accept
- yes
- next
- Accept
- yes
- Home 返回主菜单
- 能看到“Deive Geoup:0,Raid 1”说明raid 1已做好。
