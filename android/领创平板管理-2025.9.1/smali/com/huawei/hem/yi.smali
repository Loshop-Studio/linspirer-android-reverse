.class public Lcom/huawei/hem/yi;
.super Ljava/lang/Object;
.source "ZxkSDK.java"


# static fields
.field public static f:Lcom/huawei/hem/yi;


# instance fields
.field public a:Lcom/huawei/hem/zi;

.field public b:Z

.field public c:Lcom/huawei/hem/q1;

.field public d:Landroid/content/Context;

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/yi;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/yi;->d:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/huawei/hem/yi$a;

    invoke-direct {v0, p0}, Lcom/huawei/hem/yi$a;-><init>(Lcom/huawei/hem/yi;)V

    iput-object v0, p0, Lcom/huawei/hem/yi;->e:Landroid/content/ServiceConnection;

    .line 5
    new-instance v0, Lcom/huawei/hem/zi;

    invoke-direct {v0}, Lcom/huawei/hem/zi;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "bindService:isBind="

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/hem/yi;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/yi;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZxkSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/huawei/hem/yi;->b:Z

    if-nez v0, :cond_0

    const-string v0, "com.android.settings.ZxkExecutorService"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->m(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/yi;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/huawei/hem/yi;->b:Z

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.zxkmanager.executor"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "task"

    const-string v3, "sendIPTables_CMD"

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "parameter"

    .line 4
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    throw v1
.end method

.method public c(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setBackKeyState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public d(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setBluetoothState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public e(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setCameraState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public f(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setGpsState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public g(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setHomeKeyState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public h(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setPowerKeyLongPressState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public i(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setPowerKeyPressState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public j(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setRecentKeyState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public k(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setRecoveryState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public l(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setSDCardState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public m(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setSettingsExtraItemsState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public n(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setStatusBarSwipeState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public o(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setSuspendNotificationState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setSystemTime"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "&"

    .line 3
    invoke-static {p2, v2, p3, v2, p4}, Lcom/huawei/hem/f6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "parameter"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public q(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setUsbConnectionState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public r(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setVolumeKeyState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method

.method public s(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/yi;->a:Lcom/huawei/hem/zi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.zxkmanager.executor"

    const-string v2, "task"

    const-string v3, "setWifiProxyState"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/huawei/hem/f6;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, ""

    const-string v3, "parameter"

    .line 3
    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->H(ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw v1
.end method
