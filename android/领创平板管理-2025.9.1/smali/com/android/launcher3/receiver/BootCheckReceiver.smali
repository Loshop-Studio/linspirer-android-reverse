.class public Lcom/android/launcher3/receiver/BootCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCheckReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====BootCheckReceiver==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootCheckReceiver"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 7
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p2, Lcom/huawei/hem/x1;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    const-class p2, Lcom/android/launcher3/LauncherNew;

    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "=====BootCheckReceiver=== empty"

    .line 10
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 11
    :cond_3
    :goto_1
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 12
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->N()I

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->j()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 14
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableRecent()V

    goto :goto_2

    .line 15
    :cond_4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableRecent()V

    .line 16
    :goto_2
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->i()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 17
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableHome()V

    goto :goto_3

    .line 18
    :cond_5
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableHome()V

    .line 19
    :goto_3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableBack()V

    .line 20
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->checkTimeLimitByScreenOn()V

    :try_start_0
    const-string v0, "=====to keepAliveStore==="

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {v1, v0}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.ndwill.swd.appstore"

    const-string v5, "com.ndwill.swd.appstore.activity.EmptyActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "keepalive"

    .line 26
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "=====keepalive==="

    .line 28
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {v1, v2}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    const-string v0, "start appstore failed"

    .line 31
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_6
    :goto_4
    const-string p1, "BootCheckReceivercheck firewall status on boot check"

    .line 32
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    if-nez p1, :cond_7

    goto :goto_5

    .line 34
    :cond_7
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->m()I

    move-result p1

    if-nez p1, :cond_8

    .line 35
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableFireWall()V

    goto :goto_5

    .line 36
    :cond_8
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->R()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableFireWall()V

    :cond_9
    :goto_5
    return-void
.end method
