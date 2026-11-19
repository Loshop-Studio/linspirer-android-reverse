.class public Lcom/huawei/hem/vc;
.super Lcom/huawei/hem/jc;
.source "HisenseImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/vc;

.field public static c:Lcom/tdtech/devicemanager/IMDM;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/vc;

    invoke-direct {v0}, Lcom/huawei/hem/vc;-><init>()V

    sput-object v0, Lcom/huawei/hem/vc;->b:Lcom/huawei/hem/vc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0, p1}, Lcom/tdtech/devicemanager/IMDM;->silentInstall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl disableLongPressPower "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public G0()Ljava/util/List;
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
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->urlWhiteListExceptionRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl getNetworkAccessAppWhiteList"

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public I0(Ljava/util/List;)V
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
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0, p1}, Lcom/tdtech/devicemanager/IMDM;->urlWhiteListExceptionWrite(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl  -- setNetworkAccessAppWhiteList"

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public M0()Ljava/util/List;
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
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->appWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl getAppWhiteList "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public N(J)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0, p1, p2}, Lcom/tdtech/devicemanager/IMDM;->modifySystemTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HisenseImpl setSystemTime "

    .line 2
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tdtech/devicemanager/IMDM;->enableMDM(Z)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {p1}, Lcom/tdtech/devicemanager/IMDM;->activeDeviceAdmin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HisenseImpl actionActiveDeviceAdmin "

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0, p1}, Lcom/tdtech/devicemanager/IMDM;->silentUnInstall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl actionSilentUnInstall "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
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
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0, p1}, Lcom/tdtech/devicemanager/IMDM;->urlWhiteListWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl setUrlWhiteList "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b0(Ljava/util/List;)V
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
    :try_start_0
    sget-object p1, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {p1}, Lcom/tdtech/devicemanager/IMDM;->showWifiAdvanced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl showWifiAdvanced "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {p1}, Lcom/tdtech/devicemanager/IMDM;->enableSdCard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl enableSdCard "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableBack "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableBluetooth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableBluetooth "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableCamera "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableFireWall()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/huawei/hem/vc;->V(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableFireWall "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableGPS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableGPS "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableHome()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableHome "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableLongPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl  -- "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableMobileData()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableMobileData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableMobileData "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->disableShortPressPower()V

    return-void
.end method

.method public disableRecent()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableRecent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableRecent "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableScreenShot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableScreenShot "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableShortPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableShortPressPower"

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableSpeech()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableSpeech()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableSpeech "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableUsb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableUsb "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->disableVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl disableVolume "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0, p1}, Lcom/tdtech/devicemanager/IMDM;->disableApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl actionDisableApp "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableBack "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableBluetooth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableBluetooth "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableCamera "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableGPS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableGPS "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableHome()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableHome "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableLongPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableLongPressPower"

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableMobileData()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableMobileData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableMobileData "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/vc;->enableShortPressPower()V

    return-void
.end method

.method public enableRecent()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableRecent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableRecent "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableScreenShot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableScreenShot "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableShortPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableShortPressPower "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableSpeech()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableSpeech()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableSpeech "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableUsb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableUsb "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->enableVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl enableVolume "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/util/List;)V
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
    :try_start_0
    sget-object p1, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {p1}, Lcom/tdtech/devicemanager/IMDM;->hideWifiAdvanced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl hideWifiAdvanced "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
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
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0, p1}, Lcom/tdtech/devicemanager/IMDM;->appWhiteListWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl setAppWhiteList "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {p1}, Lcom/tdtech/devicemanager/IMDM;->resetFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl actionResetFactory "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public t0()Ljava/util/List;
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
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0}, Lcom/tdtech/devicemanager/IMDM;->urlWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HisenseImpl getUrlWhiteList "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {v0, p1}, Lcom/tdtech/devicemanager/IMDM;->enableApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl actionEnableApp "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    invoke-virtual {p1}, Lcom/tdtech/devicemanager/IMDM;->disableSdCard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HisenseImpl disableSdCard "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
