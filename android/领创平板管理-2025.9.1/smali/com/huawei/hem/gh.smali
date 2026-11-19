.class public Lcom/huawei/hem/gh;
.super Ljava/lang/Object;
.source "FileDownloadProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/gh$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "download.trial-connection-head-method"

    const-string v3, "broadcast.completed"

    const-string v4, "file.non-pre-allocation"

    const-string v5, "process.non-separate"

    const-string v6, "http.lenient"

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5
    :try_start_0
    sget-object v8, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "filedownloader.properties"

    .line 7
    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {v0, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v11, "download.min-progress-step"

    .line 11
    invoke-virtual {v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v12, "download.min-progress-time"

    .line 12
    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v13, "download.max-network-thread-count"

    .line 13
    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 14
    :try_start_6
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 15
    :try_start_7
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 16
    :try_start_8
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v7, v9

    move-object v9, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :cond_0
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-eqz v8, :cond_3

    .line 17
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v8, v0

    .line 18
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_2

    :goto_1
    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_1b

    :goto_2
    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x0

    :goto_4
    const/4 v10, 0x0

    :goto_5
    const/4 v11, 0x0

    :goto_6
    const/4 v12, 0x0

    :goto_7
    const/4 v13, 0x0

    :goto_8
    const/4 v14, 0x0

    :goto_9
    const/4 v15, 0x0

    .line 19
    :goto_a
    :try_start_a
    instance-of v7, v0, Ljava/io/FileNotFoundException;

    if-eqz v7, :cond_1

    goto :goto_b

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_b
    if-eqz v8, :cond_2

    .line 21
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_c

    :catch_a
    move-exception v0

    move-object v7, v0

    .line 22
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_c
    move-object v7, v9

    const/4 v9, 0x0

    :cond_3
    :goto_d
    const-string v0, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const-string v8, "false"

    move-object/from16 v16, v2

    const-string v2, "true"

    if-eqz v7, :cond_6

    .line 23
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_e

    .line 24
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v8, v4, v2

    .line 25
    invoke-static {v0, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_e
    const/4 v6, 0x0

    .line 26
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v1, Lcom/huawei/hem/gh;->c:Z

    goto :goto_f

    :cond_6
    const/4 v6, 0x0

    .line 27
    iput-boolean v6, v1, Lcom/huawei/hem/gh;->c:Z

    :goto_f
    if-eqz v10, :cond_9

    .line 28
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 29
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_10

    .line 30
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v8, v4, v2

    .line 31
    invoke-static {v0, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_8
    :goto_10
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/huawei/hem/gh;->d:Z

    goto :goto_11

    .line 33
    :cond_9
    iput-boolean v6, v1, Lcom/huawei/hem/gh;->d:Z

    :goto_11
    if-eqz v11, :cond_a

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 35
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 36
    iput v5, v1, Lcom/huawei/hem/gh;->a:I

    goto :goto_12

    :cond_a
    const/high16 v5, 0x10000

    .line 37
    iput v5, v1, Lcom/huawei/hem/gh;->a:I

    :goto_12
    if-eqz v12, :cond_b

    .line 38
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v10, 0x0

    .line 39
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 40
    iput-wide v5, v1, Lcom/huawei/hem/gh;->b:J

    goto :goto_13

    :cond_b
    const-wide/16 v5, 0x7d0

    .line 41
    iput-wide v5, v1, Lcom/huawei/hem/gh;->b:J

    :goto_13
    if-eqz v13, :cond_c

    .line 42
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 43
    invoke-static {v5}, Lcom/huawei/hem/gh;->a(I)I

    move-result v5

    iput v5, v1, Lcom/huawei/hem/gh;->e:I

    const/4 v5, 0x3

    goto :goto_14

    :cond_c
    const/4 v5, 0x3

    .line 44
    iput v5, v1, Lcom/huawei/hem/gh;->e:I

    :goto_14
    if-eqz v14, :cond_f

    .line 45
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 46
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_15

    .line 47
    :cond_d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x2

    aput-object v8, v5, v2

    .line 48
    invoke-static {v0, v5}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    :goto_15
    const/4 v6, 0x0

    .line 49
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/huawei/hem/gh;->f:Z

    goto :goto_16

    :cond_f
    const/4 v6, 0x0

    .line 50
    iput-boolean v6, v1, Lcom/huawei/hem/gh;->f:Z

    :goto_16
    if-eqz v15, :cond_12

    .line 51
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 52
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_17

    .line 53
    :cond_10
    new-instance v4, Ljava/lang/IllegalStateException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v8, v5, v2

    .line 54
    invoke-static {v0, v5}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_11
    :goto_17
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/huawei/hem/gh;->g:Z

    goto :goto_18

    .line 56
    :cond_12
    iput-boolean v6, v1, Lcom/huawei/hem/gh;->g:Z

    :goto_18
    if-eqz v9, :cond_15

    .line 57
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 58
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_19

    .line 59
    :cond_13
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v16, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v8, v4, v2

    .line 60
    invoke-static {v0, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_14
    :goto_19
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/huawei/hem/gh;->h:Z

    goto :goto_1a

    .line 62
    :cond_15
    iput-boolean v6, v1, Lcom/huawei/hem/gh;->h:Z

    :goto_1a
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v7, v8

    :goto_1b
    if-eqz v7, :cond_16

    .line 63
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_1c

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 64
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    :cond_16
    :goto_1c
    throw v2

    .line 66
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/huawei/hem/gh$a;)V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "download.trial-connection-head-method"

    const-string v3, "broadcast.completed"

    const-string v4, "file.non-pre-allocation"

    const-string v5, "process.non-separate"

    const-string v6, "http.lenient"

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 71
    :try_start_0
    sget-object v8, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 72
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "filedownloader.properties"

    .line 73
    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_0

    .line 74
    :try_start_1
    invoke-virtual {v0, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 75
    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v11, "download.min-progress-step"

    .line 77
    invoke-virtual {v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v12, "download.min-progress-time"

    .line 78
    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v13, "download.max-network-thread-count"

    .line 79
    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    :try_start_6
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 81
    :try_start_7
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 82
    :try_start_8
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v20, v9

    move-object v9, v7

    move-object/from16 v7, v20

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v8

    goto/16 :goto_19

    :catch_7
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-eqz v8, :cond_3

    .line 83
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v8, v0

    .line 84
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_1a

    :catch_9
    move-exception v0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x0

    :goto_5
    const/4 v13, 0x0

    :goto_6
    const/4 v14, 0x0

    :goto_7
    const/4 v15, 0x0

    .line 85
    :goto_8
    :try_start_a
    instance-of v7, v0, Ljava/io/FileNotFoundException;

    if-eqz v7, :cond_1

    goto :goto_9

    .line 86
    :cond_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_9
    if-eqz v8, :cond_2

    .line 87
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v7, v0

    .line 88
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_a
    move-object v7, v9

    const/4 v9, 0x0

    :cond_3
    :goto_b
    const-string v0, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const-string v8, "false"

    move-object/from16 p1, v2

    const-string v2, "true"

    const/16 v16, 0x2

    const/16 v17, 0x1

    move-object/from16 v18, v9

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    .line 89
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    goto :goto_c

    .line 90
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v9

    aput-object v2, v4, v17

    aput-object v8, v4, v16

    .line 91
    invoke-static {v0, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_5
    :goto_c
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/huawei/hem/gh;->c:Z

    goto :goto_d

    .line 93
    :cond_6
    iput-boolean v9, v1, Lcom/huawei/hem/gh;->c:Z

    :goto_d
    if-eqz v10, :cond_9

    .line 94
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 95
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_e

    .line 96
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v9

    aput-object v2, v4, v17

    aput-object v8, v4, v16

    .line 97
    invoke-static {v0, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_8
    :goto_e
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/huawei/hem/gh;->d:Z

    goto :goto_f

    .line 99
    :cond_9
    iput-boolean v9, v1, Lcom/huawei/hem/gh;->d:Z

    :goto_f
    if-eqz v11, :cond_a

    .line 100
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 101
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 102
    iput v5, v1, Lcom/huawei/hem/gh;->a:I

    goto :goto_10

    :cond_a
    const/high16 v5, 0x10000

    .line 103
    iput v5, v1, Lcom/huawei/hem/gh;->a:I

    :goto_10
    if-eqz v12, :cond_b

    .line 104
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v10, 0x0

    .line 105
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 106
    iput-wide v5, v1, Lcom/huawei/hem/gh;->b:J

    goto :goto_11

    :cond_b
    const-wide/16 v5, 0x7d0

    .line 107
    iput-wide v5, v1, Lcom/huawei/hem/gh;->b:J

    :goto_11
    if-eqz v13, :cond_c

    .line 108
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 109
    invoke-static {v5}, Lcom/huawei/hem/gh;->a(I)I

    move-result v5

    iput v5, v1, Lcom/huawei/hem/gh;->e:I

    const/4 v5, 0x3

    goto :goto_12

    :cond_c
    const/4 v5, 0x3

    .line 110
    iput v5, v1, Lcom/huawei/hem/gh;->e:I

    :goto_12
    if-eqz v14, :cond_f

    .line 111
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 112
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_13

    .line 113
    :cond_d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v9

    aput-object v2, v5, v17

    aput-object v8, v5, v16

    .line 114
    invoke-static {v0, v5}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_e
    :goto_13
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/huawei/hem/gh;->f:Z

    goto :goto_14

    .line 116
    :cond_f
    iput-boolean v9, v1, Lcom/huawei/hem/gh;->f:Z

    :goto_14
    if-eqz v15, :cond_12

    .line 117
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 118
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_15

    .line 119
    :cond_10
    new-instance v4, Ljava/lang/IllegalStateException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v9

    aput-object v2, v5, v17

    aput-object v8, v5, v16

    .line 120
    invoke-static {v0, v5}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    :cond_11
    :goto_15
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/huawei/hem/gh;->g:Z

    goto :goto_16

    .line 122
    :cond_12
    iput-boolean v9, v1, Lcom/huawei/hem/gh;->g:Z

    :goto_16
    if-eqz v18, :cond_15

    move-object/from16 v3, v18

    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 124
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_17

    .line 125
    :cond_13
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v9

    aput-object v2, v4, v17

    aput-object v8, v4, v16

    .line 126
    invoke-static {v0, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_14
    :goto_17
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/huawei/hem/gh;->h:Z

    goto :goto_18

    .line 128
    :cond_15
    iput-boolean v9, v1, Lcom/huawei/hem/gh;->h:Z

    :goto_18
    return-void

    :goto_19
    move-object v2, v0

    :goto_1a
    if-eqz v7, :cond_16

    .line 129
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_1b

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 130
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    :cond_16
    :goto_1b
    throw v2

    .line 132
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(I)I
    .locals 8

    .line 1
    const-class v0, Lcom/huawei/hem/gh;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xc

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-le p0, v6, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    aput-object v7, v3, v4

    aput-object v7, v3, v1

    const-string p0, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    .line 4
    invoke-static {v0, p0, v3}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_0
    if-ge p0, v4, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    aput-object v5, v3, v4

    aput-object v5, v3, v1

    const-string p0, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    .line 6
    invoke-static {v0, p0, v3}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    return p0
.end method
