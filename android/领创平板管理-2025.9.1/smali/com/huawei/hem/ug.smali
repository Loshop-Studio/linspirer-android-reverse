.class public Lcom/huawei/hem/ug;
.super Ljava/lang/Object;
.source "FileDownloadThreadPool.java"


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/huawei/hem/qf;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/huawei/hem/ug;->d:I

    const-string v0, "Network"

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/of$b;->f(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/ug;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    iput p1, p0, Lcom/huawei/hem/ug;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/qf;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    iget-object v1, p1, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 3
    invoke-interface {v0, v1}, Lcom/huawei/hem/if;->n(I)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/huawei/hem/qf;->g(Ljava/util/List;)V

    .line 5
    iget-object v0, p1, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    .line 6
    iget-object v1, v0, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    iget-object v1, v0, Lcom/huawei/hem/sf;->b:Lcom/huawei/hem/if;

    iget-object v3, v0, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 9
    iget v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 10
    invoke-interface {v1, v3}, Lcom/huawei/hem/if;->a(I)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/huawei/hem/sf;->j(B)V

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;

    .line 14
    iget-object v1, p1, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 15
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/huawei/hem/ug;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    iget p1, p0, Lcom/huawei/hem/ug;->d:I

    const/16 v0, 0x258

    if-lt p1, v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/huawei/hem/ug;->b()V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/huawei/hem/ug;->d:I

    goto :goto_0

    :cond_0
    add-int/2addr p1, v2

    .line 22
    iput p1, p0, Lcom/huawei/hem/ug;->d:I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hem/qf;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/huawei/hem/qf;->h()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/huawei/hem/ug;->b()V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const-string p1, "Can\'t change the max network thread count, because the  network thread pool isn\'t in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly."

    new-array v0, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1, v0}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_0
    :try_start_3
    invoke-static {p1}, Lcom/huawei/hem/gh;->a(I)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/huawei/hem/ug;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    const-string v2, "Network"

    .line 8
    invoke-static {p1, v2}, Lcom/huawei/hem/of$b;->f(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hem/ug;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    const-string v2, "recreate the network thread pool and discard %d tasks"

    new-array v4, v3, [Ljava/lang/Object;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 11
    invoke-static {p0, v2, v4}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    iput p1, p0, Lcom/huawei/hem/ug;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 14
    :try_start_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
