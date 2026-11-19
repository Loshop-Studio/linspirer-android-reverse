.class public Lcom/huawei/hem/a0$a;
.super Ljava/lang/Object;
.source "HRA_API.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/a0;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/a0$a;->a:Lcom/huawei/hem/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/a0$a;->a:Lcom/huawei/hem/a0;

    invoke-static {p2}, Lcom/huawei/hem/d0$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/d0;

    move-result-object p2

    iput-object p2, p1, Lcom/huawei/hem/a0;->a:Lcom/huawei/hem/d0;

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/a0$a;->a:Lcom/huawei/hem/a0;

    iget-object p1, p1, Lcom/huawei/hem/a0;->a:Lcom/huawei/hem/d0;

    if-nez p1, :cond_0

    const-string p1, "HRA_API"

    const-string p2, "the mStub is null"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/huawei/hem/d0;->E1()Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/a0$a;->a:Lcom/huawei/hem/a0;

    iget-object p1, p1, Lcom/huawei/hem/a0;->a:Lcom/huawei/hem/d0;

    invoke-interface {p1}, Lcom/huawei/hem/d0;->g0()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
