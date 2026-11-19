.class public Lcom/huawei/hem/t1;
.super Ljava/lang/Object;
.source "HCHelper.java"


# static fields
.field public static c:Lcom/huawei/hem/t1;

.field public static d:Landroid/content/Context;


# instance fields
.field public a:Lcom/huawei/hem/u1;

.field public b:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/t1$a;

    invoke-direct {v0, p0}, Lcom/huawei/hem/t1$a;-><init>(Lcom/huawei/hem/t1;)V

    iput-object v0, p0, Lcom/huawei/hem/t1;->b:Landroid/content/ServiceConnection;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lingc.intent.action.HCService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.hccontrol"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object v1, Lcom/huawei/hem/t1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hem/t1;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static a()Lcom/huawei/hem/t1;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/t1;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/t1;->c:Lcom/huawei/hem/t1;

    if-nez v0, :cond_2

    .line 3
    const-class v0, Lcom/huawei/hem/t1;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/hem/t1;->c:Lcom/huawei/hem/t1;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/huawei/hem/t1;

    invoke-direct {v1}, Lcom/huawei/hem/t1;-><init>()V

    sput-object v1, Lcom/huawei/hem/t1;->c:Lcom/huawei/hem/t1;

    .line 6
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_2
    :goto_0
    sget-object v0, Lcom/huawei/hem/t1;->c:Lcom/huawei/hem/t1;

    return-object v0
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/t1;->a:Lcom/huawei/hem/u1;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/u1;->S(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/t1;->a:Lcom/huawei/hem/u1;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/u1;->S(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/t1;->a:Lcom/huawei/hem/u1;

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v0, p1}, Lcom/huawei/hem/u1;->F0(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
