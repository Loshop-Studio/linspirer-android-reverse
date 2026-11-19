.class public Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LinspirerLauncherReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）、保存字符串偏好（SharedPreferences$Editor.putString）。
.method public final a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "LinspirerLauncherReceiver, ====>logout===start"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->c0(I)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->q0(I)V

    .line 5
    iget v2, v0, Lcom/huawei/hem/y5;->w:I

    if-eqz v2, :cond_0

    .line 6
    iput v1, v0, Lcom/huawei/hem/y5;->w:I

    .line 7
    iget-object v2, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 8
    iget-object v3, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "launcher_start_mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-object v1, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v1, ""

    .line 10
    iget-object v2, v0, Lcom/huawei/hem/y5;->x:Ljava/lang/String;

    if-eq v2, v1, :cond_1

    .line 11
    iput-object v1, v0, Lcom/huawei/hem/y5;->x:Ljava/lang/String;

    .line 12
    iget-object v2, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 13
    iget-object v3, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "launcher_start_package"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    iget-object v1, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->a0(I)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->Z(I)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->r0(I)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->k0(I)V

    const-string v0, "send logout to appstore broadcast"

    .line 19
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "com.drupe.swd.launcher.action.self.logout"

    .line 20
    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->R(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "send logout broadcast to isv"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.mdm.LOGOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.zykj.manage"

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;->a(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    const-string v0, "%s user logout by linspirer mdm"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->recordAccountOut(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x39cadac4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x52b9b489

    if-eq v1, v2, :cond_2

    const v2, 0x5dbcaff9

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.linspirer.edu.logout"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v0, v5

    goto :goto_0

    :cond_2
    const-string v1, "com.drupe.swd.launcher.action.pull.tactics"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "com.linspirer.edu.homeaction"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v0, v4

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    goto :goto_1

    .line 4
    :cond_5
    sget-object p1, Lcom/huawei/hem/s5$b;->a:Lcom/huawei/hem/s5;

    .line 5
    invoke-virtual {p1}, Lcom/huawei/hem/s5;->a()V

    goto :goto_1

    :cond_6
    const-string p2, "LinspirerLauncherReceiver\uff0c\u6536\u5230ISV\u6ce8\u9500\u5e7f\u64ad"

    .line 6
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    invoke-static {p1, v3}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;->a(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    const-string p2, "%s user logout by isv app"

    invoke-virtual {p1, p2}, Lcom/android/launcher3/network/DeviceLogHelper;->recordAccountOut(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string p1, "LinspirerLauncherReceiver refresh tactics "

    .line 10
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/android/launcher3/network/TacticsHelper;->getInstance()Lcom/android/launcher3/network/TacticsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/TacticsHelper;->request()V

    .line 12
    invoke-static {}, Lcom/huawei/hem/r5;->a()Lcom/huawei/hem/r5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/r5;->b()V

    :cond_8
    :goto_1
    return-void
.end method
