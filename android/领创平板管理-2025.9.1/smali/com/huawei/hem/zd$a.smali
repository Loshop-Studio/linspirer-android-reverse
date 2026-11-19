.class public Lcom/huawei/hem/zd$a;
.super Ljava/lang/Object;
.source "LenovoCSDK5Impl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/zd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/zd;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/zd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/zd$a;->a:Lcom/huawei/hem/zd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "LenovoCSDK5Impl --onServiceConnected"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/zd$a;->a:Lcom/huawei/hem/zd;

    invoke-static {p2}, Lcom/huawei/hem/c0$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/c0;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/zd$a;->a:Lcom/huawei/hem/zd;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    const-string p1, "LenovoCSDK5Impl --Service Disconnected"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
