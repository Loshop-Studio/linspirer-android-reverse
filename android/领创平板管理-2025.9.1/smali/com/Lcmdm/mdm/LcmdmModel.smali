.class public Lcom/Lcmdm/mdm/LcmdmModel;
.super Ljava/lang/Object;
.source "LcmdmModel.java"

# interfaces
.implements Lcom/Lcmdm/mdm/IMdmInterface;


# instance fields
.field public mTctmodule:Landroid/os/ITctModule;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tctmodule"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroid/os/ITctModule$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITctModule;

    move-result-object v0

    iput-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tctmodule binder can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->addAppInstallWhiteList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addAppUninstallBlackList(Landroid/content/Context;Ljava/util/List;)Z
    .locals 0
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
    iget-object p1, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/ITctModule;->addAppUninstallBlackList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addPersistentApp(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->addPersistentApp(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public allowAppDisplayOverOtherAppsPermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->allowAppDisplayOverOtherAppsPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public allowAppModifySystemSettingsPermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->allowAppModifySystemSettingsPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public allowAppPermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->allowAppPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public clearAppInstallWhiteList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->clearAppInstallWhiteList()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearLockScreen()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->clearLockScreen()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public clearNetworkWhiteList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->clearNetworkWhiteList()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public clearUidAppList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->clearUidAppList()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->delAppInstallWhiteList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public delAppUninstallBlackList(Landroid/content/Context;Ljava/util/List;)Z
    .locals 0
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
    iget-object p1, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/ITctModule;->delAppUninstallBlackList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public forceStopApp(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->forceStopApp(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->getAppInstallWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->getAppRulePackageList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppUnInstallBlackList(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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
    iget-object p1, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroid/os/ITctModule;->getAppUnInstallBlackList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->getForbidenAppList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->getKeepAliveList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->getMACaddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->getSN()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSuperWhiteListForHwSystemManger()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->getSuperWhiteListForHwSystemManger()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->getWebWhiteList(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hideBackButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setBackGone()Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setBackVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public hideHomeButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setHomeGone()Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setHomeVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public hideTaskButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setRecentGone()Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setRecentVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public isBluetoothDataTransferDisable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->isBluetoothDataTransferDisable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public isBluetoothDisabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->isBluetoothDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public isSMSDisabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->isSMSDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public isUSBDataDisabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->isUSBDataDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUSBOtgDisabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->isUSBOtgDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceIncomingDisabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->isVoiceIncomingDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public isVoiceOutgoingDisabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->isVoiceOutgoingDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public removePersistentApp(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->removePersistentApp(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public removeSuperWhiteListForHwSystemManger(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->removeSuperWhiteListForHwSystemManger(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->removeUidAppList(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public resetFactory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->clearSandbox()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setAppDisable(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setAppEnable(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBackButtonDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setBackDisable()Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setBackEnable()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v1
.end method

.method public setBluetoothDataTransferDisable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setBluetoothDataTransferDisable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setBluetoothDisable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setBluetoothDisable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setBluetoothEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setBluetoothEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setCameraDisable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setCameraDisable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCameraEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setCameraEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCustomSettingsMenu(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "lingchuang"

    .line 2
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setCustomSettingsMenu(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p1, "full"

    .line 3
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setCustomSettingsMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public setDataDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setDataDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public setDeviceShutDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setDeviceShutDown()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setExitMdm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setExitMdm()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setGpsDisable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setGpsDisable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setGpsEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setGpsEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setHomeButtonDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setHomeDisable()Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setHomeEnable()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v1
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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->addPersistentApp(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLongPowerKeyDisable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setLongPowerKeyDisable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLongPowerKeyEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setLongPowerKeyEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setNetFirwall(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setNetFirwall(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/ITctModule;->setNetworkWhiteList(Ljava/util/List;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setNfcDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setNfcDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public setPowerKeyDisable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setPowerKeyDisable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPowerKeyEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setPowerKeyEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSDOTGDisable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setSDOTGDisable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setSDOTGEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setSDOTGEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setSMSDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setSMSDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public setSdcardDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setSDOTGDisable()Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setSDOTGEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public setSuperWhiteListForHwSystemManger(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setSuperWhiteListForHwSystemManger(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setSysTime(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/ITctModule;->setDeviceDate(J)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public setTaskButtonDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setRecentDisable()Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setRecentEnable()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v1
.end method

.method public setUSBDataDisabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setUSBDataDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setUSBDisabled(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setADBDisable()Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setADBEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setUSBOtgDisabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setUSBOtgDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
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
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setUidToAppList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVoiceDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setVoiceDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public setVoiceIncomingDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setVoiceIncomingDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public setVoiceOutgoingDisabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->setVoiceOutgoingDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public setVolAddDisable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setVolAddDisable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVolAddEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setVolAddEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVolSubDisable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setVolSubDisable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVolSubEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setVolSubEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setWifiAdvanceDisable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setWifiAdvanceDisable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setWifiAdvanceEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/os/ITctModule;->setWifiAdvanceEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public silentInstall(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/ITctModule;->silentInstall(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public silentScreenShot(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->silentScreenShot(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public silentUninstall(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Lcmdm/mdm/LcmdmModel;->mTctmodule:Landroid/os/ITctModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ITctModule;->silentUninstall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
