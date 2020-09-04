# it_ying_flutter_22_update_apk
-  安卓自动更新apk

## Android App 升级执行流程
```
1、获取本地版本号
2、请求服务器获取服务器版本号 
3、本地版本和服务器版本不一致提示升级，弹窗提示用户是否更新 
4、用户确定升级，调用文件传输方法下载 apk 文件 
5、监听下载进度
6、下载完成打开 Apk 进行安装
```

## 依赖
### 检测版本号
- package_info: ^0.4.3 

### 获取文件存储路径
- path_provider: ^1.6.14

### 下载器
- flutter_downloader: ^1.5.0

### 打开文件插件
- open_file: ^3.0.1