.class public Lcom/huawei/hem/dd;
.super Lcom/huawei/hem/jc;
.source "SamsungImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/dd;

.field public static c:Lcom/b2b/rom/ISamsungDevice;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/dd;

    invoke-direct {v0}, Lcom/huawei/hem/dd;-><init>()V

    sput-object v0, Lcom/huawei/hem/dd;->b:Lcom/huawei/hem/dd;

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

    const-string v0, "SamsungImpl  -- actionSilentInstall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0, p1}, Lcom/b2b/rom/ISamsungDevice;->silentInstall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- actionSilentInstall error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
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

    const-string v0, "SamsungImpl  -- getNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->getNetworkAccessAppWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- getNetworkAccessAppWhiteList error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
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

    const-string v0, "SamsungImpl  -- setNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0, p1}, Lcom/b2b/rom/ISamsungDevice;->addNetworkAccessAppWhiteList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- setNetworkAccessAppWhiteList error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
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

    const-string v0, "SamsungImpl  -- getAppWhiteList , canEnableMdmPolicy = "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v1}, Lcom/b2b/rom/ISamsungDevice;->isInitFinish()Z

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->appWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- getAppWhiteList error : "

    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public N(J)Z
    .locals 1

    const-string v0, "SamsungImpl  -- setSystemTime "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0, p1, p2}, Lcom/b2b/rom/ISamsungDevice;->modifySystemTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "SamsungImpl  -- setSystemTime error : "

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "SamsungImpl  -- disableStatusBarPanel "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->disableStatusBar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "SamsungImpl  -- disableStatusBarPanel error : "

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string p1, "SamsungImpl  -- init default disable menu item ."

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    :try_start_1
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->disableSettingSectionMenu()V

    .line 7
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->disableAppDetail()V

    .line 8
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->disableHomeLongFunc()V

    .line 9
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->disableLockScreenIcon()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string p2, "SamsungImpl  -- default init error : "

    .line 10
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SamsungImpl  --  actionSilentUnInstall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0, p1}, Lcom/b2b/rom/ISamsungDevice;->silentUnInstall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- actionSilentUnInstall error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
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

    const-string v0, "SamsungImpl  -- setUrlWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0, p1}, Lcom/b2b/rom/ISamsungDevice;->urlWhiteListWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- setUrlWhiteList error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public X()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableStatusBarPanel "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableStatusBar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableStatusBarPanel error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
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

    const-string p1, "SamsungImpl  -- showWifiAdvanced "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->showWifiAdvanced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- showWifiAdvanced error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const-string p1, "SamsungImpl  -- enableSdCard "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->enableSdCard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- enableSdCard error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableBack "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableBack error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableBluetooth "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableBluetooth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableBluetooth error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableCamera "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableCamera error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableFireWall()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/huawei/hem/dd;->V(Ljava/util/List;)Z

    return-void
.end method

.method public disableGPS()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableGPS "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableGPS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableGPS error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableHome "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableHome()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableHome error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableLongPressPower "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableLongPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableLongPressPower error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 1

    const-string v0, "SamsungImpl  -- disableNavigation "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->disableHome()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->disableBack()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->disableRecent()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->disableVolume()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->disableShortPressPower()V

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->disableLongPressPower()V

    return-void
.end method

.method public disableOTG()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableOTG "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableOtgStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableOTG error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableRecent "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableRecent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableRecent error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableScreenShot "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableScreensHots()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableScreenShot error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableShortPressPower "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableShortPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableShortPressPower error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableUsb "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableUsb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableUsb error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 2

    const-string v0, "SamsungImpl  -- disableVolume "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->disableVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- disableVolume error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SamsungImpl  -- actionDisableApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0, p1}, Lcom/b2b/rom/ISamsungDevice;->disableApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- actionDisableApp error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableBack "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableBack error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableBluetooth "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableBluetooth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableBluetooth error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableCamera "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableCamera error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableGPS "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableGPS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableGPS error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableHome "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableHome()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableHome error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableLongPressPower "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableLongPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableLongPressPower error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 1

    const-string v0, "SamsungImpl  -- enableNavigation "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->enableHome()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->enableBack()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->enableRecent()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->enableVolume()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->enableShortPressPower()V

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hem/dd;->enableLongPressPower()V

    return-void
.end method

.method public enableOTG()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableOTG "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableOtgStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableOTG error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableRecent "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableRecent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableRecent error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableScreenShot "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableScreensHots()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableScreenShot error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableShortPressPower "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableShortPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableShortPressPower error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableUsb "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableUsb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableUsb error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 2

    const-string v0, "SamsungImpl  -- enableVolume "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->enableVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- enableVolume error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
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

    const-string p1, "SamsungImpl  -- hideWifiAdvanced "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->hideWifiAdvanced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- hideWifiAdvanced error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
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

    const-string v0, "SamsungImpl  -- setAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0, p1}, Lcom/b2b/rom/ISamsungDevice;->appWhiteListWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- setAppWhiteList error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 1

    const-string p1, "SamsungImpl  -- actionResetFactory "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->resetFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- actionResetFactory error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
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

    const-string v0, "SamsungImpl  -- getUrlWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0}, Lcom/b2b/rom/ISamsungDevice;->urlWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "SamsungImpl  -- getUrlWhiteList error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SamsungImpl  -- actionEnableApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {v0, p1}, Lcom/b2b/rom/ISamsungDevice;->enableApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- actionEnableApp error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 1

    const-string p1, "SamsungImpl  -- disableSdCard "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    invoke-virtual {p1}, Lcom/b2b/rom/ISamsungDevice;->disableSdCard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SamsungImpl  -- disableSdCard error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
