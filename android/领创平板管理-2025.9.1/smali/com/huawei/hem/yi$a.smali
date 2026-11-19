.class public Lcom/huawei/hem/yi$a;
.super Ljava/lang/Object;
.source "ZxkSDK.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/yi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/yi;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/yi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/yi$a;->a:Lcom/huawei/hem/yi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ZxkSDK"

    const-string v0, "connect service"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/yi$a;->a:Lcom/huawei/hem/yi;

    invoke-static {p2}, Lcom/huawei/hem/q1$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/q1;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lcom/huawei/hem/yi;->c:Lcom/huawei/hem/q1;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "disconnect service-->zxkSDKContext="

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/yi$a;->a:Lcom/huawei/hem/yi;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/yi;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZxkSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/yi$a;->a:Lcom/huawei/hem/yi;

    .line 5
    iget-object v0, p1, Lcom/huawei/hem/yi;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p1, Lcom/huawei/hem/yi;->b:Z

    .line 7
    invoke-virtual {p1, v0}, Lcom/huawei/hem/yi;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
