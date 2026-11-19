.class public Lcom/huawei/hem/ld;
.super Lcom/huawei/hem/jc;
.source "ZXKImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/ld;

.field public static c:Landroid/content/Context;

.field public static d:Lcom/huawei/hem/yi;

.field public static e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/ld;

    invoke-direct {v0}, Lcom/huawei/hem/ld;-><init>()V

    sput-object v0, Lcom/huawei/hem/ld;->b:Lcom/huawei/hem/ld;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method


# virtual methods
.method public B0(Ljava/util/List;)V
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
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/yi;->c:Lcom/huawei/hem/q1;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/huawei/hem/q1;->z0(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "zxkExecutorService is not started, please execute the ZxkSDK.init() method !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplactionEnableApp-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.zxkmanager.executor"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "task"

    const-string v4, "silentInstallApplication"

    .line 4
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "parameter"

    .line 5
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplactionSilentInstall-error:"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/yi;->c:Lcom/huawei/hem/q1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/huawei/hem/q1;->Q2()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "zxkExecutorService is not started, please execute the ZxkSDK.init() method !"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplgetAppWhiteList-error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public N(J)Z
    .locals 10

    const/4 v0, 0x1

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const-string p2, "-"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    array-length p2, p1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 7
    sget-object v2, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v3, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 p2, 0x0

    aget-object v4, p1, p2

    aget-object v5, p1, v0

    const/4 p2, 0x2

    aget-object v6, p1, p2

    const/4 p2, 0x3

    aget-object v7, p1, p2

    const/4 p2, 0x4

    aget-object v8, p1, p2

    const/4 p2, 0x5

    aget-object v9, p1, p2

    invoke-virtual/range {v2 .. v9}, Lcom/huawei/hem/yi;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "ZXKImplsetSystemTime-error:"

    .line 8
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-boolean p1, Lcom/huawei/hem/ld;->e:Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object p2, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hem/yi;->n(Landroid/content/Context;Z)V

    .line 3
    sget-object p1, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object p2, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hem/yi;->m(Landroid/content/Context;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->V0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "ZXKImplsystemInit-error:"

    .line 5
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.zxkmanager.executor"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "task"

    const-string v4, "silentUnInstallApplication"

    .line 4
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "parameter"

    .line 5
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplactionSilentUnInstall-error:"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/hem/ld$a;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hem/ld$a;-><init>(Lcom/huawei/hem/ld;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplsetUrlWhiteList-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public V0()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->k(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisable factory-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public b0(Ljava/util/List;)V
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
    :try_start_0
    sget-boolean p1, Lcom/huawei/hem/ld;->e:Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v0, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/yi;->s(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplshowWifiAdvanced-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-boolean p1, Lcom/huawei/hem/ld;->e:Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v0, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/yi;->l(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplenableSdCard-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->c(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableBack-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->d(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableBluetooth-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->e(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableCamera-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->f(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableGPS-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->g(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableHome-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->h(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableLongPressPower-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->disableLongPressPower()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->disableVolume()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->disableShortPressPower()V

    .line 7
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 8
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->o(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableNotification-error:"

    .line 9
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->j(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableRecent-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->i(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableShortPressPower-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->q(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableUsb-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->r(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImpldisableVolume-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    .line 5
    iget-object p1, p1, Lcom/huawei/hem/yi;->c:Lcom/huawei/hem/q1;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Lcom/huawei/hem/q1;->G(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "zxkExecutorService is not started, please execute the ZxkSDK.init() method !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplactionDisableApp-error:"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->c(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableBack-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->d(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableBluetooth-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->e(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableCamera-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->f(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableGPS-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->g(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableHome-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->h(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableLongPressPower-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->enableLongPressPower()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->enableVolume()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/ld;->enableShortPressPower()V

    .line 7
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 8
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->o(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableNotification-error:"

    .line 9
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->j(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableRecent-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->i(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableShortPressPower-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/huawei/hem/ld;->e:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->q(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableUsb-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->r(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenableVolume-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->k(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZXKImplenable factory-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public k0(Ljava/util/List;)V
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
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/yi;->c:Lcom/huawei/hem/q1;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/huawei/hem/q1;->G(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "zxkExecutorService is not started, please execute the ZxkSDK.init() method !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplactionDisableApp-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/util/List;)V
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
    :try_start_0
    sget-boolean p1, Lcom/huawei/hem/ld;->e:Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v0, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/yi;->s(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplhideWifiAdvanced-error:"

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
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/yi;->c:Lcom/huawei/hem/q1;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/huawei/hem/q1;->addAppInstallWhiteList(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "zxkExecutorService is not started, please execute the ZxkSDK.init() method !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplsetAppWhiteList-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->k(Landroid/content/Context;Z)V

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "WipeSoldier -- wipeDataIncludeSDCard.........."

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataIncludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    const-string p1, "WipeSoldier -- wipeDataExcludeSDCard.........."

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataExcludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplactionResetFactory-error:"

    .line 11
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    .line 5
    iget-object p1, p1, Lcom/huawei/hem/yi;->c:Lcom/huawei/hem/q1;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Lcom/huawei/hem/q1;->z0(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "zxkExecutorService is not started, please execute the ZxkSDK.init() method !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImplactionEnableApp-error:"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-boolean p1, Lcom/huawei/hem/ld;->e:Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v0, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/yi;->l(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ZXKImpldisableSdCard-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method
