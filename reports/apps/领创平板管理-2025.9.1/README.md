# 领创平板管理-2025.9.1

包名 `com.android.launcher3`，版本 `zhongyukejiao_hem_6.10.004.6`（6100046）。1 个 DEX，405 个包，6137 个类。

REA 证据编号 `ev_ac0255e60b929a113823595b892a915362c7b9ea56a977788b7d595df65782ed`。输入 SHA-256 为 `cd7482fdff9ebcb75b775cd846e25700f9d6f1c5adee49b06cd23f62d7252fef`。

[逐包模块清单](modules.md) · [类、方法数量和调用分类](packages.json) · [存储证据和 schema 清单](storage.json)

## Android 组件

| 类型 | 实现 |
|---|---|
| activity | `com.android.launcher3.activity.PromptDiaLogActivity` |
| activity | `com.android.launcher3.activity.EyeDialogActivity` |
| activity | `com.android.launcher3.activity.AdminActivity` |
| activity | `com.android.launcher3.activity.ReadWebSiteWhiteActivity` |
| activity | `com.android.launcher3.activity.LoginActivity` |
| activity | `com.android.launcher3.LauncherNew` |
| activity | `com.android.launcher3.activity.DataCleanActivity` |
| activity | `com.android.launcher3.activity.CleanRubbishActivity` |
| activity | `com.android.launcher3.activity.PullNewsActivity` |
| activity | `com.android.launcher3.activity.MessageCenterActivity` |
| activity | `com.android.launcher3.activity.CheckNetWorkActivity` |
| receiver | `com.drupe.swd.launcher.huoshan.mdm.tool.DeviceAdmin` |
| activity | `com.android.launcher3.activity.gestrue.SettingPwdGestureActivity` |
| activity | `com.android.launcher3.activity.gestrue.CheckPwdGestureActivity` |
| activity | `com.android.launcher3.activity.AdminLoginActivity` |
| activity | `com.android.launcher3.activity.PrivacyAgreementActivity` |
| activity | `com.android.launcher3.activity.ChangePwdActivity` |
| activity | `com.android.launcher3.activity.DeviceInfoActivity` |
| activity | `com.android.launcher3.activity.CustomCaptureActivity` |
| activity | `com.android.launcher3.activity.LicenseActivity` |
| activity | `com.android.launcher3.activity.LockActivity` |
| service | `com.liulishuo.filedownloader.services.FileDownloadService$SharedMainProcessService` |
| service | `com.liulishuo.filedownloader.services.FileDownloadService$SeparateProcessService` |
| provider | `android.support.v4.content.FileProvider` |
| provider | `com.android.launcher3.db.provider.UserDeviceInfoProvider` |
| provider | `com.android.launcher3.db.provider.WhiteAppContentProvider` |
| receiver | `com.android.launcher3.receiver.MsgReceiver` |
| service | `com.amap.api.location.APSService` |
| receiver | `com.android.launcher3.receiver.BootCheckReceiver` |
| receiver | `com.android.launcher3.receiver.EventReceiver` |
| receiver | `com.android.launcher3.receiver.LinspirerLauncherReceiver` |
| receiver | `com.android.launcher3.receiver.EyeProtectReceiver` |
| receiver | `com.android.launcher3.receiver.UsbReceiver` |
| activity | `com.android.launcher3.activity.ShowPushMsgActivty` |
| activity | `com.android.launcher3.activity.RemoveControlDialogActivity` |
| receiver | `com.android.launcher3.receiver.PowerReceiver` |
| receiver | `com.android.launcher3.receiver.EduAppReceiver` |
| activity | `com.android.launcher3.activity.DeviceRotatingActivity` |
| activity | `com.android.launcher3.activity.GuidActivity` |
| activity | `com.journeyapps.barcodescanner.CaptureActivity` |
| service | `com.alibaba.sdk.android.push.channel.KeepChannelService` |
| service | `org.android.agoo.accs.AgooService` |
| service | `com.aliyun.ams.emas.push.AgooInnerService` |
| service | `com.aliyun.ams.emas.push.MsgService` |
| activity | `com.aliyun.ams.emas.push.NotificationActivity` |
| service | `com.taobao.accs.ChannelService` |
| service | `com.taobao.accs.ChannelService$KernelService` |
| service | `com.taobao.accs.internal.AccsJobService` |
| service | `com.taobao.accs.data.MsgDistributeService` |
| receiver | `com.taobao.accs.EventReceiver` |
| receiver | `com.taobao.accs.ServiceReceiver` |
| provider | `com.huawei.hms.update.provider.UpdateProvider` |
| activity | `com.huawei.hms.activity.BridgeActivity` |
| activity | `com.huawei.hms.activity.EnableServiceActivity` |
| provider | `com.huawei.agconnect.core.provider.AGConnectInitializeProvider` |
| service | `com.huawei.agconnect.core.ServiceDiscovery` |
| activity | `com.huawei.updatesdk.service.otaupdate.AppUpdateActivity` |
| activity | `com.huawei.updatesdk.support.pm.PackageInstallerActivity` |
| provider | `com.huawei.updatesdk.fileprovider.UpdateSdkFileProvider` |

