.class public Lcom/huawei/hem/pf;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/pf$a;
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/qg;

.field public b:Lcom/huawei/hem/bh;

.field public c:Lcom/huawei/hem/ch;

.field public d:Lcom/huawei/hem/eh;

.field public e:Lcom/huawei/hem/if;

.field public f:Lcom/huawei/hem/dh;

.field public g:Lcom/huawei/hem/vg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Lcom/huawei/hem/if$a;)V
    .locals 12

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 3
    invoke-virtual {v1}, Lcom/huawei/hem/pf;->d()Lcom/huawei/hem/dh;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v4

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v8, -0x2

    const/4 v9, 0x1

    if-eq v4, v5, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 10
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v4

    if-ne v4, v9, :cond_1

    .line 11
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 12
    :cond_0
    iget-object v4, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    :cond_1
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_1
    move v2, v9

    goto :goto_3

    .line 14
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v4

    if-ne v4, v8, :cond_3

    .line 16
    iget v4, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 17
    iget-object v8, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    const/4 v10, 0x0

    .line 18
    invoke-static {v4, v3, v8, v10}, Lcom/huawei/hem/hh;->n(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 21
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 22
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result v4

    if-ne v4, v9, :cond_4

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-gtz v4, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    iget v4, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 24
    invoke-static {v4, v3}, Lcom/huawei/hem/hh;->m(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 27
    invoke-interface {p0, v3}, Lcom/huawei/hem/if$a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    goto/16 :goto_0

    .line 28
    :cond_7
    iget v2, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 29
    iget-object v4, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 30
    iget-object v5, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    .line 31
    iget-boolean v6, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    .line 32
    move-object v7, v1

    check-cast v7, Lcom/huawei/hem/pg;

    .line 33
    invoke-virtual {v7, v4, v5, v6}, Lcom/huawei/hem/pg;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    if-eq v4, v2, :cond_8

    .line 34
    iput v4, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 35
    invoke-interface {p0, v2, v3}, Lcom/huawei/hem/if$a;->f(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 36
    :cond_8
    invoke-interface {p0, v3}, Lcom/huawei/hem/if$a;->c(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 37
    :cond_9
    sget-object v0, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 38
    invoke-static {v0}, Lcom/huawei/hem/hh;->q(Landroid/content/Context;)V

    .line 39
    invoke-interface {p0}, Lcom/huawei/hem/if$a;->d()V

    return-void

    .line 40
    :goto_4
    sget-object v1, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 41
    invoke-static {v1}, Lcom/huawei/hem/hh;->q(Landroid/content/Context;)V

    .line 42
    invoke-interface {p0}, Lcom/huawei/hem/if$a;->d()V

    .line 43
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/huawei/hem/gf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pf;->c:Lcom/huawei/hem/ch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/pf;->c:Lcom/huawei/hem/ch;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/pf;->c()Lcom/huawei/hem/qg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/huawei/hem/hf$b;

    invoke-direct {v0}, Lcom/huawei/hem/hf$b;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/huawei/hem/pf;->c:Lcom/huawei/hem/ch;

    goto :goto_0

    .line 7
    :cond_1
    throw v1

    .line 8
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/pf;->c:Lcom/huawei/hem/ch;

    .line 10
    :goto_1
    check-cast v0, Lcom/huawei/hem/hf$b;

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Lcom/huawei/hem/hf;

    invoke-direct {v0, p1}, Lcom/huawei/hem/hf;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    throw v1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Lcom/huawei/hem/if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pf;->e:Lcom/huawei/hem/if;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/pf;->e:Lcom/huawei/hem/if;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/pf;->c()Lcom/huawei/hem/qg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/huawei/hem/kf;

    invoke-direct {v0}, Lcom/huawei/hem/kf;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/huawei/hem/pf;->e:Lcom/huawei/hem/if;

    .line 7
    invoke-interface {v0}, Lcom/huawei/hem/if;->d()Lcom/huawei/hem/if$a;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/pf;->f(Lcom/huawei/hem/if$a;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    throw v0

    .line 9
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/huawei/hem/pf;->e:Lcom/huawei/hem/if;

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Lcom/huawei/hem/qg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pf;->a:Lcom/huawei/hem/qg;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/pf;->a:Lcom/huawei/hem/qg;

    if-nez v0, :cond_1

    new-instance v0, Lcom/huawei/hem/qg;

    invoke-direct {v0}, Lcom/huawei/hem/qg;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/pf;->a:Lcom/huawei/hem/qg;

    .line 4
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/pf;->a:Lcom/huawei/hem/qg;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Lcom/huawei/hem/dh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pf;->f:Lcom/huawei/hem/dh;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/pf;->f:Lcom/huawei/hem/dh;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/pf;->c()Lcom/huawei/hem/qg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/huawei/hem/pg;

    invoke-direct {v0}, Lcom/huawei/hem/pg;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/huawei/hem/pf;->f:Lcom/huawei/hem/dh;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/pf;->f:Lcom/huawei/hem/dh;

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()Lcom/huawei/hem/eh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pf;->d:Lcom/huawei/hem/eh;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/pf;->d:Lcom/huawei/hem/eh;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/pf;->c()Lcom/huawei/hem/qg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/huawei/hem/yg$a;

    invoke-direct {v0}, Lcom/huawei/hem/yg$a;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/huawei/hem/pf;->d:Lcom/huawei/hem/eh;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/pf;->d:Lcom/huawei/hem/eh;

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
