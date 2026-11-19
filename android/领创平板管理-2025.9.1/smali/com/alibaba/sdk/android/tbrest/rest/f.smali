.class public Lcom/alibaba/sdk/android/tbrest/rest/f;
.super Ljava/lang/Object;
.source "RestReqSend.java"


# direct methods
.method public static a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "sendLogByUrl RestAPI start send log!"

    .line 14
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v2, p0

    move-object/from16 v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 15
    invoke-static/range {v2 .. v13}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/tbrest/rest/d;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "sendLogByUrl RestAPI build data succ!"

    .line 16
    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/d;->a()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "sendLogByUrl postReqData is null!"

    .line 18
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v1

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "sendLogByUrl reqUrl is null!"

    .line 21
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 22
    invoke-static {v3, v0, v2, v4}, Lcom/alibaba/sdk/android/tbrest/rest/b;->a(ILjava/lang/String;Ljava/util/Map;Z)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 23
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 24
    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    return-object v2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "sendLogByUrl result encoding UTF-8 error!"

    .line 25
    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string v0, "sendLogByUrl UTRestAPI build data failure!"

    .line 26
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "sendLogByUrl system error!"

    .line 27
    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v11, p0

    :try_start_0
    const-string v0, "RestAPI start send log!"

    .line 1
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 2
    invoke-static/range {v1 .. v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RestAPI build data succ!"

    .line 4
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    .line 7
    :try_start_1
    invoke-static {p0, p1, p2, v1}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_1

    const-string v0, "packRequest success!"

    .line 9
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v1, p3

    .line 10
    invoke-static {p0, p3, v2}, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->isSuccess()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "UTRestAPI build data failure!"

    .line 12
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "system error!"

    .line 13
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    :try_start_0
    const-string v0, "RestAPI start send log by url!"

    .line 1
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 2
    invoke-static/range {v1 .. v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RestAPI build data succ by url!"

    .line 4
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move-object v0, p2

    .line 7
    :try_start_1
    invoke-static {p0, p1, p2, v1}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_1

    const-string v0, "packRequest success by url!"

    .line 9
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 10
    invoke-static {p0, p1, v1, v2}, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->isSuccess()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "UTRestAPI build data failure by url!"

    .line 12
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "system error by url!"

    .line 13
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
