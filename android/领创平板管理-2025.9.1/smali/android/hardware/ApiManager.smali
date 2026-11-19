.class public Landroid/hardware/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Landroid/hardware/IApiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/IApiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/hardware/ApiManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    return-void
.end method


# virtual methods
.method public clearAppInstallWhiteList()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->clearAppInstallWhiteList()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getApiVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
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
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getAppInstallWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDDRSize()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getDDRSize()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getFlashSize()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getFlashSize()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getGpsLocation()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getGpsLocation()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getManufacturer()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getModel()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getOsVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getPhoneImei(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->getPhoneImei(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getSerialNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getWifiConnectedSSID()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getWifiConnectedSSID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public isBluetoothEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->isBluetoothEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setAdbEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setAdbEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setAppFreeze(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setAppFreeze(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setAppInstallWhiteList(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setAppInstallWhiteList(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setAppUnFreeze(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setAppUnFreeze(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setBackButtonEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setBackButtonEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setBluetoothEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setBluetoothEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setFactoryRest()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0}, Landroid/hardware/IApiManager;->setFactoryRest()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public setHomeButtonEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setHomeButtonEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setMtpEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setMtpEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setNetworkAccessRule(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setNetworkAccessRule(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setPowerKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setPowerKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setRecentButtonEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setRecentButtonEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setSdcardStorageEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setSdcardStorageEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setSysTime(J)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/IApiManager;->setSysTime(J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setUsbStorageEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setUsbStorageEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setVolumeDownKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setVolumeDownKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setVolumeUpKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1}, Landroid/hardware/IApiManager;->setVolumeUpKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public silentInstall(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/IApiManager;->silentInstall(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public silentUninstall(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/ApiManager;->mService:Landroid/hardware/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/IApiManager;->silentUninstall(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method