普通登录使用 UserInfo 类型的业务响应。原 APK 的响应解析器已在 Android 上分别处理示例用户、布尔、字符串、列表、业务错误及传输错误。[九项回调验证](../../evidence/linspirer/response-parser.json) · [接口报告](../../领创与中育接口.md)

## 文件与数据

包内有 0 个应用 Protobuf 定义、0 个直接识别的 ObjectBox 元数据类、10 条去重的静态 SQLite 建表或建索引语句。存储证据文件列出对应字段、语句、类位置及 13 个 assets 条目。

本包的 FileDownloader 同时保存文件总进度和逐连接的绝对位置。原包重开、两段进度求和及旧库升级均已验证。[本包生成的数据库](../../evidence/download-stores/领创平板管理-2025.9.1/filedownloader.db) · [读法和跨应用差异](https://github.com/Loshop-Studio/zhongyu-board-codec/blob/main/reports/%E7%94%BB%E6%9D%BF%E4%B8%8E%E5%AD%98%E5%82%A8.md#下载任务和断点文件)

## 代码与构建

反汇编工程中有 38 个类附有读写行为或模块职责注释。原始短名称与反编译别名的对应表位于 `sources/领创平板管理-2025.9.1/names.jobf`。Gradle 任务 `:领创平板管理-2025.9.1:assembleDebug` 从 smali 重建 DEX。编辑解码后的资源或清单会触发 AAPT2 重编，产物随 assets 和本机库一起打包签名。

本包的资源表有 822 条文件及配置记录，其中 591 条的 APK 路径与解码后的源文件路径不同。清单中声明的 Activity 有 26 处指令直接加载可识别的布局 ID，已在参与编译的 smali 中注释。[原包文件名、布局 ID 与引用方法](resource-files.json)

## 阅读入口

REA 单方法复核覆盖 `com.android.launcher3.LauncherNew.onDestroy`。[方法证据](rea-method.json)

系统桌面入口 LauncherNew 关联登录、消息中心、设备信息和管理界面。LoginActivity 对应的请求路径区分首次登记与普通登录；Apifox 里可核验的领创文档只有一条第三方 JSON-RPC 入口。

[业务类与方法](business-modules.md) · [方法级读写操作和代码注释](data-operations.md) · [业务模型字段与 Gson 显式键名](storage-models.json) · [SQLite 字段与外键](sqlite-layout.json) · [离线安装生成的实际数据库结构](emulator-sqlite.json) · [本机库和 ABI](native.json) · [Kotlin 源文件线索](kotlin-sources.json) · [跨版本候选名称](shared-symbols.json) · [Java 阅读源](../../../sources/领创平板管理-2025.9.1/java/) · [资源和清单](../../../sources/领创平板管理-2025.9.1/resources/) · [smali 编译工程](../../../android/领创平板管理-2025.9.1/)

本包 Java 阅读源有 356 个反编译占位位置，分别链接到原 DEX 中有指令的方法体。[Java 占位行与原 DEX 指令对照](java-fallbacks.md)

JADX 在本包报告 34 个错误。涉及错误的方法应对照 smali 查看分支和异常处理。
