.class public interface abstract Landroid/os/IApiManager;
.super Ljava/lang/Object;
.source "IApiManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IApiManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract AccessibilityServiceEnable(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public abstract AirPlaneOptionIsVisible()Z
.end method

.method public abstract AirPlaneOptionVisible(Z)I
.end method

.method public abstract ApiVersion()Ljava/lang/String;
.end method

.method public abstract AppAccessEnable(Z)I
.end method

.method public abstract AppAccessMobile(Ljava/lang/String;Z)I
.end method

.method public abstract AppAccessWlan(Ljava/lang/String;Z)I
.end method

.method public abstract AppAliveListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppAliveListClear()I
.end method

.method public abstract AppAliveListDel(Ljava/lang/String;)I
.end method

.method public abstract AppAliveListEnable(Z)I
.end method

.method public abstract AppAliveListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppAliveListIsEnable()Z
.end method

.method public abstract AppAliveListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppAliveListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppAllRunningGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppCacheClear(Ljava/lang/String;)I
.end method

.method public abstract AppCapScreenPermissionListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppCapScreenPermissionListClear()I
.end method

.method public abstract AppCapScreenPermissionListDel(Ljava/lang/String;)I
.end method

.method public abstract AppCapScreenPermissionListEnable(Z)I
.end method

.method public abstract AppCapScreenPermissionListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppCapScreenPermissionListIsEnable()Z
.end method

.method public abstract AppCapScreenPermissionListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppCapScreenPermissionListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppDataClear(Ljava/lang/String;)I
.end method

.method public abstract AppDetailOptionIsVisible()Z
.end method

.method public abstract AppDetailOptionVisible(Z)I
.end method

.method public abstract AppDisableSet(Ljava/lang/String;)I
.end method

.method public abstract AppEnableSet(Ljava/lang/String;)I
.end method

.method public abstract AppForceStart(Ljava/lang/String;)I
.end method

.method public abstract AppForceStop(Ljava/lang/String;)I
.end method

.method public abstract AppFreezeListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppFreezeListClear()I
.end method

.method public abstract AppFreezeListDel(Ljava/lang/String;)I
.end method

.method public abstract AppFreezeListEnable(Z)I
.end method

.method public abstract AppFreezeListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppFreezeListIsEnable()Z
.end method

.method public abstract AppFreezeListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppFreezeListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppGrantAllPermission(Ljava/lang/String;Z)I
.end method

.method public abstract AppGrantUsageStatePermission(Ljava/lang/String;Z)I
.end method

.method public abstract AppInstallBlackListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppInstallBlackListClear()I
.end method

.method public abstract AppInstallBlackListDel(Ljava/lang/String;)I
.end method

.method public abstract AppInstallBlackListEnable(Z)I
.end method

.method public abstract AppInstallBlackListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppInstallBlackListIsEnable()Z
.end method

.method public abstract AppInstallBlackListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppInstallBlackListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppInstallWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppInstallWhiteListClear()I
.end method

.method public abstract AppInstallWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract AppInstallWhiteListEnable(Z)I
.end method

.method public abstract AppInstallWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppInstallWhiteListIsEnable()Z
.end method

.method public abstract AppInstallWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppInstallWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppManualInstallEnable(Z)I
.end method

.method public abstract AppManualInstallIsEnable()Z
.end method

.method public abstract AppNetworkBlackListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppNetworkBlackListClear()I
.end method

.method public abstract AppNetworkBlackListDel(Ljava/lang/String;)I
.end method

.method public abstract AppNetworkBlackListEnable(Z)I
.end method

.method public abstract AppNetworkBlackListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppNetworkBlackListIsEnable()Z
.end method

.method public abstract AppNetworkBlackListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppNetworkBlackListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppNetworkWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppNetworkWhiteListClear()I
.end method

.method public abstract AppNetworkWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract AppNetworkWhiteListEnable(Z)I
.end method

.method public abstract AppNetworkWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppNetworkWhiteListIsEnable()Z
.end method

.method public abstract AppNetworkWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppNetworkWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppNotifyWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppNotifyWhiteListClear()I
.end method

.method public abstract AppNotifyWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract AppNotifyWhiteListEnable(Z)I
.end method

.method public abstract AppNotifyWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppNotifyWhiteListIsEnable()Z
.end method

.method public abstract AppNotifyWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppNotifyWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppSilentInstall(Ljava/lang/String;Z)I
.end method

