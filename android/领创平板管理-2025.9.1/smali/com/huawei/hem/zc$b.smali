.class public final Lcom/huawei/hem/zc$b;
.super Ljava/lang/Object;
.source "JinTaiYiImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/zc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/zc;->d:Lcom/huawei/hem/qb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "JinTaiYiImpl ---\u670d\u52a1\u7aef\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62\uff0c\u91cd\u65b0\u7ed1\u5b9a"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/zc;->d:Lcom/huawei/hem/qb;

    .line 4
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/huawei/hem/zc;->f:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/huawei/hem/zc;->d:Lcom/huawei/hem/qb;

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kte.interfacesettings.aidl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.kte.interfacesettings"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object v1, Lcom/huawei/hem/zc;->c:Landroid/content/Context;

    sget-object v2, Lcom/huawei/hem/zc;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
