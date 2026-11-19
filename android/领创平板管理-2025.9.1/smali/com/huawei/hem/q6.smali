.class public final Lcom/huawei/hem/q6;
.super Ljava/lang/Object;
.source "IMDM.java"


# static fields
.field public static a:Lcom/huawei/hem/q6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setMobileDataDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public B()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setScreenCapDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setSdcardDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public E()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setVoiceDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setUSBDataDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public H()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public I()Ljava/util/List;
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
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/mdmcom/ICtEmmManager;->getDeviceInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public J()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public K(J)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/mdmcom/ICtEmmManager;->setTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdmcom/ICtEmmManager;->resetFactory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public M()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdmcom/ICtEmmManager;->shutdownDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/mdmcom/ICtEmmManager;->installPackageSilent(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/mdmcom/ICtEmmManager;->uninstallApplication(Ljava/lang/String;ZLandroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public Q()Ljava/util/List;
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
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/mdmcom/ICtEmmManager;->urlWhiteListExceptionRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public R(Ljava/util/List;)Z
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
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdmcom/ICtEmmManager;->urlWhiteListExceptionWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public S()Ljava/util/List;
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
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/mdmcom/ICtEmmManager;->getUrlWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public T(Ljava/util/List;)Z
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
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdmcom/ICtEmmManager;->addUrlWhiteList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/mdmcom/ICtEmmManager;->activeDeviceAdmin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b()Ljava/util/List;
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
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/mdmcom/ICtEmmManager;->getAppWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public c(Ljava/util/List;)Z
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
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdmcom/ICtEmmManager;->addAppWhiteList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/mdmcom/ICtEmmManager;->setApplicationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setBluetoothDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setCameraDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->turnOnGPS(Z)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setGPSDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setMobileDataDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setScreenCapDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setSdcardDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setVoiceDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setUSBDataDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/mdmcom/ICtEmmManager;->setApplicationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setBluetoothDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setCameraDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->turnOnGPS(Z)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/mdmcom/ICtEmmManager;->setGPSDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public y()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/mdmcom/ICtEmmManager;->setKeyOrSettingsRestriction(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public z(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->C()Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/mdmcom/ICtEmmManager;->enableMDM(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
