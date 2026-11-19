.class public Lcom/huawei/hem/q0;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static A()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.mms"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.mms.service"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.messaging"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.hihonor.mms"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static B()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.android.contacts"

    const-string v1, "com.android.dialer"

    const-string v2, "com.huawei.contacts"

    const-string v3, "com.tct.dialer"

    const-string v4, "com.hihonor.contacts"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "com.samsung.android.app.contacts"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static C()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.huawei.phoneservice"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.huawei.hwid"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static D()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.launcher3"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.ndwill.swd.appstore"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.zykj.manage"

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 6
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static E()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.settings"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static F()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hem/t3;->c()Lcom/android/launcher3/db/model/ItemAppDao;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/db/model/ItemApp;

    .line 6
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {}, Lcom/huawei/hem/e1;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "0"

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "CI"

    const-string v3, "TS"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    :try_start_0
    invoke-static {p0}, Lcom/huawei/hem/e1;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "CI"

    const-string p2, "Sco"

    invoke-static {p0, p1, p2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/huawei/hem/q0;->p(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "MD5"

    const-string v1, "gmb"

    invoke-static {p0, v0, v1}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/huawei/hem/l1;->z([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 2

    const-string v0, "ETUQ1"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/huawei/hem/q0;->l([BLjava/lang/String;)[B

    move-result-object p0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/huawei/hem/l1;->C([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "ut"

    const-string v1, "h2s"

    invoke-static {p0, v0, v1}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 4

    const-string v0, "pu"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URI;

    const-string v3, "http://restsdk.amap.com"

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->u(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-eqz p0, :cond_2

    .line 2
    :try_start_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/Proxy;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    const-string v2, "gpsc"

    invoke-static {p0, v0, v2}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    const-string v2, "gp"

    .line 3
    invoke-static {p0, v0, v2}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static f(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/hem/l0;)V
    .locals 8

    :try_start_0
    const-string v0, "messageId"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "summary"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "extraMap"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "notificationOpenType"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 6
    sget-object p1, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification opened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p0

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/huawei/hem/l0;->onNotificationOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "AgooPushHandler"

    const-string v0, "Handle notification open action failed."

    .line 8
    invoke-static {p2, v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/hem/m0;Lcom/huawei/hem/l0;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "message_source"

    const-string v2, "extData"

    const-string v3, "task_id"

    const-string v4, "AgooPushHandler"

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "id"

    .line 1
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "handle message Null messageId!"

    new-array v1, v5, [Ljava/lang/Object;

    .line 3
    invoke-static {v4, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v6, "body"

    .line 4
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "handle message json body is Empty!"

    new-array v1, v5, [Ljava/lang/Object;

    .line 9
    invoke-static {v4, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    const/4 v11, 0x0

    .line 10
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Lcom/taobao/accs/utl/JsonUtility;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v12, "Parse json error:"

    new-array v13, v5, [Ljava/lang/Object;

    .line 12
    invoke-static {v4, v12, v0, v13}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    const-string v0, "type"

    .line 13
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    sget-object v0, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handle message, messageId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", type:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", msg receive:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 15
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 16
    sget-object v13, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v6}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "msg_id"

    .line 17
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    invoke-interface {v11, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-interface {v11, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_ALIYUN_NOTIFICATION_MSG_ID_"

    .line 21
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/huawei/hem/v0;->d:Lcom/huawei/hem/u0;

    .line 23
    iget-boolean v1, v0, Lcom/huawei/hem/u0;->f:Z

    if-nez v1, :cond_3

    goto :goto_2

    .line 24
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 25
    iget v2, v0, Lcom/huawei/hem/u0;->b:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, v0, Lcom/huawei/hem/u0;->c:I

    add-int/2addr v2, v3

    .line 26
    iget v3, v0, Lcom/huawei/hem/u0;->d:I

    mul-int/lit8 v3, v3, 0x3c

    iget v0, v0, Lcom/huawei/hem/u0;->e:I

    add-int/2addr v3, v0

    const/16 v0, 0xb

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x1

    if-gt v2, v3, :cond_4

    if-lt v1, v2, :cond_5

    if-gt v1, v3, :cond_5

    goto :goto_3

    :cond_4
    if-ge v1, v2, :cond_6

    if-gt v1, v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v5

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 28
    sget-object v0, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "Push received in DoNotDisturb time window, ignored."

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_7
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 29
    invoke-static/range {v7 .. v12}, Lcom/huawei/hem/q0;->h(Landroid/content/Context;Lcom/huawei/hem/m0;Lcom/huawei/hem/l0;Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_4

    :catchall_0
    move-exception v0

    const-string v1, "Wrong message Type Define!"

    new-array v2, v5, [Ljava/lang/Object;

    .line 30
    invoke-static {v4, v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "onHandleCallException"

    .line 31
    invoke-static {v4, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/huawei/hem/m0;Lcom/huawei/hem/l0;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hem/m0;",
            "Lcom/huawei/hem/l0;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object v2, p0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    .line 1
    new-instance v6, Lcom/huawei/hem/b1;

    invoke-direct {v6}, Lcom/huawei/hem/b1;-><init>()V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v10, "AgooPushHandler"

    if-eq v5, v7, :cond_2

    const/4 v0, 0x2

    if-eq v5, v0, :cond_0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "Wrong message Type Define!"

    .line 2
    invoke-static {v10, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {p0}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 4
    :try_start_0
    invoke-virtual {v6, p4, v8, p3}, Lcom/huawei/hem/b1;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5
    iget-object v4, v3, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->a:Ljava/lang/String;

    .line 6
    sget-object v6, Lcom/huawei/hem/v0;->e:Lcom/huawei/hem/n0;

    if-eqz v6, :cond_1

    .line 7
    invoke-interface {v6, p0, v4, v5}, Lcom/huawei/hem/n0;->reportPushArrive(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v5, v3, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v5, v3, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";messageType=msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v0, v9

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    .line 14
    invoke-static {v10, v4, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v4, "ut log error"

    new-array v5, v9, [Ljava/lang/Object;

    .line 15
    invoke-static {v10, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    invoke-interface {p2, p0, v3}, Lcom/huawei/hem/l0;->onMessageArrived(Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Custom message parse error:"

    .line 17
    invoke-static {v10, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_2
    :try_start_3
    invoke-static {p0}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v6, p4, v7, p3}, Lcom/huawei/hem/b1;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/y0;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 20
    iget-object v7, v3, Lcom/huawei/hem/y0;->b:Ljava/lang/String;

    .line 21
    sget-object v8, Lcom/huawei/hem/v0;->e:Lcom/huawei/hem/n0;

    if-eqz v8, :cond_3

    .line 22
    invoke-interface {v8, p0, v7, v5}, Lcom/huawei/hem/n0;->reportPushArrive(Landroid/content/Context;Ljava/lang/String;I)V

    .line 23
    :cond_3
    invoke-interface {p1, p0, p4}, Lcom/huawei/hem/m0;->showNotificationNow(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 24
    new-instance v5, Lcom/huawei/hem/t0;

    invoke-direct {v5, v3, v6, p0, p2}, Lcom/huawei/hem/t0;-><init>(Lcom/huawei/hem/y0;Lcom/huawei/hem/b1;Landroid/content/Context;Lcom/huawei/hem/l0;)V

    invoke-static {p0, p1, p4, v5}, Lcom/huawei/hem/q0;->i(Landroid/content/Context;Lcom/huawei/hem/m0;Ljava/util/Map;Lcom/huawei/hem/t0;)V

    goto :goto_1

    .line 25
    :cond_4
    sget-object v0, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v4, "do not build notification as user request"

    invoke-interface {v0, v4}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    .line 26
    iget-object v0, v3, Lcom/huawei/hem/y0;->d:Ljava/lang/String;

    .line 27
    iget-object v4, v3, Lcom/huawei/hem/y0;->e:Ljava/lang/String;

    .line 28
    iget-object v5, v3, Lcom/huawei/hem/y0;->a:Ljava/util/Map;

    .line 29
    iget v6, v3, Lcom/huawei/hem/y0;->i:I

    .line 30
    iget-object v7, v3, Lcom/huawei/hem/y0;->g:Ljava/lang/String;

    .line 31
    iget-object v8, v3, Lcom/huawei/hem/y0;->f:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p0

    move-object v3, v0

    .line 32
    invoke-interface/range {v1 .. v8}, Lcom/huawei/hem/l0;->onNotificationReceivedWithoutShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify title is null or server push data Error appId =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Notify message error:"

    .line 34
    invoke-static {v10, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/huawei/hem/m0;Ljava/util/Map;Lcom/huawei/hem/t0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hem/m0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/hem/t0;",
            ")V"
        }
    .end annotation

    const-string v0, "image"

    .line 1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "big_picture"

    .line 2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, p0, p2}, Lcom/huawei/hem/m0;->customNotificationUI(Landroid/content/Context;Ljava/util/Map;)Landroid/app/Notification;

    move-result-object p0

    .line 5
    invoke-virtual {p3, p0}, Lcom/huawei/hem/t0;->a(Landroid/app/Notification;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    move-object v6, v0

    .line 8
    new-instance v0, Lcom/huawei/hem/r0;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/huawei/hem/r0;-><init>(Lcom/huawei/hem/m0;Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;Lcom/huawei/hem/t0;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    :goto_0
    invoke-static {p1}, Lcom/huawei/hem/l1;->n(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/huawei/hem/l1;->i(Ljava/io/ByteArrayOutputStream;B[B)V

    return-void

    :cond_1
    const/4 p1, 0x0

    new-array v0, p1, [B

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/l1;->i(Ljava/io/ByteArrayOutputStream;B[B)V

    return-void
.end method

.method public static k(Lcom/huawei/hem/g1;)[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/huawei/hem/g1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/huawei/hem/g1;->x:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/huawei/hem/q0;->j(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/l1;->s([B)[B

    move-result-object p0

    .line 1
    invoke-static {}, Lcom/huawei/hem/l1;->w()Ljava/security/PublicKey;

    move-result-object v2

    array-length v3, p0

    const/16 v4, 0x75

    if-le v3, v4, :cond_0

    new-array v3, v4, [B

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v2}, Lcom/huawei/hem/h1;->b([BLjava/security/Key;)[B

    move-result-object v2

    array-length v3, p0

    const/16 v6, 0x80

    add-int/2addr v3, v6

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    sub-int/2addr v2, v4

    invoke-static {p0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lcom/huawei/hem/h1;->b([BLjava/security/Key;)[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v3

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    const-string v2, "CI"

    const-string v3, "gzx"

    invoke-static {p0, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method

.method public static l([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "MD5"

    const-string v0, "gmb"

    invoke-static {p0, p1, v0}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static m(Landroid/content/Context;ZZ)Lcom/huawei/hem/g1;
    .locals 12

    new-instance v0, Lcom/huawei/hem/g1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/g1;-><init>(B)V

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    iput-object v2, v0, Lcom/huawei/hem/g1;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hem/e1;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->d:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v0, Lcom/huawei/hem/g1;->e:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v0, Lcom/huawei/hem/g1;->f:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v2, v0, Lcom/huawei/hem/g1;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hem/e1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hem/e1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->i:Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->k:Ljava/lang/String;

    .line 1
    :try_start_0
    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->s:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->s:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->s:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "*"

    if-le v2, v4, :cond_3

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->s:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->s:Ljava/lang/String;

    .line 2
    :goto_1
    iput-object v2, v0, Lcom/huawei/hem/g1;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->u(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, -0x1

    .line 3
    :try_start_2
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->h(Landroid/content/Context;)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move v5, v4

    .line 4
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/g1;->n:Ljava/lang/String;

    .line 5
    :try_start_3
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-object v2, v3

    .line 6
    :goto_3
    iput-object v2, v0, Lcom/huawei/hem/g1;->o:Ljava/lang/String;

    .line 7
    sget-boolean v2, Lcom/amap/apis/utils/core/DeviceInfo;->r:Z

    const-string v5, "phone"

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    goto :goto_6

    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->k(Landroid/content/Context;)Lcom/amap/apis/utils/core/DeviceInfo$d;

    .line 8
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_5

    goto :goto_5

    .line 9
    :cond_5
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->q:Ljava/lang/String;

    sput-boolean v6, Lcom/amap/apis/utils/core/DeviceInfo;->r:Z

    goto :goto_6

    :cond_7
    :goto_4
    sput-boolean v6, Lcom/amap/apis/utils/core/DeviceInfo;->r:Z

    :goto_5
    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->q:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :catchall_3
    :goto_6
    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->q:Ljava/lang/String;

    .line 10
    :goto_7
    iput-object v2, v0, Lcom/huawei/hem/g1;->p:Ljava/lang/String;

    iput-object v3, v0, Lcom/huawei/hem/g1;->q:Ljava/lang/String;

    iput-object v3, v0, Lcom/huawei/hem/g1;->r:Ljava/lang/String;

    if-eqz p1, :cond_8

    iput-object v3, v0, Lcom/huawei/hem/g1;->s:Ljava/lang/String;

    iput-object v3, v0, Lcom/huawei/hem/g1;->t:Ljava/lang/String;

    goto :goto_8

    .line 11
    :cond_8
    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object p1

    .line 12
    aget-object v2, p1, v1

    iput-object v2, v0, Lcom/huawei/hem/g1;->s:Ljava/lang/String;

    aget-object p1, p1, v6

    iput-object p1, v0, Lcom/huawei/hem/g1;->t:Ljava/lang/String;

    .line 13
    :goto_8
    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->d:Ljava/lang/String;

    .line 14
    iput-object p1, v0, Lcom/huawei/hem/g1;->u:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object p1, v0, Lcom/huawei/hem/g1;->v:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iput-object v3, v0, Lcom/huawei/hem/g1;->v:Ljava/lang/String;

    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "aid="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    if-eqz p2, :cond_a

    sget-boolean p1, Lcom/huawei/hem/m1;->d:Z

    if-nez p1, :cond_b

    :cond_a
    sget-boolean p1, Lcom/huawei/hem/m1;->e:Z

    if-eqz p1, :cond_c

    :cond_b
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    const-string v7, "|oaid="

    invoke-static {p2, v2, v7, p1}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    :cond_c
    const-string p1, ","

    .line 15
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p2, v2, :cond_d

    goto/16 :goto_e

    :cond_d
    :try_start_5
    sget-object p2, Lcom/amap/apis/utils/core/DeviceInfo;->w:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_a

    :cond_e
    sget-boolean p2, Lcom/amap/apis/utils/core/DeviceInfo;->x:Z

    if-eqz p2, :cond_f

    :goto_a
    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->w:Ljava/lang/String;

    goto/16 :goto_f

    .line 16
    :cond_f
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 17
    sget v7, Lcom/amap/apis/utils/core/DeviceInfo;->v:I

    if-ne v7, v4, :cond_11

    const-class v4, Landroid/telephony/TelephonyManager;

    const-string v7, "UZ2V0UGhvbmVDb3VudA="

    new-array v8, v1, [Ljava/lang/Class;

    invoke-static {v4, v7, v8}, Lcom/huawei/hem/l1;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v4, :cond_10

    :try_start_6
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/amap/apis/utils/core/DeviceInfo;->v:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_b

    :catchall_4
    :cond_10
    :try_start_7
    sput v1, Lcom/amap/apis/utils/core/DeviceInfo;->v:I

    :cond_11
    :goto_b
    const-class v4, Landroid/telephony/TelephonyManager;

    const-string v7, "MZ2V0SW1laQ="

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-static {v4, v7, v8}, Lcom/huawei/hem/l1;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_12

    goto :goto_d

    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move v8, v1

    :goto_c
    :try_start_8
    sget v9, Lcom/amap/apis/utils/core/DeviceInfo;->v:I

    if-ge v8, v9, :cond_13

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v4, p2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :catchall_5
    :cond_13
    :try_start_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_14

    :goto_d
    sput v1, Lcom/amap/apis/utils/core/DeviceInfo;->v:I

    sput-boolean v6, Lcom/amap/apis/utils/core/DeviceInfo;->x:Z

    goto :goto_e

    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v6

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->w:Ljava/lang/String;

    sput-boolean v6, Lcom/amap/apis/utils/core/DeviceInfo;->x:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_f

    :catchall_6
    :goto_e
    move-object p1, v3

    .line 18
    :goto_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_15

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    const-string v7, "|multiImeis="

    invoke-static {p2, v4, v7, p1}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    .line 19
    :cond_15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_16

    goto :goto_10

    :cond_16
    :try_start_a
    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->u:Ljava/lang/String;

    if-eqz p1, :cond_17

    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->u:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_11

    :cond_17
    const-string p1, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {p1}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_11

    .line 20
    :cond_18
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_19

    :goto_10
    move-object p1, v3

    goto :goto_12

    .line 21
    :cond_19
    sget-boolean p2, Lcom/amap/apis/utils/core/DeviceInfo;->A:Z

    if-eqz p2, :cond_1a

    :goto_11
    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->u:Ljava/lang/String;

    goto :goto_12

    :cond_1a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p2, v2, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "QZ2V0TWVpZA=="

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {p2, v2, v4}, Lcom/huawei/hem/l1;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1b

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->u:Ljava/lang/String;

    :cond_1b
    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->u:Ljava/lang/String;

    if-nez p1, :cond_1c

    sput-object v3, Lcom/amap/apis/utils/core/DeviceInfo;->u:Ljava/lang/String;

    :cond_1c
    sput-boolean v6, Lcom/amap/apis/utils/core/DeviceInfo;->A:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    :cond_1d
    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->u:Ljava/lang/String;

    .line 22
    :goto_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    const-string v4, "|meid="

    invoke-static {p2, v2, v4, p1}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|serial="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    .line 23
    :try_start_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_13

    :cond_1f
    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    if-nez p1, :cond_20

    goto :goto_13

    :cond_20
    sget-object p1, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    invoke-interface {p1}, Lcom/amap/apis/utils/core/DeviceInfo$c;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_14

    :catchall_8
    :goto_13
    move-object p1, v3

    .line 24
    :goto_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_21

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    const-string v4, "|adiuExtras="

    invoke-static {p2, v2, v4, p1}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|storage="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-wide v4, Lcom/amap/apis/utils/core/DeviceInfo;->B:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-eqz p2, :cond_22

    goto :goto_15

    :cond_22
    :try_start_c
    new-instance p2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    mul-long/2addr v8, v10

    div-long/2addr v8, v6

    add-long/2addr v4, v8

    sput-wide v4, Lcom/amap/apis/utils/core/DeviceInfo;->B:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :catchall_9
    sget-wide v4, Lcom/amap/apis/utils/core/DeviceInfo;->B:J

    .line 26
    :goto_15
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "|ram="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget p2, Lcom/amap/apis/utils/core/DeviceInfo;->C:I

    if-eqz p2, :cond_23

    move v1, p2

    goto :goto_16

    :cond_23
    const-string p2, "activity"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_24

    goto :goto_16

    :cond_24
    new-instance p2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, p2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v4, 0x400

    div-long/2addr v1, v4

    long-to-int p0, v1

    div-int/lit16 v1, p0, 0x400

    sput v1, Lcom/amap/apis/utils/core/DeviceInfo;->C:I

    .line 28
    :goto_16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|arch="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->D:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->D:Ljava/lang/String;

    goto :goto_17

    :cond_25
    const-string p0, "os.arch"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->D:Ljava/lang/String;

    .line 30
    :goto_17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/huawei/hem/g1;->w:Ljava/lang/String;

    invoke-static {}, Lcom/loc/s;->a()Lcom/loc/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/loc/r;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    iput-object p0, v0, Lcom/huawei/hem/g1;->x:Ljava/lang/String;

    goto :goto_18

    :cond_26
    iput-object v3, v0, Lcom/huawei/hem/g1;->x:Ljava/lang/String;

    :goto_18
    return-object v0
.end method

.method public static n(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/hem/l0;)V
    .locals 8

    :try_start_0
    const-string v0, "messageId"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "title"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "summary"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "extraMap"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "notificationOpenType"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 6
    sget-object p1, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification deleted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    move-object v1, p2

    move-object v2, p0

    .line 7
    invoke-interface/range {v1 .. v7}, Lcom/huawei/hem/l0;->onNotificationRemoved(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "AgooPushHandler"

    const-string v0, "Handle notification delete action failed."

    .line 8
    invoke-static {p2, v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static o(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "disable app is null"

    .line 2
    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/huawei/hem/q0;->D()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0, v1}, Lcom/huawei/hem/ic;->k0(Ljava/util/List;)V

    return-void
.end method

.method public static p(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ETUQ1"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0}, Lcom/huawei/hem/l1;->n(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exec command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "command_remote_shutdown"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "command_bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "command_dynamic_device_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "command_sdcard_and_otg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "command_tactics_updated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "command_workspace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "command_applist"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "command_recording"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "command_reset_factory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "command_apptimelimit_updated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "command_simcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_b
    const-string v1, "command_reboot_device"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_c
    const-string v1, "command_release_control"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto :goto_1

    :sswitch_d
    const-string v1, "command_wifi_switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto :goto_1

    :sswitch_e
    const-string v1, "command_location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_f
    const-string v1, "command_connect_usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_10
    const-string v1, "command_otg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_11
    const-string v1, "command_gps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_12
    const-string v1, "command_camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v3

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 4
    :pswitch_0
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->h0()V

    goto/16 :goto_4

    .line 5
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->request()V

    goto/16 :goto_4

    :pswitch_2
    if-nez p2, :cond_1

    .line 6
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->w()V

    goto/16 :goto_4

    .line 7
    :cond_1
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->K0()V

    goto/16 :goto_4

    :pswitch_3
    if-nez p2, :cond_2

    .line 8
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->O0()V

    goto/16 :goto_4

    .line 9
    :cond_2
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->H()V

    goto/16 :goto_4

    .line 10
    :pswitch_4
    invoke-static {}, Lcom/android/launcher3/network/ControlHelper;->getInstance()Lcom/android/launcher3/network/ControlHelper;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/network/ControlHelper;->handleReleaseControl(I)V

    goto/16 :goto_4

    .line 11
    :pswitch_5
    invoke-static {}, Lcom/android/launcher3/network/DeviceInfoUploadHelper;->uploadInfo()V

    goto/16 :goto_4

    .line 12
    :pswitch_6
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->g()V

    goto/16 :goto_4

    :pswitch_7
    if-nez p2, :cond_3

    .line 13
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->N0()V

    goto/16 :goto_4

    .line 14
    :cond_3
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->n()V

    goto/16 :goto_4

    :pswitch_8
    if-nez p2, :cond_4

    .line 15
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->disableOTG()V

    goto/16 :goto_4

    .line 16
    :cond_4
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->enableOTG()V

    goto/16 :goto_4

    :pswitch_9
    if-nez p2, :cond_5

    .line 17
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0, v4}, Lcom/huawei/hem/ic;->z0(Z)V

    goto/16 :goto_4

    .line 18
    :cond_5
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0, v4}, Lcom/huawei/hem/ic;->c(Z)V

    goto/16 :goto_4

    :pswitch_a
    if-nez p2, :cond_6

    .line 19
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->disableGPS()V

    goto/16 :goto_4

    .line 20
    :cond_6
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->enableGPS()V

    goto/16 :goto_4

    :pswitch_b
    if-ne p2, v4, :cond_7

    .line 21
    invoke-static {p0}, Lcom/huawei/hem/y4;->q(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v0, v4, v2}, Lcom/huawei/hem/y5;->d0(IZ)V

    .line 23
    sput v3, Lcom/huawei/hem/x1;->c:I

    goto/16 :goto_4

    .line 24
    :cond_7
    const-class p1, Lcom/android/launcher3/activity/LockActivity;

    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x7f0c00d2

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v0, v4, v4}, Lcom/huawei/hem/y5;->d0(IZ)V

    goto :goto_4

    .line 27
    :pswitch_c
    invoke-static {}, Lcom/android/launcher3/network/TacticsHelper;->getInstance()Lcom/android/launcher3/network/TacticsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/network/TacticsHelper;->request()V

    goto :goto_4

    .line 28
    :pswitch_d
    invoke-static {}, Lcom/android/launcher3/network/UploadAppHelper;->getInstance()Lcom/android/launcher3/network/UploadAppHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/network/UploadAppHelper;->uploadApps()V

    goto :goto_4

    .line 29
    :pswitch_e
    invoke-static {}, Lcom/android/launcher3/network/LocationHelper;->getInstance()Lcom/android/launcher3/network/LocationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/network/LocationHelper;->startLocation()V

    goto :goto_4

    .line 30
    :pswitch_f
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0, v4}, Lcom/huawei/hem/ic;->t(Z)V

    goto :goto_4

    .line 31
    :pswitch_10
    iget p0, v0, Lcom/huawei/hem/y5;->i0:I

    if-ne p0, v3, :cond_8

    .line 32
    iget-object p0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 33
    iget-object p0, p0, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string p1, "enable_camera"

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 34
    iput p0, v0, Lcom/huawei/hem/y5;->i0:I

    .line 35
    :cond_8
    iget p0, v0, Lcom/huawei/hem/y5;->i0:I

    if-ne p0, v3, :cond_c

    if-ne p2, v4, :cond_9

    .line 36
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->enableCamera()V

    goto :goto_2

    .line 37
    :cond_9
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->disableCamera()V

    .line 38
    :goto_2
    invoke-virtual {v0, p2}, Lcom/huawei/hem/y5;->T(I)V

    goto :goto_4

    :pswitch_11
    if-ne p2, v4, :cond_a

    .line 39
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->enableBluetooth()V

    goto :goto_4

    .line 40
    :cond_a
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->disableBluetooth()V

    goto :goto_4

    :pswitch_12
    if-ne p2, v4, :cond_b

    .line 41
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->enableUsb()V

    goto :goto_3

    .line 42
    :cond_b
    sget-object p0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p0}, Lcom/huawei/hem/ic;->disableUsb()V

    .line 43
    :goto_3
    invoke-virtual {v0, p2}, Lcom/huawei/hem/y5;->t0(I)V

    :cond_c
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x674cd967 -> :sswitch_12
        -0x5713fe4a -> :sswitch_11
        -0x5713dfd2 -> :sswitch_10
        -0x521a7245 -> :sswitch_f
        -0x4d4209d7 -> :sswitch_e
        -0x35678756 -> :sswitch_d
        -0x2d9383cf -> :sswitch_c
        -0x2d933dc4 -> :sswitch_b
        -0x2645008d -> :sswitch_a
        -0x205e8103 -> :sswitch_9
        -0x85437da -> :sswitch_8
        0x2794f5fd -> :sswitch_7
        0x2dab3d4b -> :sswitch_6
        0x2e7464a1 -> :sswitch_5
        0x4715b1c3 -> :sswitch_4
        0x59f272d0 -> :sswitch_3
        0x5aa3b603 -> :sswitch_2
        0x61b73aba -> :sswitch_1
        0x75db6d3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/huawei/hem/ce;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "LauncherNew"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "com.android.launcher3.LauncherNew"

    return-object p0
.end method

.method public static s()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/t3;->c()Lcom/android/launcher3/db/model/ItemAppDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/db/model/ItemAppDao$Properties;->IsTrust:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/db/model/ItemApp;

    .line 6
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static t()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-static {}, Lcom/huawei/hem/de;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/ce;->m(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    .line 7
    invoke-static {}, Lcom/huawei/hem/ce;->o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/huawei/hem/ce;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/huawei/hem/ce;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    .line 10
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/huawei/hem/ce;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static u()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lcom/huawei/hem/de;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/ce;->m(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/huawei/hem/ce;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public static v()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.huawei.calendar"

    const-string v1, "com.android.calendar"

    const-string v2, "com.ebensz.enote.calendar"

    const-string v3, "com.hihonor.calendar"

    const-string v4, "com.samsung.android.calendar"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static w()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.mediatek.camera"

    const-string v1, "com.huawei.camera"

    const-string v2, "org.codeaurora.snapcam"

    const-string v3, "com.android.camera2"

    const-string v4, "com.tcl.camera"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.dtab.camera"

    const-string v3, "com.hihonor.camera"

    const-string v4, "com.lenovotab.camera"

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static x()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.deskclock"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.huawei.deskclock"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.hihonor.deskclock"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.sec.android.app.clockpackage"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static y()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "org.codeaurora.gallery"

    const-string v1, "com.android.gallery3d"

    const-string v2, "com.huawei.photos"

    const-string v3, "com.tclhz.gallery"

    const-string v4, "com.hihonor.photos"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "com.sec.android.gallery3d"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.zui.gallery"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/huawei/hem/ce;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.gallery3d.app.GalleryActivity"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static z()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.launcher3"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.ndwill.swd.appstore"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_0
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->n0(Ljava/util/List;)V

    return-void
.end method
