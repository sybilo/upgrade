# Upgrade Protocol
Mobile CHECK UPGRADE custom protocol.

#### 方案一
1. 在 github 发布 apk;
2. 在 github 仓库指定的文件`upgrade.profile`中更新参数；
  - 参数包括如下字段：
    >* apk 的链接地址；
    >* 版本号；
    >* 灰度发布比例；
    >* 更新日志；
    >* 文件的 hash；
    >* 是否强制更新。
    >* 格式：
       ```json
       {
         "apkUrl": "https://github.com/sybilo/upgrade/${apk-url}.apk",
         "version": 11010100,
         "gatedLaunch": 0.1,
         "title": "New Version to Update(v1.0.0):",
         "notes": "${markdown}",
         "sha-1": "${hash by sha-1}",
         "force": true
       }
       ```

3. 检测更新  
  - App 每天自动检查一次版本更新（也可手动触发）；
  - 检测更新时，App 首先请求`upgrade.profile`文件，取`versionCode`字段判断`是否大于当前版本的versionCode`，通过则判断`是否已忽略该版本灰度`，如未忽略，在启动更新。
    >* 判断`是否已忽略该版本灰度`：取出以该`versionCode`作为`key`的`random`，若无`random`则生成并存储，`if(random < gatedLaunch)`表示可启动更新。
    >* `random`的生成：随机生成一个 [0, 1) 范围的随机数。

4. 更新  
弹出对话框显示新版本的更新日志`notes`，然后下载 apk，比较下载的apk文件 hash（与`sha-1`字段是否相同），通过后弹出系统安装对话框执行安装。

* 灰度发布字段`gatedLaunch`有可能更新，所以每次都需要取出来比较。

#### 方案二
把`方案一`中第3步`检测更新`的每天自动检测改为被动的`频道推送`，即：`upgrade.profile`文件由`主动下载`改为`订阅频道`，在接收到`upgrade.profile`内容后，触发后续步骤。
* 其它步骤同方案一。
