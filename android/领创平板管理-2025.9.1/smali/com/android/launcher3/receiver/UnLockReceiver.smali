.class public Lcom/android/launcher3/receiver/UnLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnLockReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "UnLockReceiver device is release control no need receiver ScreenState"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnLockReceiver action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    sget-object p2, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 8
    invoke-virtual {p2}, Lcom/android/launcher3/GuardSecureApplication;->b()V

    .line 9
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p2, v0}, Lcom/huawei/hem/y5;->h0(Z)V

    const-string p2, "UnLockReceiver isv launcher send broadcast "

    .line 11
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string p2, "send  refresh desktop broadcast"

    .line 12
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string p2, "com.linspirer.launcher3.refresh_launcher"

    .line 13
    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->K()V

    :cond_2
    return-void
.end method
