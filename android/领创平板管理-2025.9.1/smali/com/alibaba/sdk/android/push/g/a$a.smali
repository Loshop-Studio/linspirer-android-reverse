.class public Lcom/alibaba/sdk/android/push/g/a$a;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Token:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/HandlerThread;"
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/os/Handler;

.field public c:Lcom/alibaba/sdk/android/push/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/push/g/c<",
            "TToken;>;"
        }
    .end annotation
.end field

.field public volatile d:I

.field public e:I

.field public final synthetic f:Lcom/alibaba/sdk/android/push/g/a;

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TToken;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    const-string p1, "ConnectionWorker"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/sdk/android/push/g/a$a;Ljava/lang/Object;)Lcom/alibaba/sdk/android/push/g/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Ljava/lang/Object;)Lcom/alibaba/sdk/android/push/g/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Lcom/alibaba/sdk/android/push/g/e;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TToken;)",
            "Lcom/alibaba/sdk/android/push/g/e;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, ";network="

    const-string v3, ";response="

    const-string v4, ";estimatedTime="

    const-string v5, "connState="

    const-string v6, "ut log error"

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/common/util/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v12, 0x2

    if-nez v0, :cond_0

    iput v12, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    new-instance v12, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->a:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-direct {v12, v0}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    :try_start_1
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/push/g/e;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11, v10}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v12

    :cond_0
    :try_start_2
    iget v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is debug\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/b;->e()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/g/a;->a(Lcom/alibaba/sdk/android/push/g/a;)V

    iget-object v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/g/a;->b(Lcom/alibaba/sdk/android/push/g/a;)V

    :cond_1
    invoke-direct {v1, v7}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v7}, Lcom/alibaba/sdk/android/push/notification/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    :goto_1
    invoke-static {v7}, Lcom/alibaba/sdk/android/push/notification/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v17, 0x2710

    cmp-long v0, v15, v17

    if-gez v0, :cond_3

    const-wide/16 v15, 0x3e8

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v15, "wait for app come to foreground"

    invoke-virtual {v0, v15}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {v7}, Lcom/alibaba/sdk/android/push/notification/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIpv6Enable(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v13, "APP is background, disable ipv6 test"

    invoke-virtual {v0, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_4
    :try_start_4
    iget v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    if-ne v0, v10, :cond_6

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v12, "accs init."

    invoke-virtual {v0, v12}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Lcom/alibaba/sdk/android/push/g/a$a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/g/e;

    move-result-object v12
    :try_end_4
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    if-eqz v12, :cond_5

    :try_start_5
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/push/g/e;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11, v10}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-object v12

    :cond_6
    :try_start_6
    iget v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    if-ne v0, v12, :cond_7

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v12, "accs connected.setBindStop."

    invoke-virtual {v0, v12}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object v11

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v12, "cant entry this block..."

    invoke-virtual {v0, v12}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    new-instance v12, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->l:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-direct {v12, v0}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_7
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    :try_start_8
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/push/g/e;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11, v10}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v12

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Catch RuntimeException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    new-instance v12, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v13, Lcom/alibaba/sdk/android/push/common/a/d;->k:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v13}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v13

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    :try_start_a
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/push/g/e;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11, v10}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v12

    :catch_4
    move-exception v0

    :try_start_b
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Catch StopProcessException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/f;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " stack:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    new-instance v12, Lcom/alibaba/sdk/android/push/g/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/f;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    :try_start_c
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/push/g/e;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11, v10}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-object v12

    :catchall_2
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "load utdid: "

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    const-string v3, "vip init."

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got deviceId from preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iput v4, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/util/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/a$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got deviceId from remote server: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/ams/common/b/b;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/ams/common/b/b;->b(Ljava/lang/String;)V

    iput v4, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string v0, "vip init success"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lcom/alibaba/sdk/android/push/b/f;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->g:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u8bbe\u5907ID\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    const-string v1, "getDeviceIdFromServer"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/push/b/f;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/alibaba/sdk/android/push/b/f;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->j:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/push/b/f;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw p1
.end method

.method private b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/g/e;
    .locals 10

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "initAccsChannel..."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/http/NetworkSdkSetting;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register agoo appkey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/push/f/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/f/b;-><init>()V

    const/4 v7, 0x1

    new-array v8, v7, [Lcom/alibaba/sdk/android/push/g/e;

    const/4 v1, 0x0

    const/4 v9, 0x0

    aput-object v1, v8, v9

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init aliyun accs. context:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- appkey:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const-string v1, "AliyunPush"

    invoke-static {v1}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ACCSClient;->cleanLocalBindInfo()V

    invoke-static {}, Lanet/channel/util/AppLifecycle;->onForeground()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AliyunPush"

    const-string v5, "aliyun"

    new-instance v6, Lcom/alibaba/sdk/android/push/g/a$a$2;

    invoke-direct {v6, p0, v8, v0}, Lcom/alibaba/sdk/android/push/g/a$a$2;-><init>(Lcom/alibaba/sdk/android/push/g/a$a;[Lcom/alibaba/sdk/android/push/g/e;Lcom/alibaba/sdk/android/push/f/b;)V

    invoke-static/range {v1 .. v6}, Lcom/taobao/agoo/TaobaoRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/IRegister;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    const-string v3, "accs config failed"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/d;->k:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    aput-object v2, v8, v9

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/f/b;->a()V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/util/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    iput-boolean v7, p1, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string v0, "not main process"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->n:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string v1, "lock"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const/16 p1, 0x96

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/f/b;->a(I)V

    aget-object p1, v8, v9

    if-nez p1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object p1

    const-string v0, "re"

    invoke-virtual {p1, v0}, Lcom/taobao/accs/AccsState;->getStateByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "accs time out"

    :goto_1
    new-instance v0, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->o:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    const-string v1, "connected:"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/g/a;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    aput-object v0, v8, v9

    :cond_1
    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string v0, "register agoo result "

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v8, v9

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/g/e;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    aget-object p1, v8, v9

    return-object p1
.end method

.method private c()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "appKey"

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceId"

    invoke-static {v2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v5, "3.7.6"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "utdid"

    invoke-static {v2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    const-string v2, "2"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "package"

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/alibaba/sdk/android/ams/common/util/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "POST"

    invoke-static {v1, v0, v2}, Lcom/alibaba/sdk/android/ams/common/util/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/a/d;->b:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v0

    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/push/g/i;->a(ILjava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_0
    :try_start_3
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "failed to loadConfigFromRemote!"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/a/a;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->p:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    const-string v2, "getDeviceId\u521b\u5efa\u8bf7\u6c42\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/common/util/a/a;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/sdk/android/push/b/f;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->p:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/push/b/f;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw v1
    :try_end_3
    .catch Lcom/alibaba/sdk/android/push/b/f; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v1

    const-string v2, "loadConfigFromRemote failed! error:"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/alibaba/sdk/android/push/b/f;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/d;->k:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/push/b/f;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    iget-boolean v0, v0, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/sdk/android/push/g/a$a;->g:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/alibaba/sdk/android/push/g/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/push/g/c<",
            "TToken;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->c:Lcom/alibaba/sdk/android/push/g/c;

    return-void
.end method

.method public declared-synchronized a(Lcom/alibaba/sdk/android/push/g/e;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/sdk/android/push/g/a$a;->g:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iget v4, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit16 v2, v2, 0x1388

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onLooperPrepared()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/sdk/android/push/g/a$a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/g/a$a$1;-><init>(Lcom/alibaba/sdk/android/push/g/a$a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "Looping Prepared."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/sdk/android/push/g/a;->b:Z

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/g/a$a;->a()V

    return-void
.end method
