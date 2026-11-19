.class public Lcom/huawei/hem/hm;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/huawei/hem/pm;

.field public final synthetic d:Lcom/huawei/hem/am$g;


# direct methods
.method public varargs constructor <init>(Lcom/huawei/hem/am$g;Ljava/lang/String;[Ljava/lang/Object;ZLcom/huawei/hem/pm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/hm;->d:Lcom/huawei/hem/am$g;

    iput-boolean p4, p0, Lcom/huawei/hem/hm;->b:Z

    iput-object p5, p0, Lcom/huawei/hem/hm;->c:Lcom/huawei/hem/pm;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/hm;->d:Lcom/huawei/hem/am$g;

    iget-boolean v1, p0, Lcom/huawei/hem/hm;->b:Z

    iget-object v2, p0, Lcom/huawei/hem/hm;->c:Lcom/huawei/hem/pm;

    .line 2
    iget-object v3, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v3, v3, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v4, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v5, v5, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    invoke-virtual {v5}, Lcom/huawei/hem/pm;->a()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v1, v1, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    .line 6
    iput v6, v1, Lcom/huawei/hem/pm;->a:I

    .line 7
    iget-object v1, v1, Lcom/huawei/hem/pm;->b:[I

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([II)V

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v1, v1, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    const/4 v7, 0x0

    if-eqz v1, :cond_8

    move v8, v6

    :goto_0
    const/16 v9, 0xa

    const/4 v10, 0x1

    if-ge v8, v9, :cond_3

    shl-int v9, v10, v8

    .line 9
    iget v11, v2, Lcom/huawei/hem/pm;->a:I

    and-int/2addr v9, v11

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    if-nez v10, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v9, v2, Lcom/huawei/hem/pm;->b:[I

    aget v9, v9, v8

    .line 11
    invoke-virtual {v1, v8, v9}, Lcom/huawei/hem/pm;->b(II)Lcom/huawei/hem/pm;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v1, v1, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    invoke-virtual {v1}, Lcom/huawei/hem/pm;->a()I

    move-result v1

    const/4 v2, -0x1

    const-wide/16 v8, 0x0

    if-eq v1, v2, :cond_4

    if-eq v1, v5, :cond_4

    sub-int/2addr v1, v5

    int-to-long v1, v1

    .line 13
    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v5, v5, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 14
    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v5, v5, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v7, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v7, v7, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-array v7, v7, [Lcom/huawei/hem/lm;

    invoke-interface {v5, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, [Lcom/huawei/hem/lm;

    goto :goto_3

    :cond_4
    move-wide v1, v8

    .line 15
    :cond_5
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    iget-object v4, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v4, v4, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v5, v5, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    invoke-virtual {v4, v5}, Lcom/huawei/hem/mm;->a(Lcom/huawei/hem/pm;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v4

    .line 17
    :try_start_3
    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 18
    sget-object v11, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {v5, v11, v11, v4}, Lcom/huawei/hem/am;->a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    .line 19
    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_7

    .line 20
    array-length v3, v7

    move v4, v6

    :goto_5
    if-ge v4, v3, :cond_7

    aget-object v5, v7, v4

    .line 21
    monitor-enter v5

    .line 22
    :try_start_4
    iget-wide v11, v5, Lcom/huawei/hem/lm;->b:J

    add-long/2addr v11, v1

    iput-wide v11, v5, Lcom/huawei/hem/lm;->b:J

    cmp-long v11, v1, v8

    if-lez v11, :cond_6

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 24
    :cond_6
    monitor-exit v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 25
    :cond_7
    sget-object v1, Lcom/huawei/hem/am;->y:Ljava/util/concurrent/ExecutorService;

    .line 26
    new-instance v2, Lcom/huawei/hem/im;

    const-string v3, "OkHttp %s settings"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v5, v5, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-direct {v2, v0, v3, v4}, Lcom/huawei/hem/im;-><init>(Lcom/huawei/hem/am$g;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 27
    :cond_8
    :try_start_5
    throw v7

    :catchall_1
    move-exception v0

    .line 28
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :catchall_2
    move-exception v0

    .line 29
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
