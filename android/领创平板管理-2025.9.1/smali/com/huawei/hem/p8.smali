.class public Lcom/huawei/hem/p8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hem/r8;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ExecutorService;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/huawei/hem/c8;

.field public final synthetic d:Lcom/huawei/hem/q8;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/q8;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/huawei/hem/c8;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hem/p8;->d:Lcom/huawei/hem/q8;

    iput-object p2, p0, Lcom/huawei/hem/p8;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/huawei/hem/p8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hem/p8;->c:Lcom/huawei/hem/c8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/p8;->d:Lcom/huawei/hem/q8;

    iget-object v1, p0, Lcom/huawei/hem/p8;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/huawei/hem/p8;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hem/p8;->c:Lcom/huawei/hem/c8;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v0, Lcom/huawei/hem/q8;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/huawei/hem/q8;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/ArrayList;Ljava/lang/String;Lcom/huawei/hem/c8;)Lcom/huawei/hem/r8;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    move v9, v8

    goto :goto_0

    .line 3
    :cond_0
    iget v9, v7, Lcom/huawei/hem/r8;->c:I

    :goto_0
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    const-string v8, "e"

    const-string v11, "use 2.0 interface return http\'s code is\uff1a{%s}"

    invoke-static {v8, v11, v10}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v10, 0x194

    if-eq v9, v10, :cond_2

    const/16 v10, 0x191

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v7

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/huawei/hem/q8;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v7}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v0, "request grs server use 1.0 API must set appName,please check."

    invoke-static {v8, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "this env has not deploy new interface,so use old interface."

    invoke-static {v8, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/huawei/hem/q8;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/huawei/hem/q8;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/ArrayList;Ljava/lang/String;Lcom/huawei/hem/c8;)Lcom/huawei/hem/r8;

    move-result-object v1

    move-object v4, v1

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v8, v1, v5

    new-instance v11, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/huawei/hem/q8;->f:Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v12, v0, Lcom/huawei/hem/q8;->g:Lorg/json/JSONArray;

    iget-object v10, v0, Lcom/huawei/hem/q8;->b:Landroid/content/Context;

    if-eqz v10, :cond_4

    .line 5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnableReportNoSeed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getReportExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/huawei/hem/s8;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/huawei/hem/s8;-><init>(JLandroid/content/Context;Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    :goto_3
    return-object v4

    .line 6
    :cond_5
    throw v4
.end method
