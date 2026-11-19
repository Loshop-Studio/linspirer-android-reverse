.class public Lcom/huawei/hem/lm$c;
.super Lcom/huawei/hem/fn;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic k:Lcom/huawei/hem/lm;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/lm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/lm$c;->k:Lcom/huawei/hem/lm;

    invoke-direct {p0}, Lcom/huawei/hem/fn;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$c;->k:Lcom/huawei/hem/lm;

    sget-object v1, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/lm;->e(Lcom/huawei/hem/wl;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/lm$c;->k:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, v0, Lcom/huawei/hem/am;->n:J

    iget-wide v3, v0, Lcom/huawei/hem/am;->m:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v1, v0, Lcom/huawei/hem/am;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/huawei/hem/am;->m:J

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/huawei/hem/am;->p:J

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v1, v0, Lcom/huawei/hem/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/huawei/hem/bm;

    const-string v3, "OkHttp %s ping"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v2, v0, v3, v4}, Lcom/huawei/hem/bm;-><init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/fn;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/hem/lm$c;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
