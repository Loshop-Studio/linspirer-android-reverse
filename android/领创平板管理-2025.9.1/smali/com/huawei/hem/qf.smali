.class public Lcom/huawei/hem/qf;
.super Ljava/lang/Object;
.source "DownloadLaunchRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/huawei/hem/uf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/qf$b;,
        Lcom/huawei/hem/qf$c;
    }
.end annotation


# static fields
.field public static final w:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final a:Lcom/huawei/hem/sf;

.field public final b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field public final c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/huawei/hem/if;

.field public final g:Lcom/huawei/hem/af;

.field public h:Z

.field public i:I

.field public j:Z

.field public final k:Z

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hem/rf;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/huawei/hem/rf;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile s:Z

.field public volatile t:Z

.field public volatile u:Ljava/lang/Exception;

.field public v:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/huawei/hem/ah;

    const-string v0, "ConnectionBlock"

    invoke-direct {v7, v0}, Lcom/huawei/hem/ah;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0xf

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    sput-object v8, Lcom/huawei/hem/qf;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/huawei/hem/af;IIZZILcom/huawei/hem/qf$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p9, 0x0

    .line 2
    iput-boolean p9, p0, Lcom/huawei/hem/qf;->j:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hem/qf;->l:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/huawei/hem/qf;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-boolean p9, p0, Lcom/huawei/hem/qf;->s:Z

    .line 6
    iput-boolean p9, p0, Lcom/huawei/hem/qf;->h:Z

    .line 7
    iput-object p1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 8
    iput-object p2, p0, Lcom/huawei/hem/qf;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 9
    iput-boolean p6, p0, Lcom/huawei/hem/qf;->d:Z

    .line 10
    iput-boolean p7, p0, Lcom/huawei/hem/qf;->e:Z

    .line 11
    sget-object p2, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 12
    invoke-virtual {p2}, Lcom/huawei/hem/pf;->b()Lcom/huawei/hem/if;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    .line 13
    sget-object p2, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 14
    invoke-virtual {p2}, Lcom/huawei/hem/pf;->e()Lcom/huawei/hem/eh;

    move-result-object p2

    check-cast p2, Lcom/huawei/hem/yg$a;

    if-eqz p2, :cond_0

    .line 15
    iput-boolean v1, p0, Lcom/huawei/hem/qf;->k:Z

    .line 16
    iput-object p3, p0, Lcom/huawei/hem/qf;->g:Lcom/huawei/hem/af;

    .line 17
    iput p8, p0, Lcom/huawei/hem/qf;->i:I

    .line 18
    new-instance p2, Lcom/huawei/hem/sf;

    invoke-direct {p2, p1, p8, p4, p5}, Lcom/huawei/hem/sf;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V

    iput-object p2, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 19
    throw p1
.end method


