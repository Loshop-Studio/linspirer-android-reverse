.class public Lcom/huawei/android/app/admin/HwDevicePolicyManager;
.super Ljava/lang/Object;
.source "HwDevicePolicyManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HwDevicePolicyManager"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addAllowNotificationApps(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addAllowRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addApn(Landroid/content/ComponentName;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addAppNetworkFilter(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addBrowserWhiteList(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addIPWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addInstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addNetworkAccessAppWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addNetworkAccessWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addPersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public captureScreen(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public cleanAppNetworkFilter(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public cleanBrowserWhiteList(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public cleanForbidCancelDeviceAdminWhitelist(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public cleanForbidKillAppWhitelist(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public cleanLockScreen(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public cleanNetFilter(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public cleanNetworkAccessAppWhiteList(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public cleanNetworkAccessWhiteList(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public clearCustomLauncher(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public clearPackageData(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clearTopSingleApplication(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public configExchangeMailProvider(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public deleteApn(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disInternetPermission(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public disInternetPermissionByMobile(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public disInternetPermissionByWifi(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public disableInstallSource(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public enableInstallPackage(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public getAccessibilityWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllowNotificationApps(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllowRunningApp(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getApnParameter(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBluetoothMacAddressWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBluetoothPairingWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getControlMode(Landroid/content/ComponentName;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCustomSettings(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDialerNumWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisallowedRunningApp(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisallowedUninstallPackageList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getForbidCancelDeviceAdminWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getForbidDeactivateDeviceAdminPackageList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getForbidKillAppWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getGpsStatus(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getIPWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstallPackageBlackList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstallPackageSourceWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstallPackageWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMailProviderForDomain(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMobileBlockList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetFilter(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkAccessAppWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkAccessWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPersistentApp(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPfwWhitePackageList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWiFiConnectWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWifiBlockList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public get_NetFilterString(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hangupCalling(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public installApk(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public installFirmware(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isAdbDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isAppInstallDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isBackButtonDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isBackgroundProcessLimitDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isBluetoothDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isBluetoothSendFileDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isBluetoothTransferFileDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isBootLoaderDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCameraDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDataConnectivityDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDevelopmentSettingsDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDisallowedCloseGps(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDisallowedRunningApp(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isExpandDeviceReadOnlyMode(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isExternalStorageDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEyesProtectionDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFactoryResetDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFastbootDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isGpsDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHomeButtonDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isInstallSourceDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLockScreenDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMtpDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNFCDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNavigationbarDisable(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNotificationBlockForApp(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNotificationDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isOTGUSBDiskDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isOpenSourceLicencesDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isOrdinaryPowerSavingMode(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPersistentApp(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPirvacyProtectionDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPowerKeyDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRecentTaskButtonDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRooted(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSMSDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSafeModeDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isScreenOffDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSelectDebugAppDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isShareInterfaceDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSmsNotificationVibrateDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isStatusBarExpandPanelDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isStatusbarDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isTelephonyDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isTimeModifyDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isTopSingleApplicationMode(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUSBDataDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUSBShareDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUnknownSourceDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUpdateSettingsDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUserTimeoutBroadcastDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isVoiceDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isVolumeKeyDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isWifiAdvancedMenuHidden(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isWifiApDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isWifiDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public killApplicationProcess(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public openMobileData(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public queryApn(Landroid/content/ComponentName;Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public rebootDevice(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public removeAccessibilityWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeAllowNotificationApps(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeAllowRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeDialerNumWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeForbidDeactivateDeviceAdminPackageList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeIPWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeInstallPackageBlackList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeInstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removePersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removePfwWhitePackageList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removeWiFiConnectWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public run_NetFilter_Iptables(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendKeyDownEvent(Landroid/content/ComponentName;I)V
    .locals 0

    return-void
.end method

.method public setAccessibilityWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setAdbDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setAppBlockByMobile(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setAppBlockByWifi(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setAppInstallDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setAppWhite(Landroid/content/ComponentName;ZLjava/util/List;)V
    .locals 0

    return-void
.end method

.method public setApplicationDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setAutoRotationEnabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setBackButtonDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setBackgroundProcessLimitDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setBluetoothDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setBluetoothMacAddressWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setBluetoothPairingWhitelist(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setBluetoothSendFileDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setBluetoothTransferFileDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setBootLoaderDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setControlMode(Landroid/content/ComponentName;I)V
    .locals 0

    return-void
.end method

.method public setCustomLauncher(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCustomSettings(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setDataConnectivityDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setDevelopmentSettingsDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setDeviceAdminActivate(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setDialerNumWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDisallowedCloseGps(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setExpandDeviceReadOnlyMode(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setExternalStorageDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setEyesProtectionDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setFactoryReset(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public setFactoryReset(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setFactoryResetDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setFastbootDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setForbidCancelDeviceAdminWhitelist(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setForbidDeactivateDeviceAdminPackageList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setForbidKillAppWhitelist(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setGpsDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setGpsStatus(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setHomeButtonDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setIPWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setInstallPackageBlackList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setInstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setLockScreenDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setMtpDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setNFCDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setNavigationbarDisable(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setNotificationBlockForApp(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setNotificationDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setOTGUSBDiskDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setOpenSourceLicencesDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setOrdinaryPowerSavingMode(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setPfwWhitePackageList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPirvacyProtectionDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setPowerKeyDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setPreferApn(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setRecentTaskButtonDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setSMSDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setSafeModeDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setScreenOffDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setScreenState(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setSelectDebugAppDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setShareInterfaceDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setSingleAppMode(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setSmsNotificationVibrateDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setStatusBarExpandPanelDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setStatusbarDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setSysTime(Landroid/content/ComponentName;J)V
    .locals 0

    return-void
.end method

.method public setTelephonyDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setTimeModifyDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setTopSingleApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setUSBShareDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setUnknownSourceDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setUpdateSettingsDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setUserTimeoutBroadcastDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setVoiceDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setVolumeKeyDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setWiFiConnectWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setWifiAdvancedMenuHidden(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setWifiApDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setWifiDisabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public shutdownDevice(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public unInstallApk(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public updateApn(Landroid/content/ComponentName;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
