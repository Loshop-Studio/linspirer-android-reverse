.class public final Lcom/tdtech/devicemanager/IMDM;
.super Ljava/lang/Object;
.source "IMDM.java"


# static fields
.field public static mInstance:Lcom/tdtech/devicemanager/IMDM;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tdtech/devicemanager/IMDM;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tdtech/devicemanager/IMDM;
    .locals 2

    .line 1
    const-class v0, Lcom/tdtech/devicemanager/IMDM;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tdtech/devicemanager/IMDM;->mInstance:Lcom/tdtech/devicemanager/IMDM;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/tdtech/devicemanager/IMDM;

    invoke-direct {v1, p0}, Lcom/tdtech/devicemanager/IMDM;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tdtech/devicemanager/IMDM;->mInstance:Lcom/tdtech/devicemanager/IMDM;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object p0, Lcom/tdtech/devicemanager/IMDM;->mInstance:Lcom/tdtech/devicemanager/IMDM;

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public activeDeviceAdmin()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->activeDeviceAdmin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public appWhiteListRead()Ljava/util/List;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/mdm/IMdmManager;->appWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public appWhiteListWrite(Ljava/util/List;)Z
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
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdm/IMdmManager;->appWhiteListWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public clearLockedScreenPassword()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->clearLockedScreenPassword()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableApp(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdm/IMdmManager;->disableApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableBack()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableBack()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdm/IMdmManager;->enableBluetooth(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableCamera()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdm/IMdmManager;->enableCamera(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableGPS()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdm/IMdmManager;->enableGps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableHome()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableHome()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableLongPressPower()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableMobileData()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableMobileData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableNFC()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableNFC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableNavigation()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableNavigation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableRecent()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableRecent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdm/IMdmManager;->enableScreenshot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableSdCard()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableSdCard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableShortPressPower()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableSpeech()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableUsb()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableUsb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disableVolume()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->disableVolume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableApp(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdm/IMdmManager;->enableApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableBack()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableBack()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdm/IMdmManager;->enableBluetooth(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableCamera()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdm/IMdmManager;->enableCamera(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableGPS()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdm/IMdmManager;->enableGps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableHome()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableHome()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableLongPressPower()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableMDM(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdm/IMdmManager;->enable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableMobileData()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableMobileData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableNFC()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableNFC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableNavigation()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableNavigation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableRecent()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableRecent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdm/IMdmManager;->enableScreenshot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableSdCard()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableSdCard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableShortPressPower()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableSpeech()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableUsb()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableUsb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableVolume()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->enableVolume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public hideWifiAdvanced()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->hideWifiAdvanced()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public modifySystemTime(J)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/mdm/IMdmManager;->modifySystemTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public resetFactory()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->resetFactory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public showSettingPart()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->showSettingPart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public showSettingWhole()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->showSettingWhole()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public showWifiAdvanced()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdm/IMdmManager;->showWifiAdvanced()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public silentInstall(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdm/IMdmManager;->silentInstall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public silentUnInstall(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdm/IMdmManager;->silentUnInstall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public urlWhiteListExceptionRead()Ljava/util/List;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/mdm/IMdmManager;->urlWhiteListExceptionRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public urlWhiteListExceptionWrite(Ljava/util/List;)Z
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
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdm/IMdmManager;->urlWhiteListExceptionWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public urlWhiteListRead()Ljava/util/List;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/mdm/IMdmManager;->urlWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public urlWhiteListWrite(Ljava/util/List;)Z
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
    :try_start_0
    invoke-static {}, Lcom/tdtech/devicemanager/EmmUtil;->mdmIF()Landroid/mdm/IMdmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdm/IMdmManager;->urlWhiteListWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