.method public abstract AppSilentInstallPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public abstract AppSilentUninstall(Ljava/lang/String;Z)I
.end method

.method public abstract AppTopRunningGet()Ljava/lang/String;
.end method

.method public abstract AppTrustedListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppTrustedListClear()I
.end method

.method public abstract AppTrustedListDel(Ljava/lang/String;)I
.end method

.method public abstract AppTrustedListEnable(Z)I
.end method

.method public abstract AppTrustedListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppTrustedListIsEnable()Z
.end method

.method public abstract AppTrustedListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppTrustedListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppUnBlockNetworkWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppUnBlockNetworkWhiteListClear()I
.end method

.method public abstract AppUnBlockNetworkWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract AppUnBlockNetworkWhiteListEnable(Z)I
.end method

.method public abstract AppUnBlockNetworkWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppUnBlockNetworkWhiteListIsEnable()Z
.end method

.method public abstract AppUnBlockNetworkWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppUnBlockNetworkWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppUnFreezeListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppUnFreezeListClear()I
.end method

.method public abstract AppUnFreezeListDel(Ljava/lang/String;)I
.end method

.method public abstract AppUnFreezeListEnable(Z)I
.end method

.method public abstract AppUnFreezeListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppUnFreezeListIsEnable()Z
.end method

.method public abstract AppUnFreezeListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppUnFreezeListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppUninstallBlackListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppUninstallBlackListClear()I
.end method

.method public abstract AppUninstallBlackListDel(Ljava/lang/String;)I
.end method

.method public abstract AppUninstallBlackListEnable(Z)I
.end method

.method public abstract AppUninstallBlackListIsEnable()Z
.end method

.method public abstract AppUninstallBlackListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppUninstallBlackListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppUninstallWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract AppUninstallWhiteListClear()I
.end method

.method public abstract AppUninstallWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract AppUninstallWhiteListEnable(Z)I
.end method

.method public abstract AppUninstallWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AppUninstallWhiteListIsEnable()Z
.end method

.method public abstract AppUninstallWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract AppUninstallWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract ApppUninstallBlackListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract AutoBrightnessEnable(Z)I
.end method

.method public abstract AutoBrightnessIsEnable()Z
.end method

.method public abstract BackKeyEnable(Z)I
.end method

.method public abstract BackKeyIsEnable()Z
.end method

.method public abstract BluetoothBlackListAdd(Ljava/lang/String;)I
.end method

.method public abstract BluetoothBlackListClear()I
.end method

.method public abstract BluetoothBlackListDel(Ljava/lang/String;)I
.end method

.method public abstract BluetoothBlackListEnable(Z)I
.end method

.method public abstract BluetoothBlackListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract BluetoothBlackListIsEnable()Z
.end method

.method public abstract BluetoothBlackListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract BluetoothBlackListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract BluetoothEnable(Z)I
.end method

.method public abstract BluetoothFirewallEnable(Z)I
.end method

.method public abstract BluetoothFirewallIsEnable()Z
.end method

.method public abstract BluetoothFirewallTypeGet()I
.end method

.method public abstract BluetoothFirewallTypeSet(I)I
.end method

.method public abstract BluetoothIsEnable()Z
.end method

.method public abstract BluetoothOpen(Z)I
.end method

.method public abstract BluetoothTransEnable(Z)I
.end method

.method public abstract BluetoothTransIsEnable()Z
.end method

.method public abstract BluetoothWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract BluetoothWhiteListClear()I
.end method

.method public abstract BluetoothWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract BluetoothWhiteListEnable(Z)I
.end method

.method public abstract BluetoothWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract BluetoothWhiteListIsEnable()Z
.end method

.method public abstract BluetoothWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract BluetoothWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract BrowserWhiteListClear()I
.end method

.method public abstract BrowserWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract BrowserWhiteListEnable(Z)I
.end method

.method public abstract BrowserWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract BrowserWhiteListIsEnable()Z
.end method

.method public abstract BrowserWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract BrowserWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract BrowserWhiteListadd(Ljava/lang/String;)I
.end method

.method public abstract CameraEnable(Z)I
.end method

.method public abstract CameraIsEnable()Z
.end method

.method public abstract CameraPhotoShutterSoundEnable(Z)I
.end method

.method public abstract CameraPhotoShutterSoundIsEnable()Z
.end method

.method public abstract CameraVideoShutterSoundEnable(Z)I
.end method

.method public abstract CameraVideoShutterSoundIsEnable()Z
.end method

