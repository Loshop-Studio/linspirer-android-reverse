.class public Lcom/huawei/hem/b1;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/huawei/hem/y0;I)Landroid/app/PendingIntent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/aliyun/ams/emas/push/MsgService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/huawei/hem/v0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_type"

    const-string v2, "notification_delete"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p2, Lcom/huawei/hem/y0;->l:Ljava/lang/String;

    const-string v2, "task_id"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p2, Lcom/huawei/hem/y0;->m:Ljava/lang/String;

    const-string v2, "extData"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p2, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    const-string v2, "msgId"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v1, p2, Lcom/huawei/hem/y0;->d:Ljava/lang/String;

    const-string v2, "title"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v1, p2, Lcom/huawei/hem/y0;->e:Ljava/lang/String;

    const-string v2, "summary"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget v1, p2, Lcom/huawei/hem/y0;->i:I

    const-string v2, "notificationOpenType"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    iget v1, p2, Lcom/huawei/hem/y0;->j:I

    const-string v2, "notificationId"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    iget-object v1, p2, Lcom/huawei/hem/y0;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Lorg/json/JSONObject;

    .line 21
    iget-object v2, p2, Lcom/huawei/hem/y0;->a:Ljava/util/Map;

    .line 22
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 23
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraMap"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "delete content messageId:"

    .line 24
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    iget-object v2, p2, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MPS:MessageNotification"

    invoke-static {v3, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object p2, p2, Lcom/huawei/hem/y0;->c:Ljava/lang/String;

    const-string v1, "appId"

    .line 28
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    .line 29
    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;Lcom/huawei/hem/y0;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/aliyun/ams/emas/push/MsgService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/aliyun/ams/emas/push/NotificationActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :goto_1
    sget-object v1, Lcom/huawei/hem/v0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_type"

    const-string v3, "notification_open"

    .line 6
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p2, Lcom/huawei/hem/y0;->l:Ljava/lang/String;

    const-string v3, "task_id"

    .line 8
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p2, Lcom/huawei/hem/y0;->m:Ljava/lang/String;

    const-string v3, "extData"

    .line 10
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v1, p2, Lcom/huawei/hem/y0;->d:Ljava/lang/String;

    const-string v3, "title"

    .line 12
    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v1, p2, Lcom/huawei/hem/y0;->e:Ljava/lang/String;

    const-string v3, "summary"

    .line 14
    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object v1, p2, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    const-string v3, "msgId"

    .line 16
    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v1, p2, Lcom/huawei/hem/y0;->c:Ljava/lang/String;

    const-string v4, "appId"

    .line 18
    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget v1, p2, Lcom/huawei/hem/y0;->i:I

    const-string v4, "notificationOpenType"

    .line 20
    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    iget v1, p2, Lcom/huawei/hem/y0;->j:I

    const-string v4, "notificationId"

    .line 22
    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    iget-object v1, p2, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v1, p2, Lcom/huawei/hem/y0;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    .line 27
    iget-object v3, p2, Lcom/huawei/hem/y0;->a:Ljava/util/Map;

    .line 28
    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 29
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "extraMap"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "build content messageId:"

    .line 30
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    iget-object p2, p2, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "MPS:MessageNotification"

    invoke-static {v3, p2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "realIntent"

    .line 33
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 p3, 0xc000000

    if-gt p2, v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le p2, v2, :cond_3

    goto :goto_2

    .line 35
    :cond_3
    invoke-static {p1, p4, v0, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 36
    :cond_4
    :goto_2
    invoke-static {p1, p4, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/aliyun/ams/emas/push/notification/CPushMessage;"
        }
    .end annotation

    const-string v0, "title"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "content"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "extData"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    invoke-direct {p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;-><init>()V

    .line 6
    iput-object p3, p1, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p1, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->b:Ljava/lang/String;

    .line 8
    iput-object v0, p1, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->c:Ljava/lang/String;

    .line 9
    iput-object v1, p1, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->d:Ljava/lang/String;

    .line 10
    iput-object v2, p1, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->e:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const-string p2, "Message title or content is empty:"

    .line 11
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "MPS:MessageNotification"

    invoke-static {p3, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/y0;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hem/y0;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "_ALIYUN_NOTIFICATION_MSG_ID_"

    const-string v2, "_ALIYUN_NOTIFICATION_PRIORITY_"

    const-string v3, "title"

    .line 1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "content"

    .line 2
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "MPS:MessageNotification"

    if-nez v5, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    new-instance v5, Lcom/huawei/hem/y0;

    invoke-direct {v5}, Lcom/huawei/hem/y0;-><init>()V

    const-string v9, "open"

    .line 5
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    .line 7
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    const-string v10, "url"

    .line 8
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "activity"

    .line 9
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "ext"

    .line 10
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "task_id"

    .line 11
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "extData"

    .line 12
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "notification_channel"

    .line 13
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v7, "notify_id"

    .line 14
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 16
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v17, v9

    goto :goto_2

    .line 17
    :cond_2
    sget v7, Lcom/huawei/hem/v0;->g:I

    if-nez v7, :cond_4

    .line 18
    sget-object v7, Lcom/huawei/hem/v0;->h:Ljava/util/Random;

    if-nez v7, :cond_3

    .line 19
    new-instance v7, Ljava/util/Random;

    move-object/from16 v17, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Random;-><init>(J)V

    sput-object v7, Lcom/huawei/hem/v0;->h:Ljava/util/Random;

    goto :goto_0

    :cond_3
    move-object/from16 v17, v9

    .line 20
    :goto_0
    sget-object v7, Lcom/huawei/hem/v0;->h:Ljava/util/Random;

    const v8, 0xf4240

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    sput v7, Lcom/huawei/hem/v0;->g:I

    if-gez v7, :cond_5

    mul-int/lit8 v7, v7, -0x1

    .line 21
    sput v7, Lcom/huawei/hem/v0;->g:I

    goto :goto_1

    :cond_4
    move-object/from16 v17, v9

    .line 22
    :cond_5
    :goto_1
    sget v7, Lcom/huawei/hem/v0;->g:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lcom/huawei/hem/v0;->g:I

    :goto_2
    move-object/from16 v8, p2

    .line 23
    iput-object v8, v5, Lcom/huawei/hem/y0;->c:Ljava/lang/String;

    move-object/from16 v8, p3

    .line 24
    iput-object v8, v5, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    .line 25
    iput-object v13, v5, Lcom/huawei/hem/y0;->l:Ljava/lang/String;

    .line 26
    iput-object v14, v5, Lcom/huawei/hem/y0;->m:Ljava/lang/String;

    const-string v8, "message_source"

    .line 27
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 28
    iput-object v8, v5, Lcom/huawei/hem/y0;->n:Ljava/lang/String;

    .line 29
    iput-object v3, v5, Lcom/huawei/hem/y0;->d:Ljava/lang/String;

    .line 30
    iput-object v4, v5, Lcom/huawei/hem/y0;->e:Ljava/lang/String;

    .line 31
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 32
    iput v3, v5, Lcom/huawei/hem/y0;->i:I

    .line 33
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v10, 0x0

    .line 34
    :cond_6
    iput-object v10, v5, Lcom/huawei/hem/y0;->f:Ljava/lang/String;

    .line 35
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v11, 0x0

    .line 36
    :cond_7
    iput-object v11, v5, Lcom/huawei/hem/y0;->g:Ljava/lang/String;

    if-gez v7, :cond_8

    mul-int/lit8 v7, v7, -0x1

    .line 37
    iput v7, v5, Lcom/huawei/hem/y0;->j:I

    goto :goto_3

    .line 38
    :cond_8
    iput v7, v5, Lcom/huawei/hem/y0;->j:I

    .line 39
    :goto_3
    iput-object v15, v5, Lcom/huawei/hem/y0;->h:Ljava/lang/String;

    .line 40
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 41
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {v3}, Lcom/taobao/accs/utl/JsonUtility;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "_ALIYUN_NOTIFICATION_ID_"

    .line 43
    iget v7, v5, Lcom/huawei/hem/y0;->j:I

    .line 44
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 46
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    invoke-virtual {v5, v2}, Lcom/huawei/hem/y0;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    .line 48
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v5, v4}, Lcom/huawei/hem/y0;->a(Ljava/lang/String;)V

    .line 49
    :goto_4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object v3, v5, Lcom/huawei/hem/y0;->a:Ljava/util/Map;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :goto_5
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Parse inner json(ext) error:"

    .line 51
    invoke-static {v6, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_a
    :goto_6
    return-object v5

    .line 52
    :cond_b
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title or content of notify is empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
