.class public Landroid/app/csdk/CSDKManager;
.super Ljava/lang/Object;
.source "CSDKManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CSDKManager"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLauncherPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public AddAppBlackRule(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public AddAppWhiteRule(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ClearAppRules()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ClearIpHostRules()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ClearRules()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public SetEnable(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public WriteToFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aCLK(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public activateLicense(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addAppManageBlackList_v3(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addAppManageWhiteList_v3(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addAutostartPackageWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addInstallPackageBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addInstallPackageWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addNetworkAccessBlacklist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addNetworkAccessWhitelist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addPersistentAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addSSID(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public addUninstallPackageBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addUninstallPackageWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addWifiBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addWifiWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public allowDialer(Z)V
    .locals 0

    return-void
.end method

.method public allowInstallNonMarketApp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public allowMMS(Z)V
    .locals 0

    return-void
.end method

.method public allowScreenCaptureKey(Z)V
    .locals 0

    return-void
.end method

.method public allowSystemAccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public allowWifi(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public captureScreen()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public clearCustomLauncher()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clipSettingsAppInfo(Z)V
    .locals 0

    return-void
.end method

.method public clipSystemHotspot(Z)V
    .locals 0

    return-void
.end method

.method public clipSystemSettings(Z)V
    .locals 0

    return-void
.end method

.method public deactivateLicense(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disableApplicationManage_v3(Z)V
    .locals 0

    return-void
.end method

.method public disableAutostart(Z)V
    .locals 0

    return-void
.end method

.method public disableBluetooth(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disableBluetoothShare(Z)V
    .locals 0

    return-void
.end method

.method public disableCamera(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disableFactoryReset(Z)V
    .locals 0

    return-void
.end method

.method public disableHiddenGame(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disableIncomingCall(Z)V
    .locals 0

    return-void
.end method

.method public disableInstallation(Z)V
    .locals 0

    return-void
.end method

.method public disableLocation(Z)V
    .locals 0

    return-void
.end method

.method public disableLockScreenNotification(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disableMultiUser(Z)V
    .locals 0

    return-void
.end method

.method public disableMultiUser_v3(Z)V
    .locals 0

    return-void
.end method

.method public disableOtaUpdate(Z)V
    .locals 0

    return-void
.end method

.method public disableOutgoingCall(Z)V
    .locals 0

    return-void
.end method

.method public disablePowerKey(Z)V
    .locals 0

    return-void
.end method

.method public disablePowerSaveMode(Z)V
    .locals 0

    return-void
.end method

.method public disableSMS(Z)V
    .locals 0

    return-void
.end method

.method public disableStatusBarNotification(Z)V
    .locals 0

    return-void
.end method

.method public disableStatusBarPanel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disableTabletMasterAutostart(Z)V
    .locals 0

    return-void
.end method

.method public disableUnInstallation(Z)V
    .locals 0

    return-void
.end method

.method public disableVolumeKey(Z)V
    .locals 0

    return-void
.end method

.method public disableWifi(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disableWifiAdvanced(Z)V
    .locals 0

    return-void
.end method

.method public disableWifiDirect(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowAPN_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowAirplaneModeV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowAirplaneMode_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowBluetoothShareV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowBluetoothShare_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowBluetoothV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowBluetooth_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowData_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowDevModeV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowDevMode_v3(Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/csdk/CSDKManager;->enableDevMode(Z)Z

    move-result p1

    return p1
.end method

.method public disallowFactoryResetV3(Z)V
    .locals 0

    return-void
.end method

.method public disallowFactoryReset_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowLocationV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowLocation_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowLockScreenMode_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowLockScreenNotificationV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowLockScreenNotification_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowMultiUserV3(Z)V
    .locals 0

    return-void
.end method

.method public disallowMultiWindow(Z)V
    .locals 0

    return-void
.end method

.method public disallowPowerSaveMode(Z)V
    .locals 0

    return-void
.end method

.method public disallowSIMcard_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowSetAlarmVolume_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetBootTime_V3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetBrightness_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetMediaVolume_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetNotificationVolumV3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetNotificationVolume_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetShutDownTime_V3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetSleepTimeout_V3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetSysDate_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetSysTimeV3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetSysTimeZone_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSetSysTime_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSwitchLauncherV3(Z)V
    .locals 0

    return-void
.end method

.method public disallowSwitchLauncher_v3(Z)V
    .locals 0

    return-void
.end method

.method public disallowUsbDebugging_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowUsbMode_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowWIFIAccessPoint_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowWifiAdvanceSettingsV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowWifiDirectV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowWifiDirect_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowWifiHotspot_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowWifi_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowWifiadvancesettings_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowedBluetoothtethering_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disallowedUSBtethering_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableAirplaneMode(Z)V
    .locals 0

    return-void
.end method

.method public enableAllUnkownsouresV3(Z)V
    .locals 0

    return-void
.end method

.method public enableAutoBrightness(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableBluetoothV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableBluetooth_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableBluetoothtethering_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableCaptureScreenV3(Z)V
    .locals 0

    return-void
.end method

.method public enableCaptureScreen_v3(Z)V
    .locals 0

    return-void
.end method

.method public enableData(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableData_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableDevMode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableDevModeV3(Z)V
    .locals 0

    return-void
.end method

.method public enableDevMode_v3(Z)V
    .locals 0

    return-void
.end method

.method public enableLocationV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableLocation_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableMassStorage(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableNetworkAccess(Z)V
    .locals 0

    return-void
.end method

.method public enableSIM(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableSearch_v3(Z)V
    .locals 0

    return-void
.end method

.method public enableSmartAutoRotation(Z)V
    .locals 0

    return-void
.end method

.method public enableSystemAutoUpdate(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableUSBtethering_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableUnkownSouresV3(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public enableUnkownsources_v3(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public enableUpdateIface(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public enableUsbDebugging(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableWIFIcaptive_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableWifiCaptiveV3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableWifiCaptive_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableWifiHotspot_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableWifi_v3(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public forgetAllConfiguredWiFi()V
    .locals 0

    return-void
.end method

.method public forgetConfiguredWiFi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public fullScreenForever(Z)V
    .locals 0

    return-void
.end method

.method public getAppBlackRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppManageBlackList_v3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppManageWhiteList_v3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppWhiteRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutostartPackageWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBrightness()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public getCustomCHARGE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomFASTBOOT()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomHARDRST()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomOTG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomRecovery_v3()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomSDUPDATE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomSplashPath()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceInfo(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisplayBlacklist_v3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFontSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getInstallPackageBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstallPackageWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkAccessBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkAccessWhitelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersistentAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenTimeOut()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeUsageInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUninstallPackageBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUninstallPackageWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsbCurrentFunctions()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideBackSoftKey(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hideHomeSoftKey(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hideMenuSoftKey(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hideNavigationBar(Z)V
    .locals 0

    return-void
.end method

.method public hideStatusBar(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hideUsbMenu(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledEyeMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIncomingCallDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLicenseKeyEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLocationOpend()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRulesEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOutgoingCallDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPowerKeyDisable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSMSDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSetDatetimeAllowed(Z)V
    .locals 0

    return-void
.end method

.method public isUsbDebuggingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsbOnlyCharging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVolumeKeyDisable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWifiAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public killApplicationProcess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public launchFactoryReset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openLocation(Z)V
    .locals 0

    return-void
.end method

.method public rebootDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseKeyControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAppManageBlackList_v3(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeAppManageWhiteList_v3(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeAutostartPackageWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeDisplayBlacklist_v3(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeInstallPackageBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeInstallPackageWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeNetworkAccessWhitelist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removePersistentAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeUninstallPackageBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeUninstallPackageWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeWiFiConfiguration(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeWifiBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeWifiWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public requestKeyControl(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestKeyControl_V3(IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAlarmVolumeValue_v3(I)V
    .locals 0

    return-void
.end method

.method public setAppOpsPermissions(Z)V
    .locals 0

    return-void
.end method

.method public setAppWhiteWithHash(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setBootTime(ZIIIJ)V
    .locals 0

    return-void
.end method

.method public setBrightness(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setComponentEnabled(Landroid/content/ComponentName;II)V
    .locals 0

    return-void
.end method

.method public setCurrentUsbMode(I)V
    .locals 0

    return-void
.end method

.method public setCustomBootAnim(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCustomCHARGE(Z)V
    .locals 0

    return-void
.end method

.method public setCustomFASTBOOT(Z)V
    .locals 0

    return-void
.end method

.method public setCustomHARDRST(Z)V
    .locals 0

    return-void
.end method

.method public setCustomLauncher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCustomLogo(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCustomOTG(Z)V
    .locals 0

    return-void
.end method

.method public setCustomRecovery_v3(Z)V
    .locals 0

    return-void
.end method

.method public setCustomSDUPDATE(Z)V
    .locals 0

    return-void
.end method

.method public setCustomShutAnim(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCustomSplashPath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDefaultAPN_v3(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDefaultInputMethod(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDefaultUsbMode(I)V
    .locals 0

    return-void
.end method

.method public setDeviceOwner(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayBlacklist(Ljava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayBlacklist_v3(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDisplaySize(I)V
    .locals 0

    return-void
.end method

.method public setEnabledEyeMode(Z)V
    .locals 0

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setLauncher(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setLocationMode(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setLockPassword(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Unresolved compilation problem: \n"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLockScreenMode(I)V
    .locals 0

    return-void
.end method

.method public setMediaVolumeValue_v3(I)V
    .locals 0

    return-void
.end method

.method public setNotificationVolumeValue_v3(I)V
    .locals 0

    return-void
.end method

.method public setPackageEnabled(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setRuntimePermissions(Z)V
    .locals 0

    return-void
.end method

.method public setSafeModeDisabled(Z)V
    .locals 0

    return-void
.end method

.method public setScreenTimeOut(I)V
    .locals 0

    return-void
.end method

.method public setShutDownTime(ZIIIJ)V
    .locals 0

    return-void
.end method

.method public setSleepTimeout_V3(I)V
    .locals 0

    return-void
.end method

.method public setSysDate(III)V
    .locals 0

    return-void
.end method

.method public setSysTime(J)V
    .locals 0

    return-void
.end method

.method public setTimeZone_v3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUsbOnlyCharging(Z)V
    .locals 0

    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setWifiBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setWifiWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setlockInputMethod(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shutdownDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sleepDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uninstallPackage(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public unlockScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public urlBlackListRead()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public urlBlackListWrite(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public urlWhiteListRead()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public urlWhiteListWrite(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public wakeupDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
