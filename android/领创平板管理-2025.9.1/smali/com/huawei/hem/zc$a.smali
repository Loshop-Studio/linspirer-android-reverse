.class public final Lcom/huawei/hem/zc$a;
.super Ljava/lang/Object;
.source "JinTaiYiImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/qb$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/qb;

    move-result-object p1

    .line 2
    sput-object p1, Lcom/huawei/hem/zc;->d:Lcom/huawei/hem/qb;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/huawei/hem/zc;->f:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "JinTaiYiImpl ---ITools linkToDeath error:"

    .line 6
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :goto_0
    const-string p1, "JinTaiYiImpl ---myAIDLService\u7ed1\u5b9a\u6210\u529f"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    sput-object p1, Lcom/huawei/hem/zc;->d:Lcom/huawei/hem/qb;

    return-void
.end method
