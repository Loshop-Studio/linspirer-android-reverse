.class public final Lcom/huawei/hem/t0;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public final synthetic a:Lcom/huawei/hem/y0;

.field public final synthetic b:Lcom/huawei/hem/b1;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/huawei/hem/l0;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/y0;Lcom/huawei/hem/b1;Landroid/content/Context;Lcom/huawei/hem/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/t0;->a:Lcom/huawei/hem/y0;

    iput-object p2, p0, Lcom/huawei/hem/t0;->b:Lcom/huawei/hem/b1;

    iput-object p3, p0, Lcom/huawei/hem/t0;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/huawei/hem/t0;->d:Lcom/huawei/hem/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Notification;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "push created notification"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hem/t0;->a:Lcom/huawei/hem/y0;

    .line 2
    iget-object v2, v2, Lcom/huawei/hem/y0;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/t0;->b:Lcom/huawei/hem/b1;

    iget-object v1, p0, Lcom/huawei/hem/t0;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hem/t0;->a:Lcom/huawei/hem/y0;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const-string v4, "MPS:MessageNotification"

    :try_start_0
    const-string v5, "notification"

    .line 5
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, v0, Lcom/huawei/hem/b1;->a:Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v5, ""

    if-nez p1, :cond_0

    .line 6
    :try_start_1
    new-instance p1, Lcom/huawei/hem/w0;

    invoke-direct {p1}, Lcom/huawei/hem/w0;-><init>()V

    .line 7
    iget-object v6, v2, Lcom/huawei/hem/y0;->d:Ljava/lang/String;

    .line 8
    iput-object v6, p1, Lcom/huawei/hem/z0;->a:Ljava/lang/String;

    .line 9
    iget-object v6, v2, Lcom/huawei/hem/y0;->e:Ljava/lang/String;

    .line 10
    iput-object v6, p1, Lcom/huawei/hem/z0;->b:Ljava/lang/String;

    .line 11
    iget v6, v2, Lcom/huawei/hem/y0;->k:I

    .line 12
    iput v6, p1, Lcom/huawei/hem/z0;->c:I

    .line 13
    iget-object v6, v2, Lcom/huawei/hem/y0;->h:Ljava/lang/String;

    .line 14
    iput-object v6, p1, Lcom/huawei/hem/z0;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v1}, Lcom/huawei/hem/w0;->a(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Landroid/app/Notification;

    const v6, 0x1080077

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p1, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 17
    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "appId"

    .line 18
    iget-object v8, v2, Lcom/huawei/hem/y0;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "msgId"

    .line 20
    iget-object v8, v2, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "task_id"

    .line 22
    iget-object v8, v2, Lcom/huawei/hem/y0;->l:Ljava/lang/String;

    .line 23
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "extData"

    .line 24
    iget-object v8, v2, Lcom/huawei/hem/y0;->m:Ljava/lang/String;

    .line 25
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "message_source"

    .line 26
    iget-object v8, v2, Lcom/huawei/hem/y0;->n:Ljava/lang/String;

    .line 27
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10200000

    .line 28
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 29
    :try_start_2
    iget v10, v2, Lcom/huawei/hem/y0;->i:I

    if-eq v10, v8, :cond_4

    if-eq v10, v7, :cond_3

    const/4 v11, 0x3

    if-eq v10, v11, :cond_2

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "no action"

    goto :goto_0

    :cond_2
    const-string v5, "url"

    const-string v10, "android.intent.action.VIEW"

    .line 30
    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v10, v2, Lcom/huawei/hem/y0;->f:Ljava/lang/String;

    .line 32
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v5, "activity"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :try_start_3
    iget-object v10, v2, Lcom/huawei/hem/y0;->g:Ljava/lang/String;

    .line 34
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 35
    invoke-virtual {v6, v1, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    :try_start_4
    const-string v11, "can\'t find certain activity class: "

    new-array v12, v9, [Ljava/lang/Object;

    .line 36
    invoke-static {v4, v11, v10, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v5, "app"

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 38
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "open type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_5
    const-string v10, "openType excption"

    new-array v11, v9, [Ljava/lang/Object;

    .line 39
    invoke-static {v4, v10, v5, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    :goto_1
    invoke-static {}, Lcom/huawei/hem/v0;->b()I

    move-result v5

    invoke-virtual {v0, v1, v2, v6, v5}, Lcom/huawei/hem/b1;->b(Landroid/content/Context;Lcom/huawei/hem/y0;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 41
    iput-object v5, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 42
    invoke-static {}, Lcom/huawei/hem/v0;->b()I

    move-result v5

    invoke-virtual {v0, v1, v2, v5}, Lcom/huawei/hem/b1;->a(Landroid/content/Context;Lcom/huawei/hem/y0;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 43
    iput-object v1, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 44
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v5, v2, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";appId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v5, v2, Lcom/huawei/hem/y0;->c:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";messageType=notify"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v9

    .line 49
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 50
    invoke-static {v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_7
    const-string v5, "ut log error"

    new-array v6, v9, [Ljava/lang/Object;

    .line 51
    invoke-static {v4, v5, v1, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 52
    :goto_2
    sget-object v1, Lcom/huawei/hem/o0;->a:Lcom/huawei/hem/o0;

    if-nez v1, :cond_5

    .line 53
    new-instance v1, Lcom/huawei/hem/o0;

    invoke-direct {v1}, Lcom/huawei/hem/o0;-><init>()V

    sput-object v1, Lcom/huawei/hem/o0;->a:Lcom/huawei/hem/o0;

    .line 54
    :cond_5
    sget-object v1, Lcom/huawei/hem/o0;->a:Lcom/huawei/hem/o0;

    .line 55
    iget v4, v2, Lcom/huawei/hem/y0;->j:I

    if-eqz v1, :cond_6

    .line 56
    sget-object v1, Lcom/huawei/hem/o0;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, v0, Lcom/huawei/hem/b1;->a:Landroid/app/NotificationManager;

    .line 58
    iget v1, v2, Lcom/huawei/hem/y0;->j:I

    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 60
    sget-object p1, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "push notify notification"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 61
    :cond_6
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 62
    sget-object v0, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "onNotification"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :goto_3
    sget-object p1, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "push onNotificationShow "

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/t0;->a:Lcom/huawei/hem/y0;

    .line 64
    iget-object v1, v1, Lcom/huawei/hem/y0;->d:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/huawei/hem/t0;->d:Lcom/huawei/hem/l0;

    iget-object v0, p0, Lcom/huawei/hem/t0;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/hem/t0;->a:Lcom/huawei/hem/y0;

    .line 67
    iget-object v2, v1, Lcom/huawei/hem/y0;->d:Ljava/lang/String;

    .line 68
    iget-object v3, v1, Lcom/huawei/hem/y0;->e:Ljava/lang/String;

    .line 69
    iget-object v1, v1, Lcom/huawei/hem/y0;->a:Ljava/util/Map;

    .line 70
    invoke-interface {p1, v0, v2, v3, v1}, Lcom/huawei/hem/l0;->onNotificationShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 71
    :cond_7
    throw v3
.end method
