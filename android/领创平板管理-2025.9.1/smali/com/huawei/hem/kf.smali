.class public Lcom/huawei/hem/kf;
.super Ljava/lang/Object;
.source "RemitDatabase.java"

# interfaces
.implements Lcom/huawei/hem/if;


# instance fields
.field public final a:Lcom/huawei/hem/jf;

.field public final b:Lcom/huawei/hem/lf;

.field public c:Landroid/os/Handler;

.field public final d:J

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/kf;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Lcom/huawei/hem/jf;

    invoke-direct {v0}, Lcom/huawei/hem/jf;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    .line 5
    new-instance v0, Lcom/huawei/hem/lf;

    invoke-direct {v0}, Lcom/huawei/hem/lf;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    .line 6
    sget-object v0, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    .line 7
    iget-wide v0, v0, Lcom/huawei/hem/gh;->b:J

    iput-wide v0, p0, Lcom/huawei/hem/kf;->d:J

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemitHandoverToDB"

    .line 9
    invoke-static {v1}, Lcom/huawei/hem/hh;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/huawei/hem/kf$a;

    invoke-direct {v2, p0}, Lcom/huawei/hem/kf$a;-><init>(Lcom/huawei/hem/kf;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/huawei/hem/kf;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    throw v1

    .line 5
    :cond_2
    throw v1
.end method

.method public b(Lcom/huawei/hem/ng;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/jf;->b(Lcom/huawei/hem/ng;)V

    .line 2
    iget v0, p1, Lcom/huawei/hem/ng;->a:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hem/kf;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/huawei/hem/ng;->b()Landroid/content/ContentValues;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "filedownloaderConnection"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/jf;->c(I)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/lf;->c(I)V

    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/jf;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/huawei/hem/jf;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    .line 6
    iget-object v1, v0, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "filedownloader"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    iget-object v0, v0, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloaderConnection"

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Lcom/huawei/hem/if$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    iget-object v1, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    iget-object v2, v1, Lcom/huawei/hem/jf;->a:Landroid/util/SparseArray;

    iget-object v1, v1, Lcom/huawei/hem/jf;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    new-instance v3, Lcom/huawei/hem/lf$a;

    invoke-direct {v3, v0, v2, v1}, Lcom/huawei/hem/lf$a;-><init>(Lcom/huawei/hem/lf;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v3

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public e(ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/lf;->e(ILjava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->c:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/huawei/hem/kf;->d:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public g(IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    .line 2
    invoke-virtual {p2, p1}, Lcom/huawei/hem/jf;->remove(I)Z

    .line 3
    iget-object p2, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/huawei/hem/kf;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p2, p0, Lcom/huawei/hem/kf;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hem/kf;->g:Ljava/lang/Thread;

    .line 7
    iget-object p2, p0, Lcom/huawei/hem/kf;->c:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 9
    iget-object p2, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    .line 10
    invoke-virtual {p2, p1}, Lcom/huawei/hem/lf;->remove(I)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    .line 12
    invoke-virtual {p2, p1}, Lcom/huawei/hem/lf;->remove(I)Z

    .line 13
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/jf;->h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 2
    iget v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hem/kf;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/lf;->h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    return-void
.end method

.method public i(ILjava/lang/Throwable;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hem/kf;->r(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hem/lf;->i(ILjava/lang/Throwable;J)V

    .line 5
    iget-object p2, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public j(ILjava/lang/String;JJI)V
    .locals 10

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/huawei/hem/lf;->j(ILjava/lang/String;JJI)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 4
    throw v1
.end method

.method public k(IIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hem/jf;->k(IIJ)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hem/lf;->k(IIJ)V

    return-void
.end method

.method public l(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hem/lf;->l(IJ)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public m(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/hem/lf;->m(IJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public n(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/huawei/hem/ng;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/jf;->n(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/jf;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    return-object p1
.end method

.method public p(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/lf;->p(II)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public q(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hem/kf;->r(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hem/lf;->q(IJ)V

    .line 5
    iget-object p2, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/kf;->g:Ljava/lang/Thread;

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/kf;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/hem/kf;->t(I)V

    :goto_0
    return-void
.end method

.method public remove(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/lf;->remove(I)Z

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/jf;->remove(I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final s(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final t(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    iget-object v1, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v1, p1}, Lcom/huawei/hem/jf;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hem/lf;->h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kf;->a:Lcom/huawei/hem/jf;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/jf;->n(I)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v1, p1}, Lcom/huawei/hem/lf;->c(I)V

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/ng;

    .line 5
    iget-object v1, p0, Lcom/huawei/hem/kf;->b:Lcom/huawei/hem/lf;

    invoke-virtual {v1, v0}, Lcom/huawei/hem/lf;->b(Lcom/huawei/hem/ng;)V

    goto :goto_0

    :cond_0
    return-void
.end method
