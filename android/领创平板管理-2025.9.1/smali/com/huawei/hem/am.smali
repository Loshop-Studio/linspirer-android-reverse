.class public final Lcom/huawei/hem/am;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/am$e;,
        Lcom/huawei/hem/am$g;,
        Lcom/huawei/hem/am$c;,
        Lcom/huawei/hem/am$d;,
        Lcom/huawei/hem/am$f;
    }
.end annotation


# static fields
.field public static final y:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Z

.field public final b:Lcom/huawei/hem/am$e;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/hem/lm;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Ljava/util/concurrent/ScheduledExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public final j:Lcom/huawei/hem/om;

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:Lcom/huawei/hem/pm;

.field public final t:Lcom/huawei/hem/pm;

.field public final u:Ljava/net/Socket;

.field public final v:Lcom/huawei/hem/mm;

.field public final w:Lcom/huawei/hem/am$g;

.field public final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/huawei/hem/am;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp Http2Connection"

    .line 3
    invoke-static {v8, v1}, Lcom/huawei/hem/tk;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/huawei/hem/am;->y:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/am$c;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lcom/huawei/hem/am;->k:J

    .line 4
    iput-wide v2, v0, Lcom/huawei/hem/am;->l:J

    .line 5
    iput-wide v2, v0, Lcom/huawei/hem/am;->m:J

    .line 6
    iput-wide v2, v0, Lcom/huawei/hem/am;->n:J

    .line 7
    iput-wide v2, v0, Lcom/huawei/hem/am;->o:J

    .line 8
    iput-wide v2, v0, Lcom/huawei/hem/am;->p:J

    .line 9
    iput-wide v2, v0, Lcom/huawei/hem/am;->q:J

    .line 10
    new-instance v2, Lcom/huawei/hem/pm;

    invoke-direct {v2}, Lcom/huawei/hem/pm;-><init>()V

    iput-object v2, v0, Lcom/huawei/hem/am;->s:Lcom/huawei/hem/pm;

    .line 11
    new-instance v2, Lcom/huawei/hem/pm;

    invoke-direct {v2}, Lcom/huawei/hem/pm;-><init>()V

    iput-object v2, v0, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    .line 12
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/huawei/hem/am;->x:Ljava/util/Set;

    .line 13
    iget-object v2, v1, Lcom/huawei/hem/am$c;->f:Lcom/huawei/hem/om;

    iput-object v2, v0, Lcom/huawei/hem/am;->j:Lcom/huawei/hem/om;

    .line 14
    iget-boolean v2, v1, Lcom/huawei/hem/am$c;->g:Z

    iput-boolean v2, v0, Lcom/huawei/hem/am;->a:Z

    .line 15
    iget-object v3, v1, Lcom/huawei/hem/am$c;->e:Lcom/huawei/hem/am$e;

    iput-object v3, v0, Lcom/huawei/hem/am;->b:Lcom/huawei/hem/am$e;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 16
    :goto_0
    iput v2, v0, Lcom/huawei/hem/am;->f:I

    .line 17
    iget-boolean v5, v1, Lcom/huawei/hem/am$c;->g:Z

    if-eqz v5, :cond_1

    add-int/2addr v2, v3

    .line 18
    iput v2, v0, Lcom/huawei/hem/am;->f:I

    .line 19
    :cond_1
    iget-boolean v2, v1, Lcom/huawei/hem/am$c;->g:Z

    const/4 v3, 0x7

    if-eqz v2, :cond_2

    .line 20
    iget-object v2, v0, Lcom/huawei/hem/am;->s:Lcom/huawei/hem/pm;

    const/high16 v5, 0x1000000

    invoke-virtual {v2, v3, v5}, Lcom/huawei/hem/pm;->b(II)Lcom/huawei/hem/pm;

    .line 21
    :cond_2
    iget-object v2, v1, Lcom/huawei/hem/am$c;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    .line 22
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v2, v12

    const-string v6, "OkHttp %s Writer"

    .line 23
    invoke-static {v6, v2}, Lcom/huawei/hem/tk;->k(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 24
    new-instance v6, Lcom/huawei/hem/qk;

    invoke-direct {v6, v2, v12}, Lcom/huawei/hem/qk;-><init>(Ljava/lang/String;Z)V

    .line 25
    invoke-direct {v5, v4, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v5, v0, Lcom/huawei/hem/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    iget v2, v1, Lcom/huawei/hem/am$c;->h:I

    if-eqz v2, :cond_3

    .line 27
    new-instance v6, Lcom/huawei/hem/am$d;

    invoke-direct {v6, v0}, Lcom/huawei/hem/am$d;-><init>(Lcom/huawei/hem/am;)V

    iget v2, v1, Lcom/huawei/hem/am$c;->h:I

    int-to-long v9, v2

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v7, v9

    invoke-virtual/range {v5 .. v11}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 28
    :cond_3
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v16, 0x3c

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v6, v5, v12

    const-string v6, "OkHttp %s Push Observer"

    .line 29
    invoke-static {v6, v5}, Lcom/huawei/hem/tk;->k(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 30
    new-instance v6, Lcom/huawei/hem/qk;

    invoke-direct {v6, v5, v4}, Lcom/huawei/hem/qk;-><init>(Ljava/lang/String;Z)V

    move-object v13, v2

    move-object/from16 v20, v6

    .line 31
    invoke-direct/range {v13 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lcom/huawei/hem/am;->i:Ljava/util/concurrent/ExecutorService;

    .line 32
    iget-object v2, v0, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    const v4, 0xffff

    invoke-virtual {v2, v3, v4}, Lcom/huawei/hem/pm;->b(II)Lcom/huawei/hem/pm;

    .line 33
    iget-object v2, v0, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    const/4 v3, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Lcom/huawei/hem/pm;->b(II)Lcom/huawei/hem/pm;

    .line 34
    iget-object v2, v0, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    invoke-virtual {v2}, Lcom/huawei/hem/pm;->a()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/huawei/hem/am;->r:J

    .line 35
    iget-object v2, v1, Lcom/huawei/hem/am$c;->a:Ljava/net/Socket;

    iput-object v2, v0, Lcom/huawei/hem/am;->u:Ljava/net/Socket;

    .line 36
    new-instance v2, Lcom/huawei/hem/mm;

    iget-object v3, v1, Lcom/huawei/hem/am$c;->d:Lcom/huawei/hem/in;

    iget-boolean v4, v0, Lcom/huawei/hem/am;->a:Z

    invoke-direct {v2, v3, v4}, Lcom/huawei/hem/mm;-><init>(Lcom/huawei/hem/in;Z)V

    iput-object v2, v0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    .line 37
    new-instance v2, Lcom/huawei/hem/am$g;

    new-instance v3, Lcom/huawei/hem/km;

    iget-object v1, v1, Lcom/huawei/hem/am$c;->c:Lcom/huawei/hem/jn;

    iget-boolean v4, v0, Lcom/huawei/hem/am;->a:Z

    invoke-direct {v3, v1, v4}, Lcom/huawei/hem/km;-><init>(Lcom/huawei/hem/jn;Z)V

    invoke-direct {v2, v0, v3}, Lcom/huawei/hem/am$g;-><init>(Lcom/huawei/hem/am;Lcom/huawei/hem/km;)V

    iput-object v2, v0, Lcom/huawei/hem/am;->w:Lcom/huawei/hem/am$g;

    return-void
.end method


# virtual methods
.method public N(ILcom/huawei/hem/wl;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/huawei/hem/am$a;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/hem/am$a;-><init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;ILcom/huawei/hem/wl;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public O(IJ)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lcom/huawei/hem/am$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hem/am$b;-><init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 3
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V
    .locals 3
    .param p3    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huawei/hem/am;->i(Lcom/huawei/hem/wl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/huawei/hem/lm;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/huawei/hem/lm;

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 8
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lcom/huawei/hem/lm;->c(Lcom/huawei/hem/wl;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_3
    iget-object p1, p0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {p1}, Lcom/huawei/hem/mm;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 10
    :catch_2
    :try_start_4
    iget-object p1, p0, Lcom/huawei/hem/am;->u:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 11
    :catch_3
    iget-object p1, p0, Lcom/huawei/hem/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 12
    iget-object p1, p0, Lcom/huawei/hem/am;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(I)Lcom/huawei/hem/lm;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/lm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hem/wl;->NO_ERROR:Lcom/huawei/hem/wl;

    sget-object v1, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/hem/am;->a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    return-void
.end method

.method public declared-synchronized d()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    const v1, 0x7fffffff

    .line 2
    iget v2, v0, Lcom/huawei/hem/pm;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/huawei/hem/pm;->b:[I

    const/4 v1, 0x4

    aget v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Lcom/huawei/hem/sk;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/am;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/am;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized h(I)Lcom/huawei/hem/lm;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/lm;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Lcom/huawei/hem/wl;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lcom/huawei/hem/am;->g:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lcom/huawei/hem/am;->g:Z

    .line 6
    iget v1, p0, Lcom/huawei/hem/am;->e:I

    .line 7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    iget-object v2, p0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    sget-object v3, Lcom/huawei/hem/tk;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/huawei/hem/mm;->f(ILcom/huawei/hem/wl;[B)V

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public declared-synchronized j(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/huawei/hem/am;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/hem/am;->q:J

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/am;->s:Lcom/huawei/hem/pm;

    invoke-virtual {p1}, Lcom/huawei/hem/pm;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iget-wide v0, p0, Lcom/huawei/hem/am;->q:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/hem/am;->O(IJ)V

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcom/huawei/hem/am;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k(IZLcom/huawei/hem/hn;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1
    iget-object p4, p0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {p4, p2, p1, p3, v3}, Lcom/huawei/hem/mm;->c(ZILcom/huawei/hem/hn;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/huawei/hem/am;->r:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    iget-wide v4, p0, Lcom/huawei/hem/am;->r:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 8
    iget-object v4, p0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    .line 9
    iget v4, v4, Lcom/huawei/hem/mm;->d:I

    .line 10
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 11
    iget-wide v4, p0, Lcom/huawei/hem/am;->r:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/hem/am;->r:J

    .line 12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 13
    iget-object v4, p0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lcom/huawei/hem/mm;->c(ZILcom/huawei/hem/hn;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 14
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 16
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public l(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hem/mm;->h(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {p0, p2, p2, p1}, Lcom/huawei/hem/am;->a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
