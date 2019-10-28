# luci-app-series
一种基于Mac地址可以在openwrt页面做验证开启某项功能
基于shell，获取mac地址，采用MD5sum计算MD5值，截取不同部分与输入的key值进行对比。
若对比成功，则把相应的显示入口文件拷贝到/usr/lib/luci/controller下。
每次开机都会执行此脚本。
已知bug：不能验证每个mac，验证成功一次，只要路由不重置，即可使用。
