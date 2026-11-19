.class public final Lcom/huawei/hem/sj;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/huawei/hem/fk$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/huawei/hem/fk$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/huawei/hem/fk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 2
    iput v0, p0, Lcom/huawei/hem/sj;->a:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/huawei/hem/sj;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/sj;->d:Ljava/util/Deque;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/sj;->e:Ljava/util/Deque;

    .line 6
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/sj;->f:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/fk$a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/huawei/hem/fk$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/sj;->e:Ljava/util/Deque;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hem/sj;->b()Z

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Call wasn\'t in-flight!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/sj;->d:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/fk$a;

    .line 5
    iget-object v3, p0, Lcom/huawei/hem/sj;->e:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    iget v4, p0, Lcom/huawei/hem/sj;->a:I

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v3, v2, Lcom/huawei/hem/fk$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lcom/huawei/hem/sj;->b:I

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 9
    iget-object v3, v2, Lcom/huawei/hem/fk$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v3, p0, Lcom/huawei/hem/sj;->e:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hem/sj;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/hem/sj;->f:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/2addr v1, v2

    :try_start_2
    monitor-exit p0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    .line 15
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_6

    .line 17
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hem/fk$a;

    .line 18
    monitor-enter p0

    .line 19
    :try_start_3
    iget-object v6, p0, Lcom/huawei/hem/sj;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v6, :cond_4

    .line 20
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const-wide/16 v10, 0x3c

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v13, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v13}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v7, "OkHttp Dispatcher"

    .line 21
    invoke-static {v7, v2}, Lcom/huawei/hem/tk;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v14

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v6, p0, Lcom/huawei/hem/sj;->c:Ljava/util/concurrent/ExecutorService;

    .line 22
    :cond_4
    iget-object v6, p0, Lcom/huawei/hem/sj;->c:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    if-eqz v5, :cond_5

    .line 23
    :try_start_4
    invoke-interface {v6, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v6

    .line 24
    :try_start_5
    new-instance v7, Ljava/io/InterruptedIOException;

    const-string v8, "executor rejected"

    invoke-direct {v7, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v7, v6}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 26
    iget-object v6, v5, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    .line 27
    iget-object v6, v6, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    .line 28
    invoke-virtual {v6, v7}, Lcom/huawei/hem/kl;->g(Ljava/io/IOException;)Ljava/io/IOException;

    .line 29
    iget-object v6, v5, Lcom/huawei/hem/fk$a;->b:Lcom/huawei/hem/lj;

    iget-object v8, v5, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    check-cast v6, Lcom/huawei/hem/xb;

    :try_start_6
    invoke-virtual {v6, v8, v7}, Lcom/huawei/hem/xb;->b(Lcom/huawei/hem/kj;Ljava/io/IOException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 30
    iget-object v6, v5, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    iget-object v6, v6, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 31
    iget-object v6, v6, Lcom/huawei/hem/dk;->a:Lcom/huawei/hem/sj;

    .line 32
    invoke-virtual {v6, v5}, Lcom/huawei/hem/sj;->a(Lcom/huawei/hem/fk$a;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :goto_5
    iget-object v1, v5, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    iget-object v1, v1, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 33
    iget-object v1, v1, Lcom/huawei/hem/dk;->a:Lcom/huawei/hem/sj;

    .line 34
    invoke-virtual {v1, v5}, Lcom/huawei/hem/sj;->a(Lcom/huawei/hem/fk$a;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    .line 35
    throw v0

    :catchall_1
    move-exception v0

    .line 36
    monitor-exit p0

    throw v0

    :cond_6
    return v1

    :catchall_2
    move-exception v0

    .line 37
    :try_start_7
    monitor-exit p0

    throw v0

    :catchall_3
    move-exception v0

    .line 38
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method
