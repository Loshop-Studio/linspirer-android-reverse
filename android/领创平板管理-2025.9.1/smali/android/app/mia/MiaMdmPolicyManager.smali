.class public Landroid/app/mia/MiaMdmPolicyManager;
.super Ljava/lang/Object;
.source "MiaMdmPolicyManager.java"


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/app/mia/MiaMdmPolicyManager;->list:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/app/mia/MiaMdmPolicyManager;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public APPIPBlackListRead()Ljava/util/List;
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

.method public APPIPWhiteListRead()Ljava/util/List;
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

.method public ClearURLListRules()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public SetEnable(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public allowBluetoothDataTransfer(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public appWhiteListRead()Ljava/util/List;
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
    iget-object v0, p0, Landroid/app/mia/MiaMdmPolicyManager;->list:Ljava/util/List;

    return-object v0
.end method

.method public appWhiteListWrite(Ljava/util/List;)Z
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

.method public controlApp(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public deleteLockPattern(I)V
    .locals 0

    return-void
.end method

.method public disallowSetNotificationVolume_v3(Z)V
    .locals 0

    return-void
.end method

.method public enableCaptureScreen(Z)V
    .locals 0

    return-void
.end method

.method public forceStopPackageWhiteListRead()Ljava/util/List;
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
    iget-object v0, p0, Landroid/app/mia/MiaMdmPolicyManager;->list:Ljava/util/List;

    return-object v0
.end method

.method public forceStopPackageWhiteListWrite(Ljava/util/List;)Z
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

.method public getBtStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/mia/MiaMdmPolicyManager;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMiaScreen()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/mia/MiaMdmPolicyManager;->s:Ljava/lang/String;

    return-object v0
.end method

.method public isForbidOTG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public killApplicationProcess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public masterClearInbulitSD()V
    .locals 0

    return-void
.end method

.method public mobileData(Z)V
    .locals 0

    return-void
.end method

.method public setAppWhiteList(Ljava/util/List;)Z
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

.method public setBackKey(Z)V
    .locals 0

    return-void
.end method

.method public setCamera(Z)V
    .locals 0

    return-void
.end method

.method public setCustomLauncher(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setGps(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setHomeKey(Z)V
    .locals 0

    return-void
.end method

.method public setNavigaBar(Z)V
    .locals 0

    return-void
.end method

.method public setNotificationVolumeValue_v3(I)V
    .locals 0

    return-void
.end method

.method public setOTA(Z)V
    .locals 0

    return-void
.end method

.method public setOTG(Z)V
    .locals 0

    return-void
.end method

.method public setPowerLongPressKey(Z)V
    .locals 0

    return-void
.end method

.method public setPowerSingleClickKey(Z)V
    .locals 0

    return-void
.end method

.method public setRecentKey(Z)V
    .locals 0

    return-void
.end method

.method public setSIMStatus(Z)V
    .locals 0

    return-void
.end method

.method public setScreenCaptureKey(Z)V
    .locals 0

    return-void
.end method

.method public setTFcard(Z)V
    .locals 0

    return-void
.end method

.method public setUsbOnlyCharging(Z)V
    .locals 0

    return-void
.end method

.method public setVoiceSize(Z)V
    .locals 0

    return-void
.end method

.method public setVolumedownKey(Z)V
    .locals 0

    return-void
.end method

.method public setVolumeupKey(Z)V
    .locals 0

    return-void
.end method

.method public setWifiProxy(Z)V
    .locals 0

    return-void
.end method

.method public shutDown()V
    .locals 0

    return-void
.end method

.method public silentInstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public silentUnInstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSystemTime(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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

    const/4 p1, 0x1

    return p1
.end method

.method public urlSetEnable(Z)Z
    .locals 0

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

    .line 1
    iget-object v0, p0, Landroid/app/mia/MiaMdmPolicyManager;->list:Ljava/util/List;

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
