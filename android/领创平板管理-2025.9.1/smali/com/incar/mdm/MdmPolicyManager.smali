.class public Lcom/incar/mdm/MdmPolicyManager;
.super Ljava/lang/Object;
.source "MdmPolicyManager.java"


# static fields
.field public static final API:Ljava/lang/String; = "api"


# instance fields
.field public final mApiManager:Landroid/hardware/ApiManager;

.field public sMdmEnableFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/incar/mdm/MdmPolicyManager;->sMdmEnableFlag:Z

    const-string v0, "api"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/ApiManager;

    iput-object p1, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    return-void
.end method


# virtual methods
.method public clearAppInstallWhiteList()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->clearAppInstallWhiteList()I

    move-result v0

    return v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getApiVersion()Ljava/lang/String;

    move-result-object v0

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
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getAppInstallWhiteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDDRSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getDDRSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getFlashSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpsLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getGpsLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneImei(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->getPhoneImei(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiConnectedSSID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getWifiConnectedSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBluetoothEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->isBluetoothEnable()Z

    move-result v0

    return v0
.end method

.method public setAdbEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setAdbEnable(Z)I

    move-result p1

    return p1
.end method

.method public setAppFreeze(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setAppFreeze(Ljava/lang/String;)I

    move-result p1

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
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setAppInstallWhiteList(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public setAppUnFreeze(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setAppUnFreeze(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setBackButtonEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setBackButtonEnable(Z)I

    move-result p1

    return p1
.end method

.method public setBluetoothEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setBluetoothEnable(Z)I

    move-result p1

    return p1
.end method

.method public setFactoryRest()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/ApiManager;->setFactoryRest()I

    move-result v0

    return v0
.end method

.method public setHomeButtonEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setHomeButtonEnable(Z)I

    move-result p1

    return p1
.end method

.method public setMtpEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setMtpEnable(Z)I

    move-result p1

    return p1
.end method

.method public setNetworkAccessRule(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setNetworkAccessRule(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPowerKeyEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setPowerKeyEnable(Z)I

    move-result p1

    return p1
.end method

.method public setRecentButtonEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setRecentButtonEnable(Z)I

    move-result p1

    return p1
.end method

.method public setSdcardStorageEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setSdcardStorageEnable(Z)I

    move-result p1

    return p1
.end method

.method public setSysTime(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/ApiManager;->setSysTime(J)I

    move-result p1

    return p1
.end method

.method public setUsbStorageEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setUsbStorageEnable(Z)I

    move-result p1

    return p1
.end method

.method public setVolumeDownKeyEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setVolumeDownKeyEnable(Z)I

    move-result p1

    return p1
.end method

.method public setVolumeUpKeyEnable(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/ApiManager;->setVolumeUpKeyEnable(Z)I

    move-result p1

    return p1
.end method

.method public silentInstall(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/hardware/ApiManager;->silentInstall(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public silentUninstall(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/incar/mdm/MdmPolicyManager;->mApiManager:Landroid/hardware/ApiManager;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/hardware/ApiManager;->silentUninstall(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
