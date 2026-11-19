.class public Lcom/Lcmdm/mdm/IMdmProxy;
.super Ljava/lang/Object;
.source "IMdmProxy.java"

# interfaces
.implements Lcom/Lcmdm/mdm/IMdmInterface;


# static fields
.field public static basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

.field public static mInstance:Lcom/Lcmdm/mdm/IMdmProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lcom/Lcmdm/mdm/IMdmInterface;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    return-void
.end method

.method public static obtain()Lcom/Lcmdm/mdm/IMdmProxy;
    .locals 2

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->mInstance:Lcom/Lcmdm/mdm/IMdmProxy;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/Lcmdm/mdm/IMdmProxy;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/Lcmdm/mdm/IMdmProxy;->mInstance:Lcom/Lcmdm/mdm/IMdmProxy;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/Lcmdm/mdm/IMdmProxy;

    invoke-direct {v1}, Lcom/Lcmdm/mdm/IMdmProxy;-><init>()V

    sput-object v1, Lcom/Lcmdm/mdm/IMdmProxy;->mInstance:Lcom/Lcmdm/mdm/IMdmProxy;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->mInstance:Lcom/Lcmdm/mdm/IMdmProxy;

    return-object v0
.end method


# virtual methods
.method public addAppInstallWhiteList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->addAppInstallWhiteList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public addAppUninstallBlackList(Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1, p2}, Lcom/Lcmdm/mdm/IMdmInterface;->addAppUninstallBlackList(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public addPersistentApp(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->addPersistentApp(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public allowAppDisplayOverOtherAppsPermission(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->allowAppDisplayOverOtherAppsPermission(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public allowAppModifySystemSettingsPermission(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->allowAppModifySystemSettingsPermission(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public allowAppPermission(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->allowAppPermission(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearAppInstallWhiteList()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->clearAppInstallWhiteList()Z

    move-result v0

    return v0
.end method

.method public clearLockScreen()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->clearLockScreen()Z

    move-result v0

    return v0
.end method

.method public clearNetworkWhiteList()V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->clearNetworkWhiteList()V

    return-void
.end method

.method public clearUidAppList()V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->clearUidAppList()V

    return-void
.end method

.method public delAppInstallWhiteList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->delAppInstallWhiteList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public delAppUninstallBlackList(Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1, p2}, Lcom/Lcmdm/mdm/IMdmInterface;->delAppUninstallBlackList(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public forceStopApp(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->forceStopApp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAppInstallWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->getAppInstallWhiteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppRulePackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->getAppRulePackageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppUnInstallBlackList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->getAppUnInstallBlackList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getForbidenAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->getForbidenAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAliveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->getKeepAliveList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->getMAC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperWhiteListForHwSystemManger()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->getSuperWhiteListForHwSystemManger()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebWhiteList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->getWebWhiteList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hideBackButton(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->hideBackButton(Z)V

    return-void
.end method

.method public hideHomeButton(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->hideHomeButton(Z)V

    return-void
.end method

.method public hideTaskButton(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->hideTaskButton(Z)V

    return-void
.end method

.method public isBluetoothDataTransferDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->isBluetoothDataTransferDisable()Z

    move-result v0

    return v0
.end method

.method public isBluetoothDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->isBluetoothDisabled()Z

    move-result v0

    return v0
.end method

.method public isSMSDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->isSMSDisabled()Z

    move-result v0

    return v0
.end method

.method public isUSBDataDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->isUSBDataDisabled()Z

    move-result v0

    return v0
.end method

.method public isUSBOtgDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->isUSBOtgDisabled()Z

    move-result v0

    return v0
.end method

.method public isVoiceIncomingDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->isVoiceIncomingDisabled()Z

    move-result v0

    return v0
.end method

.method public isVoiceOutgoingDisabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->isVoiceOutgoingDisabled()Z

    move-result v0

    return v0
.end method

.method public removePersistentApp(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->removePersistentApp(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeSuperWhiteListForHwSystemManger(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->removeSuperWhiteListForHwSystemManger(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeUidAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->removeUidAppList(Ljava/util/List;)V

    return-void
.end method

.method public resetFactory()V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->resetFactory()V

    return-void
.end method

.method public setAppDisable(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setAppDisable(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setAppEnable(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setAppEnable(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setBackButtonDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setBackButtonDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setBluetoothDataTransferDisable(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setBluetoothDataTransferDisable(Z)V

    return-void
.end method

.method public setBluetoothDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setBluetoothDisable()Z

    move-result v0

    return v0
.end method

.method public setBluetoothEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setBluetoothEnable()Z

    move-result v0

    return v0
.end method

.method public setCameraDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setCameraDisable()Z

    move-result v0

    return v0
.end method

.method public setCameraEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setCameraEnable()Z

    move-result v0

    return v0
.end method

.method public setCustomSettingsMenu(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setCustomSettingsMenu(Z)Z

    move-result p1

    return p1
.end method

.method public setDataDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setDataDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setDeviceShutDown()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setDeviceShutDown()Z

    move-result v0

    return v0
.end method

.method public setExitMdm()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setExitMdm()Z

    move-result v0

    return v0
.end method

.method public setGpsDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setGpsDisable()Z

    move-result v0

    return v0
.end method

.method public setGpsEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setGpsEnable()Z

    move-result v0

    return v0
.end method

.method public setHomeButtonDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setHomeButtonDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setKeepAliveList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setKeepAliveList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setLongPowerKeyDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setLongPowerKeyDisable()Z

    move-result v0

    return v0
.end method

.method public setLongPowerKeyEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setLongPowerKeyEnable()Z

    move-result v0

    return v0
.end method

.method public setNetFirwall(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setNetFirwall(Z)Z

    move-result p1

    return p1
.end method

.method public setNetworkWhiteList(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1, p2}, Lcom/Lcmdm/mdm/IMdmInterface;->setNetworkWhiteList(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method

.method public setNfcDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setNfcDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setPowerKeyDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setPowerKeyDisable()Z

    move-result v0

    return v0
.end method

.method public setPowerKeyEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setPowerKeyEnable()Z

    move-result v0

    return v0
.end method

.method public setSDOTGDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setSDOTGDisable()Z

    move-result v0

    return v0
.end method

.method public setSDOTGEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setSDOTGEnable()Z

    move-result v0

    return v0
.end method

.method public setSMSDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setSMSDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setSdcardDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setSdcardDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setSuperWhiteListForHwSystemManger(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setSuperWhiteListForHwSystemManger(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setSysTime(J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1, p2}, Lcom/Lcmdm/mdm/IMdmInterface;->setSysTime(J)Z

    move-result p1

    return p1
.end method

.method public setTaskButtonDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setTaskButtonDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setUSBDataDisabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setUSBDataDisabled(Z)V

    return-void
.end method

.method public setUSBDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setUSBDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setUSBOtgDisabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setUSBOtgDisabled(Z)V

    return-void
.end method

.method public setUidToAppList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setUidToAppList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setVoiceDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setVoiceDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setVoiceIncomingDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setVoiceIncomingDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setVoiceOutgoingDisabled(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->setVoiceOutgoingDisabled(Z)Z

    move-result p1

    return p1
.end method

.method public setVolAddDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setVolAddDisable()Z

    move-result v0

    return v0
.end method

.method public setVolAddEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setVolAddEnable()Z

    move-result v0

    return v0
.end method

.method public setVolSubDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setVolSubDisable()Z

    move-result v0

    return v0
.end method

.method public setVolSubEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setVolSubEnable()Z

    move-result v0

    return v0
.end method

.method public setWifiAdvanceDisable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setWifiAdvanceDisable()Z

    move-result v0

    return v0
.end method

.method public setWifiAdvanceEnable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0}, Lcom/Lcmdm/mdm/IMdmInterface;->setWifiAdvanceEnable()Z

    move-result v0

    return v0
.end method

.method public silentInstall(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1, p2}, Lcom/Lcmdm/mdm/IMdmInterface;->silentInstall(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public silentScreenShot(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->silentScreenShot(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public silentUninstall(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/Lcmdm/mdm/IMdmProxy;->basemdm:Lcom/Lcmdm/mdm/IMdmInterface;

    invoke-interface {v0, p1}, Lcom/Lcmdm/mdm/IMdmInterface;->silentUninstall(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
