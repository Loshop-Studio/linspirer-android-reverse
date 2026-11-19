.class public Lcom/huawei/hem/u8;
.super Lcom/huawei/hem/k8;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hem/k8;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hem/r8;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hem/j8;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/c8;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/huawei/hem/k8;-><init>(Ljava/lang/String;ILcom/huawei/hem/j8;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/c8;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "j"

    const-string v0, "Post call execute"

    .line 1
    invoke-static {v2, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2
    iget-object v0, v1, Lcom/huawei/hem/k8;->b:Ljava/lang/String;

    .line 3
    iget-object v8, v1, Lcom/huawei/hem/k8;->e:Landroid/content/Context;

    .line 4
    iget-object v9, v1, Lcom/huawei/hem/k8;->f:Ljava/lang/String;

    .line 5
    invoke-static {v0, v8, v9}, Lcom/huawei/hem/y4;->f(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    const-string v0, "create HttpsURLConnection instance by url return null."

    :try_start_2
    invoke-static {v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :cond_0
    const-string v8, "Content-Type"

    const-string v9, "application/json; charset=UTF-8"

    :try_start_3
    invoke-virtual {v0, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v8, "POST"

    :try_start_4
    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 6
    iget-object v9, v1, Lcom/huawei/hem/k8;->h:Lcom/huawei/hem/c8;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v10, "services"

    const-string v11, ""

    .line 7
    :try_start_5
    iget-object v9, v9, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v9, v10, v11}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v10, "UTF-8"

    .line 8
    :try_start_6
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v8, 0xc8

    if-ne v11, v8, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hms/framework/common/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v5}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    move-object v5, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    if-nez v5, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v13, v0

    goto :goto_1

    :cond_2
    move-object v13, v5

    :goto_1
    new-instance v0, Lcom/huawei/hem/r8;

    sub-long v14, v8, v6

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/huawei/hem/r8;-><init>(ILjava/util/Map;[BJ)V

    iput-object v0, v1, Lcom/huawei/hem/k8;->a:Lcom/huawei/hem/r8;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-wide/from16 v18, v3

    move-wide v3, v6

    move-wide/from16 v5, v18

    goto :goto_2

    :catch_1
    move-exception v0

    move-wide v5, v3

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-string v9, "RequestCallableV2 run task catch IOException"

    invoke-static {v2, v9, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/huawei/hem/r8;

    sub-long/2addr v7, v3

    invoke-direct {v2, v0, v7, v8}, Lcom/huawei/hem/r8;-><init>(Ljava/lang/Exception;J)V

    iput-object v2, v1, Lcom/huawei/hem/k8;->a:Lcom/huawei/hem/r8;

    move-wide v3, v5

    :goto_3
    move-wide/from16 v5, v16

    iget-object v0, v1, Lcom/huawei/hem/k8;->a:Lcom/huawei/hem/r8;

    .line 9
    iget-object v2, v1, Lcom/huawei/hem/k8;->b:Ljava/lang/String;

    .line 10
    iput-object v2, v0, Lcom/huawei/hem/r8;->m:Ljava/lang/String;

    .line 11
    iput-wide v3, v0, Lcom/huawei/hem/r8;->e:J

    .line 12
    iput-wide v5, v0, Lcom/huawei/hem/r8;->f:J

    .line 13
    iget-object v2, v1, Lcom/huawei/hem/k8;->c:Lcom/huawei/hem/j8;

    if-eqz v2, :cond_3

    .line 14
    check-cast v2, Lcom/huawei/hem/q8;

    invoke-virtual {v2, v0}, Lcom/huawei/hem/q8;->b(Lcom/huawei/hem/r8;)V

    :cond_3
    iget-object v5, v1, Lcom/huawei/hem/k8;->a:Lcom/huawei/hem/r8;

    :goto_4
    return-object v5
.end method