# virtual methods
.method public final a(J)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->o:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2
    iget v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hem/qf;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hem/qf;->q:Z

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_b

    .line 4
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->o:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    iget p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    return p1

    .line 7
    :cond_2
    sget-object v0, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 8
    iget-object v1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 9
    iget v3, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 10
    iget-object v3, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 11
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    .line 12
    iget-object v1, v0, Lcom/huawei/hem/pf;->b:Lcom/huawei/hem/bh;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, v0, Lcom/huawei/hem/pf;->b:Lcom/huawei/hem/bh;

    if-nez v1, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/huawei/hem/pf;->c()Lcom/huawei/hem/qg;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    new-instance v1, Lcom/huawei/hem/ff;

    invoke-direct {v1}, Lcom/huawei/hem/ff;-><init>()V

    .line 17
    iput-object v1, v0, Lcom/huawei/hem/pf;->b:Lcom/huawei/hem/bh;

    goto :goto_1

    .line 18
    :cond_4
    throw v3

    .line 19
    :cond_5
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v1, v0, Lcom/huawei/hem/pf;->b:Lcom/huawei/hem/bh;

    .line 21
    :goto_2
    check-cast v1, Lcom/huawei/hem/ff;

    if-eqz v1, :cond_a

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    const-wide/32 v0, 0x500000

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    const/4 v2, 0x2

    goto :goto_3

    :cond_7
    const-wide/32 v0, 0x3200000

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v2, 0x3

    goto :goto_3

    :cond_8
    const-wide/32 v0, 0x6400000

    cmp-long p1, p1, v0

    if-gez p1, :cond_9

    const/4 v2, 0x4

    goto :goto_3

    :cond_9
    const/4 v2, 0x5

    :goto_3
    return v2

    .line 22
    :cond_a
    throw v3

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    return v2
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2
    iget v7, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 3
    iget-boolean v1, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 7
    invoke-static {v0, v5}, Lcom/huawei/hem/hh;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/huawei/hem/qf;->d:Z

    const/4 v2, 0x0

    invoke-static {v7, v5, v1, v2}, Lcom/huawei/hem/of$b;->b(ILjava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    iget-object v1, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v1, v0}, Lcom/huawei/hem/if;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v3, p0, Lcom/huawei/hem/qf;->g:Lcom/huawei/hem/af;

    invoke-static {v7, v1, v3, v2}, Lcom/huawei/hem/of$b;->c(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/huawei/hem/af;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    .line 12
    invoke-interface {v2, v0}, Lcom/huawei/hem/if;->n(I)Ljava/util/List;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v3, v0}, Lcom/huawei/hem/if;->remove(I)Z

    .line 14
    iget-object v3, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v3, v0}, Lcom/huawei/hem/if;->c(I)V

    .line 15
    iget-object v3, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 16
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 19
    :cond_0
    invoke-static {v0, v1}, Lcom/huawei/hem/hh;->m(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v3

    .line 21
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 22
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 23
    iget-wide v3, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:J

    .line 24
    invoke-virtual {v0, v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f(J)V

    .line 25
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 26
    iget-object v3, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    .line 27
    iput-object v3, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    .line 28
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    .line 29
    iput v1, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    .line 30
    iget-object v1, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v1, v0}, Lcom/huawei/hem/if;->h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    if-eqz v2, :cond_1

    .line 31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hem/ng;

    .line 32
    iput v7, v1, Lcom/huawei/hem/ng;->a:I

    .line 33
    iget-object v2, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v2, v1}, Lcom/huawei/hem/if;->b(Lcom/huawei/hem/ng;)V

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/huawei/hem/qf$c;

    invoke-direct {v0, p0}, Lcom/huawei/hem/qf$c;-><init>(Lcom/huawei/hem/qf;)V

    throw v0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v0, v7}, Lcom/huawei/hem/if;->remove(I)Z

    .line 36
    iget-object v0, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v0, v7}, Lcom/huawei/hem/if;->c(I)V

    .line 37
    new-instance v0, Lcom/huawei/hem/qf$b;

    invoke-direct {v0, p0}, Lcom/huawei/hem/qf$b;-><init>(Lcom/huawei/hem/qf;)V

    throw v0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 39
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/huawei/hem/qf;->g:Lcom/huawei/hem/af;

    move v1, v7

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/huawei/hem/of$b;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/huawei/hem/af;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v0, v7}, Lcom/huawei/hem/if;->remove(I)Z

    .line 42
    iget-object v0, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v0, v7}, Lcom/huawei/hem/if;->c(I)V

    .line 43
    new-instance v0, Lcom/huawei/hem/qf$b;

    invoke-direct {v0, p0}, Lcom/huawei/hem/qf$b;-><init>(Lcom/huawei/hem/qf;)V

    throw v0

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v0, v7}, Lcom/huawei/hem/if;->remove(I)Z

    .line 45
    iget-object v0, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v0, v7}, Lcom/huawei/hem/if;->c(I)V

    .line 46
    new-instance v0, Lcom/huawei/hem/qf$b;

    invoke-direct {v0, p0}, Lcom/huawei/hem/qf$b;-><init>(Lcom/huawei/hem/qf;)V

    throw v0

    :cond_6
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->e:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Lcom/huawei/hem/zf;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5
    iget v5, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v1, v4, v2

    const-string v1, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    .line 7
    invoke-static {v1, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hem/zf;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->e:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/huawei/hem/hh;->p()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    new-instance v0, Lcom/huawei/hem/bg;

    invoke-direct {v0}, Lcom/huawei/hem/bg;-><init>()V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public final d(Ljava/util/List;J)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hem/ng;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2
    iget v9, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 3
    iget-object v10, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    .line 4
    iget-object v1, v8, Lcom/huawei/hem/qf;->v:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    :goto_0
    move-object/from16 v18, v1

    .line 6
    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v19

    .line 7
    iget-boolean v7, v8, Lcom/huawei/hem/qf;->o:Z

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/ng;

    .line 9
    iget-wide v11, v2, Lcom/huawei/hem/ng;->e:J

    const-wide/16 v13, -0x1

    cmp-long v6, v11, v13

    if-nez v6, :cond_1

    .line 10
    iget-wide v11, v2, Lcom/huawei/hem/ng;->d:J

    sub-long v11, p2, v11

    goto :goto_2

    .line 11
    :cond_1
    iget-wide v13, v2, Lcom/huawei/hem/ng;->d:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    :goto_2
    move-wide/from16 v30, v11

    .line 12
    iget-wide v11, v2, Lcom/huawei/hem/ng;->d:J

    .line 13
    iget-wide v13, v2, Lcom/huawei/hem/ng;->c:J

    sub-long/2addr v11, v13

    add-long v33, v11, v0

    cmp-long v0, v30, v21

    if-nez v0, :cond_2

    move v13, v7

    goto/16 :goto_4

    .line 14
    :cond_2
    iget-wide v0, v2, Lcom/huawei/hem/ng;->c:J

    .line 15
    iget-wide v11, v2, Lcom/huawei/hem/ng;->d:J

    .line 16
    iget-wide v13, v2, Lcom/huawei/hem/ng;->e:J

    .line 17
    new-instance v6, Lcom/huawei/hem/of;

    const/16 v32, 0x0

    move-object/from16 v23, v6

    move-wide/from16 v24, v0

    move-wide/from16 v26, v11

    move-wide/from16 v28, v13

    invoke-direct/range {v23 .. v32}, Lcom/huawei/hem/of;-><init>(JJJJLcom/huawei/hem/of$a;)V

    .line 18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    iget v1, v2, Lcom/huawei/hem/ng;->b:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v7, :cond_3

    move-object v15, v10

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    move-object v15, v2

    .line 21
    :goto_3
    iget-object v2, v8, Lcom/huawei/hem/qf;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 22
    iget-boolean v11, v8, Lcom/huawei/hem/qf;->e:Z

    .line 23
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    if-eqz v19, :cond_5

    if-eqz v23, :cond_5

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    if-eqz v18, :cond_4

    .line 24
    new-instance v3, Lcom/huawei/hem/nf;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v17, 0x0

    move-object v11, v3

    move-object v12, v6

    move-object/from16 v14, v18

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/huawei/hem/nf;-><init>(Lcom/huawei/hem/of;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/huawei/hem/nf$a;)V

    .line 25
    new-instance v11, Lcom/huawei/hem/rf;

    iget v2, v3, Lcom/huawei/hem/nf;->a:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 26
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v12, 0x0

    move-object v0, v11

    move v1, v2

    move v2, v4

    move-object/from16 v4, p0

    move-object/from16 v6, v19

    move v13, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/huawei/hem/rf;-><init>(IILcom/huawei/hem/nf;Lcom/huawei/hem/uf;ZLjava/lang/String;Lcom/huawei/hem/rf$a;)V

    .line 27
    iget-object v0, v8, Lcom/huawei/hem/qf;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move v7, v13

    move-wide/from16 v0, v33

    goto/16 :goto_1

    .line 28
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 29
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v4

    aput-object v19, v1, v3

    aput-object v23, v1, v5

    const-string v2, "%s %s %B"

    invoke-static {v2, v1}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_6
    iget-object v2, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v6

    cmp-long v2, v0, v6

    if-eqz v2, :cond_7

    new-array v2, v5, [Ljava/lang/Object;

    .line 31
    iget-object v5, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 32
    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "correct the sofar[%d] from connection table[%d]"

    .line 33
    invoke-static {v8, v3, v2}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v2, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 35
    iget-object v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 36
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/huawei/hem/qf;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    iget-object v1, v8, Lcom/huawei/hem/qf;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/rf;

    .line 38
    iget-boolean v3, v8, Lcom/huawei/hem/qf;->s:Z

    if-eqz v3, :cond_8

    .line 39
    invoke-virtual {v2}, Lcom/huawei/hem/rf;->b()V

    goto :goto_5

    .line 40
    :cond_8
    invoke-static {v2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 41
    :cond_9
    iget-boolean v1, v8, Lcom/huawei/hem/qf;->s:Z

    if-eqz v1, :cond_a

    .line 42
    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x2

    .line 43
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 44
    :cond_a
    sget-object v1, Lcom/huawei/hem/qf;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method public final e(JLjava/lang/String;)V
    .locals 9

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/hh;->a(Ljava/lang/String;)Lcom/huawei/hem/xg;

    move-result-object v1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long v5, p1, v7

    .line 3
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_0

    .line 5
    sget-object p3, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    .line 6
    iget-boolean p3, p3, Lcom/huawei/hem/gh;->f:Z

    if-nez p3, :cond_2

    .line 7
    move-object p3, v1

    check-cast p3, Lcom/huawei/hem/yg;

    .line 8
    iget-object p3, p3, Lcom/huawei/hem/yg;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/huawei/hem/cg;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hem/cg;-><init>(JJJ)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 10
    check-cast v1, Lcom/huawei/hem/yg;

    invoke-virtual {v1}, Lcom/huawei/hem/yg;->a()V

    .line 11
    :cond_1
    throw p1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    check-cast v1, Lcom/huawei/hem/yg;

    invoke-virtual {v1}, Lcom/huawei/hem/yg;->a()V

    :cond_3
    return-void
.end method

.method public final f(Ljava/util/Map;Lcom/huawei/hem/nf;Lcom/huawei/hem/gf;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/huawei/hem/nf;",
            "Lcom/huawei/hem/gf;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2
    iget v4, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 3
    move-object/from16 v2, p3

    check-cast v2, Lcom/huawei/hem/hf;

    invoke-virtual {v2}, Lcom/huawei/hem/hf;->b()I

    move-result v3

    const/4 v5, 0x1

    const/16 v6, 0xce

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v6, v2, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    const-string v7, "Accept-Ranges"

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bytes"

    .line 5
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    .line 6
    :goto_1
    iput-boolean v6, v0, Lcom/huawei/hem/qf;->p:Z

    const/16 v6, 0xc8

    const/16 v7, 0xc9

    const/4 v8, 0x0

    if-eq v3, v6, :cond_3

    if-eq v3, v7, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v6, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v5

    .line 7
    :goto_3
    const-class v9, Lcom/huawei/hem/hh;

    .line 8
    iget-object v10, v2, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    const-string v11, "Content-Range"

    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x2

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    const-string v14, "/"

    .line 9
    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 10
    array-length v15, v14

    if-lt v15, v13, :cond_5

    .line 11
    :try_start_0
    aget-object v14, v14, v5

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    new-array v14, v5, [Ljava/lang/Object;

    aput-object v10, v14, v8

    const-string v10, "parse instance length failed with %s"

    .line 12
    invoke-static {v9, v10, v14}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    const-wide/16 v14, -0x1

    :goto_5
    const-wide/16 v11, 0x0

    cmp-long v10, v14, v11

    if-gez v10, :cond_6

    new-array v10, v8, [Ljava/lang/Object;

    const-string v14, "don\'t get instance length fromContent-Range header"

    .line 13
    invoke-static {v9, v14, v10}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v14, -0x1

    :cond_6
    cmp-long v9, v14, v11

    if-nez v9, :cond_7

    .line 14
    sget-object v9, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    .line 15
    iget-boolean v9, v9, Lcom/huawei/hem/gh;->h:Z

    if-eqz v9, :cond_7

    const-wide/16 v14, -0x1

    .line 16
    :cond_7
    iget-object v9, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 17
    iget-object v9, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    .line 18
    iget-object v10, v2, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    const-string v13, "Etag"

    invoke-virtual {v10, v13}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x19c

    if-ne v3, v13, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v9, :cond_a

    .line 19
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    if-nez v6, :cond_9

    .line 20
    iget-boolean v13, v0, Lcom/huawei/hem/qf;->p:Z

    if-eqz v13, :cond_a

    :cond_9
    :goto_6
    move/from16 v16, v6

    goto :goto_a

    :cond_a
    if-ne v3, v7, :cond_c

    .line 21
    iget-object v7, v1, Lcom/huawei/hem/nf;->d:Lcom/huawei/hem/of;

    move/from16 v16, v6

    iget-wide v5, v7, Lcom/huawei/hem/of;->b:J

    cmp-long v5, v5, v11

    if-lez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    move v5, v8

    :goto_7
    if-eqz v5, :cond_d

    goto :goto_8

    :cond_c
    move/from16 v16, v6

    :cond_d
    const/16 v5, 0x1a0

    if-ne v3, v5, :cond_10

    .line 22
    iget-boolean v5, v0, Lcom/huawei/hem/qf;->p:Z

    if-eqz v5, :cond_e

    cmp-long v5, v14, v11

    if-ltz v5, :cond_e

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "get 416 but the Content-Range is returned, no need to retry"

    .line 23
    invoke-static {v0, v6, v5}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 24
    :cond_e
    iget-object v5, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v5

    cmp-long v5, v5, v11

    if-lez v5, :cond_f

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "get 416, precondition failed and just retry"

    .line 25
    invoke-static {v0, v6, v5}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 26
    :cond_f
    iget-boolean v5, v0, Lcom/huawei/hem/qf;->j:Z

    if-nez v5, :cond_10

    const/4 v5, 0x1

    .line 27
    iput-boolean v5, v0, Lcom/huawei/hem/qf;->j:Z

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "get 416, precondition failed and need to retry with discarding range"

    .line 28
    invoke-static {v0, v6, v5}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    :goto_9
    move v5, v8

    :goto_a
    const/4 v6, 0x0

    if-eqz v5, :cond_13

    .line 29
    iget-boolean v1, v0, Lcom/huawei/hem/qf;->o:Z

    const/4 v2, 0x3

    const/4 v5, 0x4

    if-eqz v1, :cond_11

    new-array v1, v5, [Ljava/lang/Object;

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v8

    const/4 v7, 0x1

    aput-object v9, v1, v7

    const/4 v7, 0x2

    aput-object v10, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    const-string v7, "there is precondition failed on this request[%d] with old etag[%s]\u3001new etag[%s]\u3001response code is %d"

    .line 31
    invoke-static {v0, v7, v1}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_11
    iget-object v1, v0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    iget-object v7, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 33
    iget v7, v7, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 34
    invoke-interface {v1, v7}, Lcom/huawei/hem/if;->c(I)V

    .line 35
    iget-object v1, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v7, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/huawei/hem/hh;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean v8, v0, Lcom/huawei/hem/qf;->o:Z

    if-eqz v9, :cond_12

    .line 37
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v9, v1, v8

    const/4 v5, 0x1

    aput-object v10, v1, v5

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "the old etag[%s] is the same to the new etag[%s], but the response status code is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!"

    .line 39
    invoke-static {v0, v2, v1}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    goto :goto_b

    :cond_12
    move-object v5, v10

    .line 40
    :goto_b
    iget-object v1, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 41
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 42
    iget-object v1, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1, v11, v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f(J)V

    .line 43
    iget-object v1, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 44
    iput-object v5, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    const/4 v2, 0x1

    .line 45
    iput v2, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    .line 46
    iget-object v3, v0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v6

    iget-object v1, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 47
    iget-wide v8, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:J

    .line 48
    iget v10, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    .line 49
    invoke-interface/range {v3 .. v10}, Lcom/huawei/hem/if;->j(ILjava/lang/String;JJI)V

    .line 50
    new-instance v1, Lcom/huawei/hem/qf$c;

    invoke-direct {v1, v0}, Lcom/huawei/hem/qf$c;-><init>(Lcom/huawei/hem/qf;)V

    throw v1

    .line 51
    :cond_13
    iget-object v4, v1, Lcom/huawei/hem/nf;->g:Ljava/util/List;

    if-eqz v4, :cond_14

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 52
    iget-object v1, v1, Lcom/huawei/hem/nf;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_c

    :cond_14
    move-object v1, v6

    .line 53
    :goto_c
    iput-object v1, v0, Lcom/huawei/hem/qf;->v:Ljava/lang/String;

    .line 54
    iget-boolean v1, v0, Lcom/huawei/hem/qf;->p:Z

    if-nez v1, :cond_16

    if-eqz v16, :cond_15

    goto :goto_d

    .line 55
    :cond_15
    new-instance v1, Lcom/huawei/hem/ag;

    .line 56
    invoke-virtual {v2}, Lcom/huawei/hem/hf;->c()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-direct {v1, v3, v4, v2}, Lcom/huawei/hem/ag;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    throw v1

    .line 57
    :cond_16
    :goto_d
    iget-object v1, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 58
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    if-eqz v3, :cond_20

    .line 59
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 60
    iget-object v2, v2, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    const-string v3, "Content-Disposition"

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_e

    .line 61
    :cond_17
    :try_start_1
    sget-object v3, Lcom/huawei/hem/hh;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    .line 63
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 64
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 66
    :cond_18
    sget-object v3, Lcom/huawei/hem/hh;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    .line 68
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    :cond_19
    :goto_e
    move-object v2, v6

    .line 69
    :goto_f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v1, :cond_1c

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_10

    .line 71
    :cond_1a
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_1b

    goto :goto_10

    :cond_1b
    move-object v6, v2

    :catch_2
    :cond_1c
    :goto_10
    move-object v2, v6

    .line 75
    :cond_1d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 76
    invoke-static {v1}, Lcom/huawei/hem/hh;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_1e
    const-string v1, "../"

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    :goto_11
    goto :goto_12

    .line 78
    :cond_1f
    new-instance v1, Lcom/huawei/hem/dg;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v8

    const-string v2, "The filename [%s] from the response is not allowable, because it contains \'../\', which can raise the directory traversal vulnerability"

    invoke-static {v2, v3}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/hem/dg;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    move-object v2, v6

    :goto_12
    const-wide/16 v3, -0x1

    cmp-long v1, v14, v3

    if-nez v1, :cond_21

    const/4 v5, 0x1

    goto :goto_13

    :cond_21
    move v5, v8

    .line 79
    :goto_13
    iput-boolean v5, v0, Lcom/huawei/hem/qf;->q:Z

    .line 80
    iget-object v5, v0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    iget-boolean v6, v0, Lcom/huawei/hem/qf;->o:Z

    if-eqz v6, :cond_22

    iget-boolean v6, v0, Lcom/huawei/hem/qf;->p:Z

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    goto :goto_14

    :cond_22
    move v6, v8

    .line 81
    :goto_14
    iget-object v7, v5, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 82
    iget-object v7, v7, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    if-eqz v7, :cond_24

    .line 83
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    goto :goto_15

    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v8

    const/4 v3, 0x1

    aput-object v7, v2, v3

    const-string v3, "callback onConnected must with precondition succeed, but the etag is changes(%s != %s)"

    .line 84
    invoke-static {v3, v2}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_24
    :goto_15
    iget-object v7, v5, Lcom/huawei/hem/sf;->c:Lcom/huawei/hem/sf$a;

    .line 86
    iput-boolean v6, v7, Lcom/huawei/hem/sf$a;->a:Z

    .line 87
    iget-object v6, v5, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 88
    iget-object v6, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 89
    iget-object v6, v5, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v6, v14, v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f(J)V

    .line 90
    iget-object v6, v5, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 91
    iput-object v10, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    .line 92
    iput-object v2, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e:Ljava/lang/String;

    .line 93
    iget-object v7, v5, Lcom/huawei/hem/sf;->b:Lcom/huawei/hem/if;

    .line 94
    iget v6, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    move-object/from16 v16, v7

    move/from16 v17, v6

    move-wide/from16 v18, v14

    move-object/from16 v20, v10

    move-object/from16 v21, v2

    .line 95
    invoke-interface/range {v16 .. v21}, Lcom/huawei/hem/if;->m(IJLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 96
    invoke-virtual {v5, v2}, Lcom/huawei/hem/sf;->j(B)V

    .line 97
    iget v2, v5, Lcom/huawei/hem/sf;->f:I

    int-to-long v6, v2

    cmp-long v2, v6, v11

    if-gtz v2, :cond_25

    move-wide v11, v3

    goto :goto_17

    :cond_25
    const-wide/16 v2, 0x1

    if-nez v1, :cond_26

    goto :goto_16

    .line 98
    :cond_26
    div-long v6, v14, v6

    cmp-long v1, v6, v11

    if-gtz v1, :cond_27

    :goto_16
    move-wide v11, v2

    goto :goto_17

    :cond_27
    move-wide v11, v6

    .line 99
    :goto_17
    iput-wide v11, v5, Lcom/huawei/hem/sf;->g:J

    .line 100
    iget-object v1, v5, Lcom/huawei/hem/sf;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v8, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hem/ng;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2
    iget v1, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    .line 3
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 5
    :goto_0
    iget-boolean v6, p0, Lcom/huawei/hem/qf;->j:Z

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    :cond_1
    :goto_1
    move-wide v5, v7

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    .line 6
    iget-boolean v6, p0, Lcom/huawei/hem/qf;->k:Z

    if-nez v6, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v6, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 8
    iget v9, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 9
    invoke-static {v9, v6}, Lcom/huawei/hem/hh;->m(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    iget-boolean v6, p0, Lcom/huawei/hem/qf;->k:Z

    if-nez v6, :cond_4

    .line 11
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_6

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {p1}, Lcom/huawei/hem/ng;->a(Ljava/util/List;)J

    move-result-wide v5

    goto :goto_2

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v5

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 16
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    cmp-long p1, v5, v7

    if-lez p1, :cond_7

    move v3, v4

    .line 17
    :cond_7
    iput-boolean v3, p0, Lcom/huawei/hem/qf;->o:Z

    if-nez v3, :cond_8

    .line 18
    iget-object p1, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    iget-object v1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 19
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 20
    invoke-interface {p1, v1}, Lcom/huawei/hem/if;->c(I)V

    .line 21
    invoke-static {v2, v0}, Lcom/huawei/hem/hh;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qf;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/sf;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public i(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/huawei/hem/ag;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/huawei/hem/ag;

    .line 3
    invoke-virtual {v0}, Lcom/huawei/hem/ag;->getCode()I

    move-result v0

    .line 4
    iget-boolean v2, p0, Lcom/huawei/hem/qf;->n:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->h:Z

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/hh;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-boolean v1, p0, Lcom/huawei/hem/qf;->h:Z

    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/huawei/hem/qf;->i:I

    if-lez v0, :cond_1

    instance-of p1, p1, Lcom/huawei/hem/zf;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hem/qf;->t:Z

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/qf;->u:Ljava/lang/Exception;

    .line 3
    iget-boolean p1, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/qf;->l:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/rf;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hem/rf;->b()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public k(J)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/sf;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 4
    iget-object v1, v0, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 7
    iget-object v1, v0, Lcom/huawei/hem/sf;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-wide v4, v0, Lcom/huawei/hem/sf;->l:J

    sub-long v4, p1, v4

    .line 9
    iget-wide v6, v0, Lcom/huawei/hem/sf;->g:J

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/huawei/hem/sf;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/huawei/hem/sf;->g:J

    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/huawei/hem/sf;->e:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 11
    iget-object v1, v0, Lcom/huawei/hem/sf;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iput-wide p1, v0, Lcom/huawei/hem/sf;->l:J

    .line 13
    iget-object p1, v0, Lcom/huawei/hem/sf;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 14
    :cond_3
    iget-object p1, v0, Lcom/huawei/hem/sf;->h:Landroid/os/Handler;

    if-nez p1, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/huawei/hem/sf;->c()V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, v0, Lcom/huawei/hem/sf;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, v0, Lcom/huawei/hem/sf;->h:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hem/sf;->k(Landroid/os/Message;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/huawei/hem/qf;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/huawei/hem/qf;->i:I

    const/4 v2, 0x0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 4
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "valid retry times is less than 0(%d) for download task(%d)"

    .line 6
    invoke-static {p0, v1, v0}, Lcom/huawei/hem/fh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    iget v1, p0, Lcom/huawei/hem/qf;->i:I

    .line 8
    iget-object v3, v0, Lcom/huawei/hem/sf;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 9
    iget-object v3, v0, Lcom/huawei/hem/sf;->h:Landroid/os/Handler;

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/huawei/hem/sf;->d(Ljava/lang/Exception;I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    .line 11
    invoke-virtual {v3, v4, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hem/sf;->k(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public final m(JI)V
    .locals 11

    int-to-long v0, p3

    .line 1
    div-long v0, p1, v0

    .line 2
    iget-object v2, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 3
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    add-int/lit8 v7, p3, -0x1

    if-ne v4, v7, :cond_0

    const-wide/16 v7, -0x1

    goto :goto_1

    :cond_0
    add-long v7, v5, v0

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 5
    :goto_1
    new-instance v9, Lcom/huawei/hem/ng;

    invoke-direct {v9}, Lcom/huawei/hem/ng;-><init>()V

    .line 6
    iput v2, v9, Lcom/huawei/hem/ng;->a:I

    .line 7
    iput v4, v9, Lcom/huawei/hem/ng;->b:I

    .line 8
    iput-wide v5, v9, Lcom/huawei/hem/ng;->c:J

    .line 9
    iput-wide v5, v9, Lcom/huawei/hem/ng;->d:J

    .line 10
    iput-wide v7, v9, Lcom/huawei/hem/ng;->e:J

    .line 11
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v7, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v7, v9}, Lcom/huawei/hem/if;->b(Lcom/huawei/hem/ng;)V

    add-long/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 14
    iput p3, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    .line 15
    iget-object v0, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    invoke-interface {v0, v2, p3}, Lcom/huawei/hem/if;->p(II)V

    .line 16
    invoke-virtual {p0, v3, p1, p2}, Lcom/huawei/hem/qf;->d(Ljava/util/List;J)V

    return-void
.end method

.method public final n(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/huawei/hem/ng;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 3
    iget-wide v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:J

    .line 4
    invoke-virtual {p0, p2, v0, v1}, Lcom/huawei/hem/qf;->d(Ljava/util/List;J)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final o(J)V
    .locals 19

    move-object/from16 v8, p0

    .line 1
    iget-boolean v0, v8, Lcom/huawei/hem/qf;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const-wide/16 v1, 0x0

    .line 3
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    new-instance v0, Lcom/huawei/hem/of;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    const/16 v18, 0x0

    move-object v9, v0

    move-wide/from16 v16, p1

    invoke-direct/range {v9 .. v18}, Lcom/huawei/hem/of;-><init>(JJJJLcom/huawei/hem/of$a;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v10

    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v12

    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v0

    sub-long v16, p1, v0

    .line 8
    new-instance v0, Lcom/huawei/hem/of;

    const-wide/16 v14, -0x1

    const/16 v18, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v18}, Lcom/huawei/hem/of;-><init>(JJJJLcom/huawei/hem/of$a;)V

    :goto_0
    move-object v2, v0

    .line 9
    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 10
    iget v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 13
    iget-object v1, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 14
    iget-object v4, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 15
    iget-object v5, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    .line 16
    iget-object v6, v8, Lcom/huawei/hem/qf;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 17
    iget-boolean v1, v8, Lcom/huawei/hem/qf;->e:Z

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 19
    iget-object v1, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 20
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    if-eqz v10, :cond_3

    if-eqz v9, :cond_3

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 21
    new-instance v13, Lcom/huawei/hem/nf;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hem/nf;-><init>(Lcom/huawei/hem/of;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/huawei/hem/nf$a;)V

    .line 22
    new-instance v14, Lcom/huawei/hem/rf;

    iget v1, v13, Lcom/huawei/hem/nf;->a:I

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 23
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v7, 0x0

    move-object v0, v14

    move-object v3, v13

    move-object/from16 v4, p0

    move-object v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/huawei/hem/rf;-><init>(IILcom/huawei/hem/nf;Lcom/huawei/hem/uf;ZLjava/lang/String;Lcom/huawei/hem/rf$a;)V

    .line 24
    iput-object v14, v8, Lcom/huawei/hem/qf;->m:Lcom/huawei/hem/rf;

    .line 25
    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 26
    iput v12, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:I

    .line 27
    iget-object v1, v8, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    .line 28
    iget v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 29
    invoke-interface {v1, v0, v12}, Lcom/huawei/hem/if;->p(II)V

    .line 30
    iget-boolean v0, v8, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, v8, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x2

    .line 32
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 33
    iget-object v0, v8, Lcom/huawei/hem/qf;->m:Lcom/huawei/hem/rf;

    invoke-virtual {v0}, Lcom/huawei/hem/rf;->b()V

    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, v8, Lcom/huawei/hem/qf;->m:Lcom/huawei/hem/rf;

    invoke-virtual {v0}, Lcom/huawei/hem/rf;->run()V

    :goto_1
    return-void

    .line 35
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 36
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    aput-object v11, v1, v12

    const/4 v2, 0x2

    aput-object v10, v1, v2

    const-string v2, "%s %s %B"

    invoke-static {v2, v1}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/huawei/hem/qf;->j:Z

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/huawei/hem/of;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v2, v1

    .line 3
    invoke-direct/range {v2 .. v11}, Lcom/huawei/hem/of;-><init>(JJJJZ)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/huawei/hem/of;

    invoke-direct {v1, v0}, Lcom/huawei/hem/of;-><init>(Lcom/huawei/hem/of$a;)V

    :goto_0
    move-object v3, v1

    .line 5
    iget-object v1, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 9
    iget-object v5, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 11
    iget-object v6, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:Ljava/lang/String;

    .line 12
    iget-object v7, p0, Lcom/huawei/hem/qf;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    .line 13
    new-instance v9, Lcom/huawei/hem/nf;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hem/nf;-><init>(Lcom/huawei/hem/of;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/huawei/hem/nf$a;)V

    .line 14
    invoke-virtual {v9}, Lcom/huawei/hem/nf;->a()Lcom/huawei/hem/gf;

    move-result-object v0

    .line 15
    iget-object v1, v9, Lcom/huawei/hem/nf;->f:Ljava/util/Map;

    .line 16
    invoke-virtual {p0, v1, v9, v0}, Lcom/huawei/hem/qf;->f(Ljava/util/Map;Lcom/huawei/hem/nf;Lcom/huawei/hem/gf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    check-cast v0, Lcom/huawei/hem/hf;

    invoke-virtual {v0}, Lcom/huawei/hem/hf;->a()V

    return-void

    .line 18
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 19
    check-cast v0, Lcom/huawei/hem/hf;

    invoke-virtual {v0}, Lcom/huawei/hem/hf;->a()V

    .line 20
    :cond_2
    throw v1
.end method

.method public run()V
    .locals 9

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v0

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5
    iget v5, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v5

    .line 7
    invoke-static {v2, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/huawei/hem/qf;->j(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->a()V

    .line 10
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_1

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->i()V

    goto :goto_4

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->t:Z

    if-eqz v0, :cond_2

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    iget-object v2, p0, Lcom/huawei/hem/qf;->u:Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/sf;->g(Ljava/lang/Exception;)V

    goto :goto_4

    .line 14
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->f()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 15
    :goto_3
    iget-object v2, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v2, v0}, Lcom/huawei/hem/sf;->g(Ljava/lang/Exception;)V

    .line 16
    :goto_4
    iget-object v0, p0, Lcom/huawei/hem/qf;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 17
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    .line 19
    iget-object v4, v0, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 20
    iget-object v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    invoke-virtual {v0, v5}, Lcom/huawei/hem/sf;->j(B)V

    .line 22
    iget-object v4, v0, Lcom/huawei/hem/sf;->b:Lcom/huawei/hem/if;

    iget-object v0, v0, Lcom/huawei/hem/sf;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 23
    iget v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 24
    invoke-interface {v4, v0}, Lcom/huawei/hem/if;->f(I)V

    .line 25
    :cond_4
    :goto_5
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 26
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->a()V

    .line 27
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 28
    :cond_5
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->t:Z

    if-eqz v0, :cond_6

    goto :goto_2

    .line 29
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->f()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 30
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lcom/huawei/hem/qf;->c()V

    .line 31
    invoke-virtual {p0}, Lcom/huawei/hem/qf;->p()V

    .line 32
    invoke-virtual {p0}, Lcom/huawei/hem/qf;->b()V

    .line 33
    iget-object v0, p0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    iget-object v4, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 34
    iget v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 35
    invoke-interface {v0, v4}, Lcom/huawei/hem/if;->n(I)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/huawei/hem/qf;->g(Ljava/util/List;)V

    .line 37
    iget-boolean v4, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v4, :cond_a

    .line 38
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e(B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/huawei/hem/dg; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/huawei/hem/zf; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/huawei/hem/qf$b; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/huawei/hem/qf$c; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->a()V

    .line 40
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_8

    goto/16 :goto_1

    .line 41
    :cond_8
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->t:Z

    if-eqz v0, :cond_9

    goto :goto_2

    .line 42
    :cond_9
    :try_start_5
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->f()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 43
    :cond_a
    :try_start_6
    iget-object v4, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 44
    iget-wide v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:J

    .line 45
    iget-object v6, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/huawei/hem/qf;->e(JLjava/lang/String;)V

    .line 46
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hem/qf;->a(J)I

    move-result v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lcom/huawei/hem/dg; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lcom/huawei/hem/zf; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/huawei/hem/qf$b; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/huawei/hem/qf$c; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v6, :cond_14

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-nez v7, :cond_d

    .line 47
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->a()V

    .line 48
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_b

    goto/16 :goto_1

    .line 49
    :cond_b
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->t:Z

    if-eqz v0, :cond_c

    goto/16 :goto_2

    .line 50
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->f()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 51
    :cond_d
    :try_start_8
    iget-boolean v7, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v7, :cond_10

    .line 52
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e(B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lcom/huawei/hem/dg; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lcom/huawei/hem/zf; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lcom/huawei/hem/qf$b; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/huawei/hem/qf$c; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 53
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->a()V

    .line 54
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_e

    goto/16 :goto_1

    .line 55
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->t:Z

    if-eqz v0, :cond_f

    goto/16 :goto_2

    .line 56
    :cond_f
    :try_start_9
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->f()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :cond_10
    if-ne v6, v3, :cond_11

    move v7, v3

    goto :goto_6

    :cond_11
    move v7, v1

    .line 57
    :goto_6
    :try_start_a
    iput-boolean v7, p0, Lcom/huawei/hem/qf;->n:Z

    if-eqz v7, :cond_12

    .line 58
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hem/qf;->o(J)V

    goto :goto_8

    .line 59
    :cond_12
    iget-object v7, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v7}, Lcom/huawei/hem/sf;->h()V

    .line 60
    iget-boolean v7, p0, Lcom/huawei/hem/qf;->o:Z

    if-eqz v7, :cond_13

    .line 61
    invoke-virtual {p0, v6, v0}, Lcom/huawei/hem/qf;->n(ILjava/util/List;)V

    goto :goto_8

    .line 62
    :cond_13
    invoke-virtual {p0, v4, v5, v6}, Lcom/huawei/hem/qf;->m(JI)V

    goto :goto_8

    .line 63
    :cond_14
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v4, "invalid connection count %d, the connection count must be larger than 0"

    new-array v5, v3, [Ljava/lang/Object;

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 65
    invoke-static {v4, v5}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a
    .catch Lcom/huawei/hem/dg; {:try_start_a .. :try_end_a} :catch_9
    .catch Lcom/huawei/hem/zf; {:try_start_a .. :try_end_a} :catch_8
    .catch Lcom/huawei/hem/qf$b; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/huawei/hem/qf$c; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 66
    :catch_5
    :try_start_b
    iget-object v0, p0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v4, 0x5

    .line 67
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_5

    .line 68
    :catch_6
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->a()V

    .line 69
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_15

    goto/16 :goto_1

    .line 70
    :cond_15
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->t:Z

    if-eqz v0, :cond_16

    goto/16 :goto_2

    .line 71
    :cond_16
    :try_start_c
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->f()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v0

    goto :goto_7

    :catch_c
    move-exception v0

    goto :goto_7

    :catch_d
    move-exception v0

    .line 72
    :goto_7
    :try_start_d
    invoke-virtual {p0, v0}, Lcom/huawei/hem/qf;->i(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 73
    invoke-virtual {p0, v0}, Lcom/huawei/hem/qf;->l(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 74
    :cond_17
    invoke-virtual {p0, v0}, Lcom/huawei/hem/qf;->j(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 75
    :goto_8
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->a()V

    .line 76
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v0, :cond_18

    .line 77
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->i()V

    goto :goto_9

    .line 78
    :cond_18
    iget-boolean v0, p0, Lcom/huawei/hem/qf;->t:Z

    if-eqz v0, :cond_19

    .line 79
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    iget-object v2, p0, Lcom/huawei/hem/qf;->u:Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/sf;->g(Ljava/lang/Exception;)V

    goto :goto_9

    .line 80
    :cond_19
    :try_start_e
    iget-object v0, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v0}, Lcom/huawei/hem/sf;->f()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_9

    :catch_e
    move-exception v0

    .line 81
    iget-object v2, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v2, v0}, Lcom/huawei/hem/sf;->g(Ljava/lang/Exception;)V

    .line 82
    :goto_9
    iget-object v0, p0, Lcom/huawei/hem/qf;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 83
    iget-object v2, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v2}, Lcom/huawei/hem/sf;->a()V

    .line 84
    iget-boolean v2, p0, Lcom/huawei/hem/qf;->s:Z

    if-nez v2, :cond_1b

    .line 85
    iget-boolean v2, p0, Lcom/huawei/hem/qf;->t:Z

    if-eqz v2, :cond_1a

    .line 86
    iget-object v2, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    iget-object v3, p0, Lcom/huawei/hem/qf;->u:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lcom/huawei/hem/sf;->g(Ljava/lang/Exception;)V

    goto :goto_a

    .line 87
    :cond_1a
    :try_start_f
    iget-object v2, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v2}, Lcom/huawei/hem/sf;->f()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_a

    :catch_f
    move-exception v2

    .line 88
    iget-object v3, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v3, v2}, Lcom/huawei/hem/sf;->g(Ljava/lang/Exception;)V

    goto :goto_a

    .line 89
    :cond_1b
    iget-object v2, p0, Lcom/huawei/hem/qf;->a:Lcom/huawei/hem/sf;

    invoke-virtual {v2}, Lcom/huawei/hem/sf;->i()V

    .line 90
    :goto_a
    iget-object v2, p0, Lcom/huawei/hem/qf;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    throw v0
.end method
