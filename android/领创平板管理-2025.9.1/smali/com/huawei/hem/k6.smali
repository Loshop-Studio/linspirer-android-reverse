.class public Lcom/huawei/hem/k6;
.super Ljava/lang/Object;
.source "FnfSDK.java"


# static fields
.field public static d:Lcom/huawei/hem/k6;


# instance fields
.field public a:Lcom/huawei/hem/l6;

.field public b:Lcom/huawei/hem/j6;

.field public c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/k6$a;

    invoke-direct {v0, p0}, Lcom/huawei/hem/k6$a;-><init>(Lcom/huawei/hem/k6;)V

    iput-object v0, p0, Lcom/huawei/hem/k6;->c:Landroid/content/ServiceConnection;

    .line 3
    new-instance v0, Lcom/huawei/hem/l6;

    invoke-direct {v0}, Lcom/huawei/hem/l6;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.devicepolicy"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "parameter"

    .line 4
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.bluetooth"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public c(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.camera"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public d(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.gps"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public e(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.powerLong"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public f(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.powerShort"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public g(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.esdcard"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public h(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.voicekey"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public i(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.wifi"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public j(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.bluetooth"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public k(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.camera"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public l(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.gps"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public m(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.powerLong"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public n(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.powerShort"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public o(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.esdcard"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public p(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.voicekey"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public q(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.wifi"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public r(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.backkey"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public s(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.homekey"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public t(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.recentkey"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "true"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "com.fnf.iptables.IPTABLE_CMD"

    const-string v1, "com.fnf.iptables"

    const-string v2, "com.fnf.iptables.IPTableService"

    const-string v3, "cmd"

    .line 2
    invoke-static {v0, v1, v2, v3, p2}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public v(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hem/m6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    .line 2
    iput-object p3, v0, Lcom/huawei/hem/l6;->d:Lcom/huawei/hem/m6;

    .line 3
    invoke-interface {p3, p2}, Lcom/huawei/hem/m6;->b(Ljava/lang/String;)V

    .line 4
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.fnf.iptables.IPTABLE_CMD"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.fnf.iptables"

    const-string v1, "com.fnf.iptables.IPTableService"

    .line 5
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cmd"

    .line 6
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public w(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.backkey"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public x(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.homekey"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public y(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    const-string v0, "action.executor"

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    const-string v3, "task"

    const-string v4, "task.recentkey"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parameter"

    const-string v2, "false"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
