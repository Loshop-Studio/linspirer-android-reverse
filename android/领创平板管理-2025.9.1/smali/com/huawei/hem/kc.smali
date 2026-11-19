.class public Lcom/huawei/hem/kc;
.super Lcom/huawei/hem/jc;
.source "AngdaImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/kc;

.field public static c:Lcom/huawei/hem/g6;

.field public static d:Landroid/content/Context;

.field public static e:Landroid/content/ServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/kc;

    invoke-direct {v0}, Lcom/huawei/hem/kc;-><init>()V

    sput-object v0, Lcom/huawei/hem/kc;->b:Lcom/huawei/hem/kc;

    .line 2
    new-instance v0, Lcom/huawei/hem/kc$a;

    invoke-direct {v0}, Lcom/huawei/hem/kc$a;-><init>()V

    sput-object v0, Lcom/huawei/hem/kc;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method

.method public static V0(Landroid/content/Context;)V
    .locals 3

    const-string v0, "InitAidlService success"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.url_control_tool"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.orgdhy.blackangel"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget-object v1, Lcom/huawei/hem/kc;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AngdaImpl actionSilentInstall "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/huawei/hem/g6;->T1(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public I0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/hem/kc$c;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hem/kc$c;-><init>(Lcom/huawei/hem/kc;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public M0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AngdaImpl getAppWhiteList "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 3
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/huawei/hem/g6;->y(I)[Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 5
    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-object v2

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    .line 11
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public N(J)Z
    .locals 5

    const-string v0, "AngdaImpl setSystemTime "

    const/4 v1, 0x1

    .line 1
    :try_start_0
    sget-object v2, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Lcom/huawei/hem/g6;->p1(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return v1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AngdaImpl actionSilentUnInstall "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/huawei/hem/g6;->T1(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
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
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/hem/kc$b;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hem/kc$b;-><init>(Lcom/huawei/hem/kc;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public b0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "AngdaImpl showWifiAdvanced "

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 3

    const-string p1, "AngdaImpl enableSdCard "

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 4

    const-string v0, "AngdaImpl disableBack "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 4

    const-string v0, "AngdaImpl disableBluetooth "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 4

    const-string v0, "AngdaImpl disableCamera "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 3

    const-string v0, "AngdaImpl disableGPS "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 4

    const-string v0, "AngdaImpl disableHome "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 5

    const-string v0, "AngdaImpl disableLongPressPower "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->disableShortPressPower()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->disableLongPressPower()V

    return-void
.end method

.method public disableRecent()V
    .locals 4

    const-string v0, "AngdaImpl disableRecent "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0xbb

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 5

    const-string v0, "AngdaImpl disableShortPressPower "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 4

    const-string v0, "AngdaImpl disableUsb "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 4

    const-string v0, "AngdaImpl disableVolume "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V

    .line 3
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0x18

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/huawei/hem/g6;->r(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "angda throw error:"

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "angda error:"

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 4

    const-string v0, "AngdaImpl enableBack "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 3

    const-string v0, "AngdaImpl enableBluetooth "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v2}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 4

    const-string v0, "AngdaImpl enableCamera "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 4

    const-string v0, "AngdaImpl enableGPS "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 4

    const-string v0, "AngdaImpl enableHome "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 4

    const-string v0, "AngdaImpl enableLongPressPower "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->enableLongPressPower()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/kc;->enableLongPressPower()V

    return-void
.end method

.method public enableRecent()V
    .locals 4

    const-string v0, "AngdaImpl enableRecent "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0xbb

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 4

    const-string v0, "AngdaImpl enableShortPressPower "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 4

    const-string v0, "AngdaImpl enableUsb "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 4

    const-string v0, "AngdaImpl enableVolume "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V

    .line 3
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/16 v2, 0x18

    invoke-interface {v1, v2, v3, v3}, Lcom/huawei/hem/g6;->k2(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "AngdaImpl hideWifiAdvanced "

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "AngdaImpl setAppWhiteList "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    invoke-static {p1}, Lcom/huawei/hem/l9;->P(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/huawei/hem/g6;->g2([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return v1
.end method

.method public t(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/kc;->d:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "WipeSoldier -- wipeDataIncludeSDCard.........."

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataIncludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    const-string p1, "WipeSoldier -- wipeDataExcludeSDCard.........."

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataExcludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public t0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AngdaImpl getUrlWhiteList "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 3
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/huawei/hem/g6;->y(I)[Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 5
    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-object v2

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    .line 11
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AngdaImpl actionEnableApp "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/huawei/hem/g6;->r(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 3

    const-string p1, "AngdaImpl disableSdCard "

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/g6;->Z0(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
