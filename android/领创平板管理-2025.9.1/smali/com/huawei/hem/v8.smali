.class public Lcom/huawei/hem/v8;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/m8;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public d:Lcom/huawei/hem/a8;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GRS_RequestController-Task"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v8;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hem/v8;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/v8;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/n8;Ljava/lang/String;Lcom/huawei/hem/c8;)Lcom/huawei/hem/r8;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request to server with service name is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestController"

    invoke-static {v1, v0}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    iget-object v0, p1, Lcom/huawei/hem/n8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 2
    iget-object v1, p1, Lcom/huawei/hem/n8;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasTag(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request spUrlKey: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RequestController"

    invoke-static {v4, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/huawei/hem/v8;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v4, p1, Lcom/huawei/hem/n8;->b:Landroid/content/Context;

    .line 5
    invoke-static {v4}, Lcom/huawei/hms/framework/common/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    monitor-exit v1

    return-object v5

    :cond_0
    invoke-static {v0}, Lcom/huawei/hem/y8;->a(Ljava/lang/String;)Lcom/huawei/hem/y8$a;

    move-result-object v4

    iget-object v6, p0, Lcom/huawei/hem/v8;->b:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hem/m8;

    if-eqz v6, :cond_3

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/huawei/hem/m8;->b:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x493e0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    if-nez v7, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, v6, Lcom/huawei/hem/m8;->a:Ljava/util/concurrent/Future;

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz v4, :cond_6

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v4, Lcom/huawei/hem/y8$a;->b:J

    sub-long/2addr v6, v8

    iget-wide v8, v4, Lcom/huawei/hem/y8$a;->a:J

    cmp-long v4, v6, v8

    if-gtz v4, :cond_4

    move v2, v3

    :cond_4
    if-nez v2, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :cond_6
    :goto_2
    const-string v2, "RequestController"

    const-string v3, "hitGrsRequestBean == null or request block is released."

    :try_start_1
    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/huawei/hem/v8;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/huawei/hem/v8$a;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/huawei/hem/v8$a;-><init>(Lcom/huawei/hem/v8;Lcom/huawei/hem/n8;Ljava/lang/String;Lcom/huawei/hem/c8;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hem/v8;->b:Ljava/util/Map;

    new-instance p3, Lcom/huawei/hem/m8;

    invoke-direct {p3, p1}, Lcom/huawei/hem/m8;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/r8;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find InterruptedException, check others"

    goto :goto_4

    :catch_1
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find ExecutionException, check others"

    goto :goto_4

    :catch_2
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find CancellationException, check others"

    :goto_4
    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public b(Lcom/huawei/hem/n8;Lcom/huawei/hem/i8;Ljava/lang/String;Lcom/huawei/hem/c8;)V
    .locals 8

    iget-object v0, p0, Lcom/huawei/hem/v8;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/huawei/hem/v8$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/hem/v8$b;-><init>(Lcom/huawei/hem/v8;Lcom/huawei/hem/n8;Ljava/lang/String;Lcom/huawei/hem/c8;Lcom/huawei/hem/i8;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hem/v8;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/v8;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
