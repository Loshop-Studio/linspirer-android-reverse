# 领创平板管理-2025.9.1

包名 `com.android.launcher3`，版本 `zhongyukejiao_hem_6.10.004.6`（6100046）。1 个 DEX，405 个包，6137 个类。

REA 证据编号 `ev_ac0255e60b929a113823595b892a915362c7b9ea56a977788b7d595df65782ed`。输入 SHA-256 为 `cd7482fdff9ebcb75b775cd846e25700f9d6f1c5adee49b06cd23f62d7252fef`。

[逐包模块清单](modules.md) · [类、方法数量和调用分类](packages.json) · [存储证据和 schema 清单](storage.json)

## Java 类名

本版阅读源码共 3,589 个顶层 Java 文件。557 个类已使用可读名称，涉及 1,151 个声明或引用这些类的文件。`C` 加四位编号的顶层类由 965 个减至 536 个。把 `RunnableC`、`AbstractC` 等变体一并计算，占位类名由 1,364 个减至 807 个。这里统计的是顶层文件，内部类、方法和字段另计。

| 旧 Java 类名 | 阅读源码 | 命名依据 |
| --- | --- | --- |
| `C0811a` | [ArchTaskExecutor](../../../sources/领创平板管理-2025.9.1/java/com/huawei/hem/ArchTaskExecutor.java) | 原始 DEX 保留了 `ArchTaskExecutor.java`。 |
| `ViewOnClickListenerC1397x3` | [MainMenuMessageCenterClickListener](../../../sources/领创平板管理-2025.9.1/java/com/huawei/hem/MainMenuMessageCenterClickListener.java) | 首页把消息中心菜单项绑定到这个回调，回调打开消息中心。 |
| `ViewOnClickListenerC1447z3` | [MainMenuDeviceInfoClickListener](../../../sources/领创平板管理-2025.9.1/java/com/huawei/hem/MainMenuDeviceInfoClickListener.java) | 首页的设备信息菜单项和回调打开的页面一致。 |
| `InterfaceC1268s` | [ViewModelProviderFactory](../../../sources/领创平板管理-2025.9.1/java/com/huawei/hem/ViewModelProviderFactory.java) | DEX 保留了外层文件名，接口的 `create(Class)` 与同批 APK 中的 `ViewModelProvider.Factory` 一致。 |

[可读名称映射](../../../sources/领创平板管理-2025.9.1/class-names.map)逐项记录旧 JADX 名、阅读名、原始 DEX 类名和依据，可作为 REA 的 `--mapping-path` 输入。REA 6.9.0 识别出全部 557 条类记录，格式错误为零。源文件同名、编译器合并等情况会影响原始符号的恢复，按控件或接口职责起的名称是本项目的阅读别名。

[原始 JADX 名称表](../../../sources/领创平板管理-2025.9.1/names.jobf)保留了复现初次导出所需的名称。在仓库根目录运行 `python3 tools/apply_class_names.py 领创平板管理-2025.9.1` 可对初次导出的阅读源码应用映射，或者检查已改名文件的声明与引用。APK 由 smali 构建，[356 个 Java 占位方法](java-fallbacks.md)分别链接到对应的 DEX 方法体。

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
