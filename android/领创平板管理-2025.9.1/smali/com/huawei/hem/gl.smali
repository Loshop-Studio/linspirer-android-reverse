.class public final Lcom/huawei/hem/gl;
.super Ljava/lang/Object;
.source "RealConnectionPool.java"


# static fields
.field public static final g:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/Runnable;

.field public final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/huawei/hem/fl;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/huawei/hem/hl;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp ConnectionPool"

    .line 2
    invoke-static {v7, v0}, Lcom/huawei/hem/tk;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/huawei/hem/gl;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/al;

    invoke-direct {v0, p0}, Lcom/huawei/hem/al;-><init>(Lcom/huawei/hem/gl;)V

    iput-object v0, p0, Lcom/huawei/hem/gl;->c:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/gl;->d:Ljava/util/Deque;

    .line 4
    new-instance v0, Lcom/huawei/hem/hl;

    invoke-direct {v0}, Lcom/huawei/hem/hl;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/gl;->e:Lcom/huawei/hem/hl;

    .line 5
    iput p1, p0, Lcom/huawei/hem/gl;->a:I

    .line 6
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hem/gl;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "keepAliveDuration <= 0: "

    invoke-static {p4, p2, p3}, Lcom/huawei/hem/f6;->M(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(J)J
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/gl;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move v5, v1

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/hem/fl;

    .line 4
    invoke-virtual {p0, v7, p1, p2}, Lcom/huawei/hem/gl;->d(Lcom/huawei/hem/fl;J)I

    move-result v8

    if-lez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 5
    iget-wide v8, v7, Lcom/huawei/hem/fl;->q:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_0

    move-object v2, v7

    move-wide v3, v8

    goto :goto_0

    .line 6
    :cond_2
    iget-wide p1, p0, Lcom/huawei/hem/gl;->b:J

    cmp-long p1, v3, p1

    if-gez p1, :cond_6

    iget p1, p0, Lcom/huawei/hem/gl;->a:I

    if-le v5, p1, :cond_3

    goto :goto_1

    :cond_3
    if-lez v5, :cond_4

    .line 7
    iget-wide p1, p0, Lcom/huawei/hem/gl;->b:J

    sub-long/2addr p1, v3

    monitor-exit p0

    return-wide p1

    :cond_4
    if-lez v6, :cond_5

    .line 8
    iget-wide p1, p0, Lcom/huawei/hem/gl;->b:J

    monitor-exit p0

    return-wide p1

    .line 9
    :cond_5
    iput-boolean v1, p0, Lcom/huawei/hem/gl;->f:Z

    const-wide/16 p1, -0x1

    .line 10
    monitor-exit p0

    return-wide p1

    .line 11
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/huawei/hem/gl;->d:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, v2, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    .line 14
    invoke-static {p1}, Lcom/huawei/hem/tk;->e(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lcom/huawei/hem/nk;Ljava/io/IOException;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;

    .line 2
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 4
    iget-object v1, v0, Lcom/huawei/hem/fj;->g:Ljava/net/ProxySelector;

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hem/zj;->p()Ljava/net/URI;

    move-result-object v0

    .line 7
    iget-object v2, p1, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;

    .line 8
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/huawei/hem/gl;->e:Lcom/huawei/hem/hl;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object v0, p2, Lcom/huawei/hem/hl;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public synthetic c()V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/gl;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0xf4240

    .line 2
    div-long v4, v0, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 3
    monitor-enter p0

    long-to-int v0, v0

    .line 4
    :try_start_0
    invoke-virtual {p0, v4, v5, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 5
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Lcom/huawei/hem/fl;J)I
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/huawei/hem/fl;->p:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    check-cast v3, Lcom/huawei/hem/kl$b;

    const-string v4, "A connection to "

    .line 6
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7
    iget-object v5, p1, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 8
    iget-object v5, v5, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 9
    iget-object v5, v5, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    sget-object v5, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 12
    iget-object v3, v3, Lcom/huawei/hem/kl$b;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lcom/huawei/hem/wm;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, p1, Lcom/huawei/hem/fl;->k:Z

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    iget-wide v2, p0, Lcom/huawei/hem/gl;->b:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lcom/huawei/hem/fl;->q:J

    return v1

    .line 17
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public e(Lcom/huawei/hem/fj;Lcom/huawei/hem/kl;Ljava/util/List;Z)Z
    .locals 9
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/fj;",
            "Lcom/huawei/hem/kl;",
            "Ljava/util/List<",
            "Lcom/huawei/hem/nk;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/gl;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hem/fl;

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/huawei/hem/fl;->g()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, v1, Lcom/huawei/hem/fl;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v1, Lcom/huawei/hem/fl;->o:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_b

    iget-boolean v3, v1, Lcom/huawei/hem/fl;->k:Z

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_1
    sget-object v3, Lcom/huawei/hem/rk;->a:Lcom/huawei/hem/rk;

    iget-object v4, v1, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 5
    iget-object v4, v4, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 6
    check-cast v3, Lcom/huawei/hem/dk$a;

    if-eqz v3, :cond_a

    .line 7
    invoke-virtual {v4, p1}, Lcom/huawei/hem/fj;->a(Lcom/huawei/hem/fj;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 8
    :cond_2
    iget-object v3, p1, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 9
    iget-object v3, v3, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 10
    iget-object v4, v1, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 11
    iget-object v4, v4, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 12
    iget-object v4, v4, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 13
    iget-object v4, v4, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    iget-object v3, v1, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    if-eqz p3, :cond_b

    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_6

    .line 17
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hem/nk;

    .line 18
    iget-object v7, v6, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;

    .line 19
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_5

    iget-object v7, v1, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 20
    iget-object v7, v7, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;

    .line 21
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_5

    iget-object v7, v1, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 22
    iget-object v7, v7, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    iget-object v6, v6, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    .line 23
    invoke-virtual {v7, v6}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_2
    if-nez v3, :cond_7

    goto :goto_4

    .line 24
    :cond_7
    iget-object v3, p1, Lcom/huawei/hem/fj;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 25
    sget-object v4, Lcom/huawei/hem/bn;->a:Lcom/huawei/hem/bn;

    if-eq v3, v4, :cond_8

    goto :goto_4

    .line 26
    :cond_8
    iget-object v3, p1, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 27
    invoke-virtual {v1, v3}, Lcom/huawei/hem/fl;->k(Lcom/huawei/hem/zj;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    .line 28
    :cond_9
    :try_start_0
    iget-object v3, p1, Lcom/huawei/hem/fj;->k:Lcom/huawei/hem/mj;

    .line 29
    iget-object v4, p1, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 30
    iget-object v4, v4, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 31
    iget-object v6, v1, Lcom/huawei/hem/fl;->f:Lcom/huawei/hem/xj;

    .line 32
    iget-object v6, v6, Lcom/huawei/hem/xj;->c:Ljava/util/List;

    .line 33
    invoke-virtual {v3, v4, v6}, Lcom/huawei/hem/mj;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v2, v5

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    .line 34
    throw p1

    :catch_0
    :cond_b
    :goto_4
    if-nez v2, :cond_c

    goto/16 :goto_0

    .line 35
    :cond_c
    invoke-virtual {p2, v1}, Lcom/huawei/hem/kl;->a(Lcom/huawei/hem/fl;)V

    return v5

    :cond_d
    return v2
.end method
