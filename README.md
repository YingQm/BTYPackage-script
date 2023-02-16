# BTYPackage-script 比特元打包脚本

## Windows
### Win_make_BTY.sh
* Windows 下手动编译 bityuan
* 可能出现最新更新的 bityuan 编译失败，可以让姜鹏直接帮忙编译 Windows 版本的 bityuan
* 如果能编译成功，直接运行 ./Win_make_BTY.sh

### Win_pack.sh
* 需要姜鹏打一个 Windows 版本的 bityuan 名称为 bityuan-windows-amd64.zip
* 直接运行 ./Win_pack.sh

### 生成 new 文件夹后
* 把 new 文件夹下的文件全部替换到 Bityuan-Wallet-Win-6.8.*-qt.exe 中
* 更改 Bityuan-Wallet-Win-6.8.*-qt.exe 的名称

## Ubuntu
* 打开虚拟机登录
* 密码: 12345678
* 打开桌面 BTY_pack 文件夹
* 右击打开终端
* 运行 ./ubuntu_pack.sh
* 生成 Bityuan-Wallet-Linux-6.8..-qt.tar.gz 压缩包后修改名称为最新的版本号
* 解压测试, 匹配版本号是否是最新(可能存在网络问题导致 git pull bityuan 失败), 没有其他问题后发布