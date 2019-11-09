# luci-app-series
一种基于Mac地址可以在openwrt页面做验证开启某项功能
基于shell，获取mac地址，采用MD5sum计算MD5值，截取不同部分与输入的key值进行对比。
若对比成功，则把相应的显示入口文件拷贝到/usr/lib/luci/controller下。
此脚本适用于mt系列，因shell里面有直接设置eth0 mac的命令。其他芯片的需要确定下需要不需要。