.method public abstract DefAirPlaneEnable(Z)I
.end method

.method public abstract DefAirPlaneIsEnable()Z
.end method

.method public abstract DefApnEnable(Z)I
.end method

.method public abstract DefApnIsEnable()Z
.end method

.method public abstract DefAutoTimeEnable(Z)I
.end method

.method public abstract DefBatterySaverEnable(Z)I
.end method

.method public abstract DefBatterySaverIsEnable()Z
.end method

.method public abstract DefBrowserClear()I
.end method

.method public abstract DefBrowserSet(Ljava/lang/String;)I
.end method

.method public abstract DefClipboardEnable(Z)I
.end method

.method public abstract DefClipboardIsEnable()Z
.end method

.method public abstract DefDeviceAdminActive(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract DefDeviceOwner(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract DefFactoryResetEnable(Z)I
.end method

.method public abstract DefFactoryResetIsEnable()Z
.end method

.method public abstract DefFileShareEnable(Z)I
.end method

.method public abstract DefFileShareIsEnable()Z
.end method

.method public abstract DefGpsLocationEnable(Z)I
.end method

.method public abstract DefGpsLocationIsEnable()Z
.end method

.method public abstract DefHomeLauncherClear()I
.end method

.method public abstract DefHomeLauncherSet(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract DefInputMethodClear()I
.end method

.method public abstract DefInputMethodSet(Ljava/lang/String;)I
.end method

.method public abstract DefInstallUnknownApkEnable(Z)I
.end method

.method public abstract DefInstallUnknownApkIsEnable()Z
.end method

.method public abstract DefLockScreenEnable(Z)I
.end method

.method public abstract DefLockScreenIsEnable()Z
.end method

.method public abstract DefLockScreenNotifyEnable(Z)I
.end method

.method public abstract DefLockScreenNotifyIsEnable()Z
.end method

.method public abstract DefMultiUserEnable(Z)I
.end method

.method public abstract DefMultiUserIsEnable()Z
.end method

.method public abstract DefNoColorReadEnable(Z)I
.end method

.method public abstract DefNoColorReadIsEnable()Z
.end method

.method public abstract DefNotifySendEnable(Z)I
.end method

.method public abstract DefNotifySendIsEnable()Z
.end method

.method public abstract DefOtaUpdateEnable(Z)I
.end method

.method public abstract DefOtaUpdateIsEnable()Z
.end method

.method public abstract DefPowerOffEnable(Z)I
.end method

.method public abstract DefPowerOffIsEnable()Z
.end method

.method public abstract DefPowerSleepEnable(Z)I
.end method

.method public abstract DefPowerSleepIsEnable()Z
.end method

.method public abstract DefSafeModeEnable(Z)I
.end method

.method public abstract DefSafeModeIsEnable()Z
.end method

.method public abstract DefScreenColorAdjustEnable(ZI)I
.end method

.method public abstract DefScreenColorAdjustIsEnable()Z
.end method

.method public abstract DefScreenShotEnable(Z)I
.end method

.method public abstract DefScreenShotIsEnable()Z
.end method

.method public abstract DefShutdownRebootEnable(Z)I
.end method

.method public abstract DefShutdownRebootIsEnable()Z
.end method

.method public abstract DefSystemSettingEnable(Z)I
.end method

.method public abstract DefSystemSettingIsEnable()Z
.end method

.method public abstract DefSystemUpdateEnable(Z)I
.end method

.method public abstract DefTimeSetEnable(Z)I
.end method

.method public abstract DefUnknowSourceDetailEnable(Z)I
.end method

.method public abstract DefUnknowSourceDetailIsEnable()Z
.end method

.method public abstract DefVideoPlayerClear()I
.end method

.method public abstract DefVideoPlayerSet(Ljava/lang/String;)I
.end method

.method public abstract DefVolumeAdjustEnable(Z)I
.end method

.method public abstract DefVolumeAdjustIsEnable()Z
.end method

.method public abstract DevelopmentOptionIsVisible()Z
.end method

.method public abstract DevelopmentOptionVisible(Z)I
.end method

.method public abstract DistanceProtectionEnable(Z)I
.end method

.method public abstract DistanceProtectionIsEnable()Z
.end method

.method public abstract ExternalStorageEnable(Z)I
.end method

.method public abstract ExternalStorageIsEnable()Z
.end method

.method public abstract EyeComfortEnable(Z)I
.end method

.method public abstract EyeComfortIsEnable()Z
.end method

.method public abstract FatigueAlertEnable(ZI)I
.end method

.method public abstract FatigueAlertIsEnable()Z
.end method

.method public abstract FirmwareVersionGet()Ljava/lang/String;
.end method

.method public abstract GlobalNetworkBlackListAdd(Ljava/lang/String;)I
.end method

.method public abstract GlobalNetworkBlackListClear()I
.end method

.method public abstract GlobalNetworkBlackListDel(Ljava/lang/String;)I
.end method

.method public abstract GlobalNetworkBlackListEnable(Z)I
.end method

.method public abstract GlobalNetworkBlackListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract GlobalNetworkBlackListIsEnable()Z
.end method

.method public abstract GlobalNetworkBlackListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract GlobalNetworkBlackListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract GlobalNetworkWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract GlobalNetworkWhiteListClear()I
.end method

.method public abstract GlobalNetworkWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract GlobalNetworkWhiteListEnable(Z)I
.end method

.method public abstract GlobalNetworkWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract GlobalNetworkWhiteListIsEnable()Z
.end method

.method public abstract GlobalNetworkWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract GlobalNetworkWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract GpsLocationIsOn()Z
.end method

.method public abstract GpsLocationOn(Z)I
.end method

.method public abstract HeadsetEnable(Z)I
.end method

.method public abstract HeadsetIsEnable()Z
.end method

.method public abstract HomeKeyEnable(Z)I
.end method

.method public abstract HomeKeyIsEnable()Z
.end method

.method public abstract MMSReceiveEnable(Z)I
.end method

.method public abstract MMSReceiveIsEnable()Z
.end method

.method public abstract MMSSendEnable(Z)I
.end method

.method public abstract MMSSendIsEnable()Z
.end method

.method public abstract MenuKeyEnable(Z)I
.end method

.method public abstract MenuKeyIsEnable()Z
.end method

.method public abstract MicphoneEnable(Z)I
.end method

.method public abstract MicphoneIsEnable()Z
.end method

.method public abstract MobileDataConnectivityEnable(Z)I
.end method

.method public abstract MobileDataConnectivityIsEnable()Z
.end method

.method public abstract MobileDataIsOn()Z
.end method

.method public abstract MobileDataOn(Z)I
.end method

.method public abstract NavBackButtonEnable(Z)I
.end method

.method public abstract NavBackButtonIsEnable()Z
.end method

.method public abstract NavBackButtonVisible(Z)I
.end method

.method public abstract NavBarHide()I
.end method

.method public abstract NavBarIsShow()Z
.end method

.method public abstract NavBarShow()I
.end method

.method public abstract NavHomeButtonEnable(Z)I
.end method

.method public abstract NavHomeButtonIsEnable()Z
.end method

.method public abstract NavHomeButtonVisible(Z)I
.end method

.method public abstract NavMenuButtonVisible(Z)I
.end method

.method public abstract NavRecentButtonEnable(Z)I
.end method

.method public abstract NavRecentButtonIsEnable()Z
.end method

.method public abstract NavRecentButtonVisible(Z)I
.end method

.method public abstract NavScreenshotButtonVisible(Z)I
.end method

.method public abstract NavVolumeDownButtonVisible(Z)I
.end method

.method public abstract NavVolumeUpButtonVisible(Z)I
.end method

.method public abstract NetworkAccessEnable(Z)I
.end method

.method public abstract NetworkFirewallEnable(Z)I
.end method

.method public abstract NetworkFirewallIsEnable()Z
.end method

.method public abstract NetworkFirewallTypeGet()I
.end method

.method public abstract NetworkFirewallTypeSet(I)I
.end method

.method public abstract NetworkFirewallWorkTypeGet()I
.end method

.method public abstract NetworkFirewallWorkTypeSet(I)I
.end method

.method public abstract NetworkResetOptionIsVisible()Z
.end method

.method public abstract NetworkResetOptionVisible(Z)I
.end method

.method public abstract PhoneCallBlackListAdd(Ljava/lang/String;)I
.end method

.method public abstract PhoneCallBlackListClear()I
.end method

.method public abstract PhoneCallBlackListDel(Ljava/lang/String;)I
.end method

.method public abstract PhoneCallBlackListEnable(Z)I
.end method

.method public abstract PhoneCallBlackListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract PhoneCallBlackListIsEnable()Z
.end method

.method public abstract PhoneCallBlackListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract PhoneCallEnable(Z)I
.end method

.method public abstract PhoneCallIsEnable()Z
.end method

.method public abstract PhoneCallWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract PhoneCallWhiteListClear()I
.end method

.method public abstract PhoneCallWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract PhoneCallWhiteListEnable(Z)I
.end method

.method public abstract PhoneCallWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract PhoneCallWhiteListIsEnable()Z
.end method

.method public abstract PhoneCallWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract PhoneNumerGet(I)Ljava/lang/String;
.end method

.method public abstract PhoneVoiceInEnable(Z)I
.end method

.method public abstract PhoneVoiceInIsEnable()Z
.end method

.method public abstract PhoneVoiceOutEnable(Z)I
.end method

.method public abstract PhoneVoiceOutIsEnable()Z
.end method

.method public abstract PlatformNameGet()Ljava/lang/String;
.end method

.method public abstract PowerKeyEnable(Z)I
.end method

.method public abstract PowerKeyIsEnable()Z
.end method

.method public abstract PowerKeyLongPressEnable(Z)I
.end method

.method public abstract PowerKeyLongPressIsEnable()Z
.end method

.method public abstract PowerKeyShortPressEnable(Z)I
.end method

.method public abstract PowerKeyShortPressIsEnable()Z
.end method

.method public abstract ProjectNameGet()Ljava/lang/String;
.end method

.method public abstract RecentKeyEnable(Z)I
.end method

.method public abstract RecentKeyIsEnable()Z
.end method

.method public abstract RecentTaskAllClear()I
.end method

.method public abstract ReverseAlertEnable(Z)I
.end method

.method public abstract ReverseAlertIsEnable()Z
.end method

.method public abstract SMSEnable(Z)I
.end method

.method public abstract SMSIsEnable()Z
.end method

.method public abstract SdcardStorageEnable(Z)I
.end method

.method public abstract SdcardStorageIsEnable()Z
.end method

.method public abstract SettingAllOptionIsVisible()Z
.end method

.method public abstract SettingAllOptionVisible(Z)I
.end method

.method public abstract SettingOptionIsVisible(I)Z
.end method

.method public abstract SettingOptionVisible(IZ)I
.end method

.method public abstract SettingSearchOptionIsVisible()Z
.end method

.method public abstract SettingSearchOptionVisible(Z)I
.end method

.method public abstract ShakeAlertEnable(Z)I
.end method

.method public abstract ShakeAlertIsEnable()Z
.end method

.method public abstract SimEnable(Z)I
.end method

.method public abstract SimImeiGet(I)Ljava/lang/String;
.end method

.method public abstract SimImeiNumGet()I
.end method

.method public abstract SimIsEnable()Z
.end method

.method public abstract SimSlotNumGet()I
.end method

.method public abstract StatusBarDropEnable(Z)I
.end method

.method public abstract StatusBarDropIsEnable()Z
.end method

.method public abstract StatusBarExpandPanelEnable(Z)I
.end method

.method public abstract StatusBarExpandPanelIsEnable()Z
.end method

.method public abstract StatusBarHide()I
.end method

.method public abstract StatusBarNotifyEnable(Z)I
.end method

.method public abstract StatusBarNotifyIsEnable()Z
.end method

.method public abstract StatusBarShow()I
.end method

.method public abstract StatusbarIsShow()Z
.end method

.method public abstract SysBacklightEnable(Z)I
.end method

.method public abstract SysBacklightIsEnable()Z
.end method

.method public abstract SysBacklightValAdjust(I)I
.end method

.method public abstract SysBootanimationClear()I
.end method

.method public abstract SysBootanimationSet(Ljava/lang/String;)I
.end method

.method public abstract SysDateSet(III)I
.end method

.method public abstract SysDateTimeSet(IIIIII)I
.end method

.method public abstract SysDisplayDensityGet(I)I
.end method

.method public abstract SysDisplaySizeGet()I
.end method

.method public abstract SysDisplaySizeSet(I)I
.end method

.method public abstract SysFaceRecognition()I
.end method

.method public abstract SysFactoryRest()I
.end method

.method public abstract SysFontSizeGet()I
.end method

.method public abstract SysFontSizeSet(I)I
.end method

.method public abstract SysFontSizeValueSet(F)I
.end method

.method public abstract SysGoSleep()I
.end method

.method public abstract SysIsRoot()Z
.end method

.method public abstract SysLockPassword(Ljava/lang/String;)I
.end method

.method public abstract SysMemoryClear()I
.end method

.method public abstract SysPowerSaveMode(I)I
.end method

.method public abstract SysReboot()I
.end method

.method public abstract SysRoot(Z)I
.end method

.method public abstract SysScheduledPowerOff(Z)I
.end method

.method public abstract SysScheduledPowerOn(Z)I
.end method

.method public abstract SysScheduledTimePowerOff(ZIIZZZZZZZ)I
.end method

.method public abstract SysScheduledTimePowerOn(ZIIZZZZZZZ)I
.end method

.method public abstract SysScreenLock()I
.end method

.method public abstract SysScreenLockClear()I
.end method

.method public abstract SysScreenLockType(I)I
.end method

.method public abstract SysScreenOff()I
.end method

.method public abstract SysScreenOn()I
.end method

.method public abstract SysScreenRecordStart(Z)I
.end method

.method public abstract SysScreenRecordStop()Ljava/lang/String;
.end method

.method public abstract SysScreenUnLock()I
.end method

.method public abstract SysScreenshot(Ljava/lang/String;)I
.end method

.method public abstract SysScreenshotBmp()Landroid/graphics/Bitmap;
.end method

.method public abstract SysScreenshotPath()Ljava/lang/String;
.end method

.method public abstract SysSerialnoGet()Ljava/lang/String;
.end method

.method public abstract SysShutdown()I
.end method

.method public abstract SysTimeSet(III)I
.end method

.method public abstract SysTimeStampSet(J)I
.end method

.method public abstract SysVolumeMuteEnable(Z)I
.end method

.method public abstract SysVolumeMuteIsEnable()Z
.end method

.method public abstract SysWakeUp()I
.end method

.method public abstract SysZenModeOn(Z)I
.end method

.method public abstract TouchScreenEnable(Z)I
.end method

.method public abstract TouchScreenIsEnable()Z
.end method

.method public abstract UsbDebugEnable(Z)I
.end method

.method public abstract UsbDebugIsEnable()Z
.end method

.method public abstract UsbMtpEnable(Z)I
.end method

.method public abstract UsbMtpIsEnable()Z
.end method

.method public abstract UsbOtgEnable(Z)I
.end method

.method public abstract UsbOtgIsEnable()Z
.end method

.method public abstract UsbStorageEnable(Z)I
.end method

.method public abstract UsbStorageIsEnable()Z
.end method

.method public abstract VolumeDownKeyEnable(Z)I
.end method

.method public abstract VolumeDownKeyIsEnable()Z
.end method

.method public abstract VolumeKeyEnable(Z)I
.end method

.method public abstract VolumeKeyIsEnable()Z
.end method

.method public abstract VolumeUpKeyEnable(Z)I
.end method

.method public abstract VolumeUpKeyIsEnable()Z
.end method

.method public abstract VpnOptionIsVisible()Z
.end method

.method public abstract VpnOptionVisible(Z)I
.end method

.method public abstract WifiAdvanceOptionIsVisible()Z
.end method

.method public abstract WifiAdvanceOptionVisible(Z)I
.end method

.method public abstract WifiBlackListAdd(Ljava/lang/String;)I
.end method

.method public abstract WifiBlackListClear()I
.end method

.method public abstract WifiBlackListDel(Ljava/lang/String;)I
.end method

.method public abstract WifiBlackListEnable(Z)I
.end method

.method public abstract WifiBlackListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract WifiBlackListIsEnable()Z
.end method

.method public abstract WifiBlackListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract WifiBlackListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract WifiConfigurationClear()I
.end method

.method public abstract WifiConfigurationDel(Ljava/lang/String;)I
.end method

.method public abstract WifiConnectSSID(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract WifiDirectEnable(Z)I
.end method

.method public abstract WifiDirectIsEnable()Z
.end method

.method public abstract WifiEnable(Z)I
.end method

.method public abstract WifiFirewallEnable(Z)I
.end method

.method public abstract WifiFirewallIsEnable()Z
.end method

.method public abstract WifiFirewallTypeGet()I
.end method

.method public abstract WifiFirewallTypeSet(I)I
.end method

.method public abstract WifiIsEnable()Z
.end method

.method public abstract WifiMacGet()Ljava/lang/String;
.end method

.method public abstract WifiOpen(Z)I
.end method

.method public abstract WifiWhiteListAdd(Ljava/lang/String;)I
.end method

.method public abstract WifiWhiteListClear()I
.end method

.method public abstract WifiWhiteListDel(Ljava/lang/String;)I
.end method

.method public abstract WifiWhiteListEnable(Z)I
.end method

.method public abstract WifiWhiteListGet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract WifiWhiteListIsEnable()Z
.end method

.method public abstract WifiWhiteListRemove(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract WifiWhiteListSet(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method
