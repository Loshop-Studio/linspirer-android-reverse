.class public Lcom/huawei/hem/bd;
.super Lcom/huawei/hem/jc;
.source "KaishuodaKImpl.java"


# static fields
.field public static d:Lcom/huawei/hem/bd;


# instance fields
.field public b:Lcom/unionnn/iface/IMDMUniIface;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/bd;->c:Landroid/content/Context;

    :try_start_0
    const-string p1, "android.os.ServiceManager"

    .line 3
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getService"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "imdm"

    aput-object v2, v1, v4

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/unionnn/iface/IMDMUniIface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionnn/iface/IMDMUniIface;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/bd;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,actionSilentInstall-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public G0()Ljava/util/List;
    .locals 3
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
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v1}, Lcom/unionnn/iface/IMDMUniIface;->urlWhiteExceptListRead()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v1}, Lcom/unionnn/iface/IMDMUniIface;->urlWhiteExceptListRead()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "KaishuodaKImpl ,getNetworkAccessAppWhiteList-error:"

    .line 5
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
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
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0, p1}, Lcom/unionnn/iface/IMDMUniIface;->urlWhiteExceptListWrite(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,setNetworkAccessAppWhiteList-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public M0()Ljava/util/List;
    .locals 3
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
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v1}, Lcom/unionnn/iface/IMDMUniIface;->appWhiteListRead()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v1}, Lcom/unionnn/iface/IMDMUniIface;->appWhiteListRead()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "KaishuodaKImpl ,getAppWhiteList-error:"

    .line 5
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public N(J)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0, p1, p2}, Lcom/unionnn/iface/IMDMUniIface;->modifySystemTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "KaishuodaKImpl ,setSystemTime-error:"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {p1}, Lcom/unionnn/iface/IMDMUniIface;->systemInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "KaishuodaKImpl ,systemInit-error:"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0, p1}, Lcom/unionnn/iface/IMDMUniIface;->silentUnInstall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,actionSilentUnInstall-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/huawei/hem/bd$a;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hem/bd$a;-><init>(Lcom/huawei/hem/bd;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "KaishuodaKImpl ,setUrlWhiteList-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return v0
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
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {p1}, Lcom/unionnn/iface/IMDMUniIface;->showWifiAdvanced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,showWifiAdvanced-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {p1}, Lcom/unionnn/iface/IMDMUniIface;->enableSdCard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,enableSdCard-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableBack-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableBluetooth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableBluetooth-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableCamera-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableFireWall()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableFireWall()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableFireWall-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableGPS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableGPS-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableHome()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableHome-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableLongPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableLongPressPower-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableMobileData()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableMobileData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableMobileData-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->disableShortPressPower()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->disableLongPressPower()V

    return-void
.end method

.method public disableOTA()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableOTA()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableOTA-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableOTG()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableOTG()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableOTG-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableRecent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableRecent-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableScreenShot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableScreenShot-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableShortPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableShortPressPower-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableSpeech()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableSpeech()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableSpeech-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableUsb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableUsb-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->disableVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,disableVolume-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0, p1}, Lcom/unionnn/iface/IMDMUniIface;->disableApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,actionDisableApp-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableBack-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableBluetooth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableBluetooth-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableCamera-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableFireWall()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableFireWall()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableFireWall-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableGPS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableGPS-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableHome()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableHome-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableLongPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableLongPressPower-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableMobileData()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableMobileData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableMobileData-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->enableLongPressPower()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/bd;->enableShortPressPower()V

    return-void
.end method

.method public enableOTA()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableOTA()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableOTA-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableOTG()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableOTG()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableOTG-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableRecent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableRecent-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableScreenShot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableScreenShot-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableShortPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableShortPressPower-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableSpeech()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableSpeech()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableSpeech-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableUsb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableUsb-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0}, Lcom/unionnn/iface/IMDMUniIface;->enableVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,enableVolume-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/unionnn/iface/IMDMUniIface;->urlWhiteExceptListWrite(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "KaishuodaKImpl ,cleanNetworkAccessAppWhiteList-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
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
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {p1}, Lcom/unionnn/iface/IMDMUniIface;->hideWifiAdvanced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,hideWifiAdvanced-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
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
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0, p1}, Lcom/unionnn/iface/IMDMUniIface;->appWhiteListWrite(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,setAppWhiteList-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {p1}, Lcom/unionnn/iface/IMDMUniIface;->resetFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,actionResetFactory-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public t0()Ljava/util/List;
    .locals 3
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
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v1}, Lcom/unionnn/iface/IMDMUniIface;->urlWhiteListRead()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v1}, Lcom/unionnn/iface/IMDMUniIface;->urlWhiteListRead()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "KaishuodaKImpl ,getUrlWhiteList-error:"

    .line 5
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {v0, p1}, Lcom/unionnn/iface/IMDMUniIface;->enableApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,actionEnableApp-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    invoke-interface {p1}, Lcom/unionnn/iface/IMDMUniIface;->disableSdCard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "KaishuodaKImpl ,disableSdCard-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method
