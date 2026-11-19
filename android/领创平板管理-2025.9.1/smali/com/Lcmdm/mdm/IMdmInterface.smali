.class public interface abstract Lcom/Lcmdm/mdm/IMdmInterface;
.super Ljava/lang/Object;
.source "IMdmInterface.java"


# virtual methods
.method public abstract addAppInstallWhiteList(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addAppUninstallBlackList(Landroid/content/Context;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addPersistentApp(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract allowAppDisplayOverOtherAppsPermission(Ljava/lang/String;)Z
.end method

.method public abstract allowAppModifySystemSettingsPermission(Ljava/lang/String;)Z
.end method

.method public abstract allowAppPermission(Ljava/lang/String;)Z
.end method

.method public abstract clearAppInstallWhiteList()Z
.end method

.method public abstract clearLockScreen()Z
.end method

.method public abstract clearNetworkWhiteList()V
.end method

.method public abstract clearUidAppList()V
.end method

.method public abstract delAppInstallWhiteList(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract delAppUninstallBlackList(Landroid/content/Context;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract forceStopApp(Ljava/lang/String;)Z
.end method

.method public abstract getAppInstallWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppRulePackageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppUnInstallBlackList(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForbidenAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeepAliveList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMAC()Ljava/lang/String;
.end method

.method public abstract getSN()Ljava/lang/String;
.end method

.method public abstract getSuperWhiteListForHwSystemManger()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWebWhiteList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hideBackButton(Z)V
.end method

.method public abstract hideHomeButton(Z)V
.end method

.method public abstract hideTaskButton(Z)V
.end method

.method public abstract isBluetoothDataTransferDisable()Z
.end method

.method public abstract isBluetoothDisabled()Z
.end method

.method public abstract isSMSDisabled()Z
.end method

.method public abstract isUSBDataDisabled()Z
.end method

.method public abstract isUSBOtgDisabled()Z
.end method

.method public abstract isVoiceIncomingDisabled()Z
.end method

.method public abstract isVoiceOutgoingDisabled()Z
.end method

.method public abstract removePersistentApp(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract removeSuperWhiteListForHwSystemManger(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract removeUidAppList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetFactory()V
.end method

.method public abstract setAppDisable(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setAppEnable(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setBackButtonDisabled(Z)Z
.end method

.method public abstract setBluetoothDataTransferDisable(Z)V
.end method

.method public abstract setBluetoothDisable()Z
.end method

.method public abstract setBluetoothEnable()Z
.end method

.method public abstract setCameraDisable()Z
.end method

.method public abstract setCameraEnable()Z
.end method

.method public abstract setCustomSettingsMenu(Z)Z
.end method

.method public abstract setDataDisabled(Z)Z
.end method

.method public abstract setDeviceShutDown()Z
.end method

.method public abstract setExitMdm()Z
.end method

.method public abstract setGpsDisable()Z
.end method

.method public abstract setGpsEnable()Z
.end method

.method public abstract setHomeButtonDisabled(Z)Z
.end method

.method public abstract setKeepAliveList(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setLongPowerKeyDisable()Z
.end method

.method public abstract setLongPowerKeyEnable()Z
.end method

.method public abstract setNetFirwall(Z)Z
.end method

.method public abstract setNetworkWhiteList(Ljava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public abstract setNfcDisabled(Z)Z
.end method

.method public abstract setPowerKeyDisable()Z
.end method

.method public abstract setPowerKeyEnable()Z
.end method

.method public abstract setSDOTGDisable()Z
.end method

.method public abstract setSDOTGEnable()Z
.end method

.method public abstract setSMSDisabled(Z)Z
.end method

.method public abstract setSdcardDisabled(Z)Z
.end method

.method public abstract setSuperWhiteListForHwSystemManger(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setSysTime(J)Z
.end method

.method public abstract setTaskButtonDisabled(Z)Z
.end method

.method public abstract setUSBDataDisabled(Z)V
.end method

.method public abstract setUSBDisabled(Z)Z
.end method

.method public abstract setUSBOtgDisabled(Z)V
.end method

.method public abstract setUidToAppList(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setVoiceDisabled(Z)Z
.end method

.method public abstract setVoiceIncomingDisabled(Z)Z
.end method

.method public abstract setVoiceOutgoingDisabled(Z)Z
.end method

.method public abstract setVolAddDisable()Z
.end method

.method public abstract setVolAddEnable()Z
.end method

.method public abstract setVolSubDisable()Z
.end method

.method public abstract setVolSubEnable()Z
.end method

.method public abstract setWifiAdvanceDisable()Z
.end method

.method public abstract setWifiAdvanceEnable()Z
.end method

.method public abstract silentInstall(Ljava/lang/String;Z)Z
.end method

.method public abstract silentScreenShot(Ljava/lang/String;)Z
.end method

.method public abstract silentUninstall(Ljava/lang/String;)Z
.end method
