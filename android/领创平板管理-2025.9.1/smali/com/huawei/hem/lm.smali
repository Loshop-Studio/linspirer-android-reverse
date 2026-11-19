.class public final Lcom/huawei/hem/lm;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/lm$c;,
        Lcom/huawei/hem/lm$a;,
        Lcom/huawei/hem/lm$b;
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public final c:I

.field public final d:Lcom/huawei/hem/am;

.field public final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/huawei/hem/yj;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Lcom/huawei/hem/lm$b;

.field public final h:Lcom/huawei/hem/lm$a;

.field public final i:Lcom/huawei/hem/lm$c;

.field public final j:Lcom/huawei/hem/lm$c;

.field public k:Lcom/huawei/hem/wl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public l:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/huawei/hem/am;ZZLcom/huawei/hem/yj;)V
    .locals 2
    .param p5    # Lcom/huawei/hem/yj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/huawei/hem/lm;->a:J

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/lm;->e:Ljava/util/Deque;

    .line 4
    new-instance v0, Lcom/huawei/hem/lm$c;

    invoke-direct {v0, p0}, Lcom/huawei/hem/lm$c;-><init>(Lcom/huawei/hem/lm;)V

    iput-object v0, p0, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    .line 5
    new-instance v0, Lcom/huawei/hem/lm$c;

    invoke-direct {v0, p0}, Lcom/huawei/hem/lm$c;-><init>(Lcom/huawei/hem/lm;)V

    iput-object v0, p0, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    if-eqz p2, :cond_5

    .line 6
    iput p1, p0, Lcom/huawei/hem/lm;->c:I

    .line 7
    iput-object p2, p0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    .line 8
    iget-object p1, p2, Lcom/huawei/hem/am;->t:Lcom/huawei/hem/pm;

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hem/pm;->a()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huawei/hem/lm;->b:J

    .line 10
    new-instance p1, Lcom/huawei/hem/lm$b;

    iget-object p2, p2, Lcom/huawei/hem/am;->s:Lcom/huawei/hem/pm;

    invoke-virtual {p2}, Lcom/huawei/hem/pm;->a()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, p0, v0, v1}, Lcom/huawei/hem/lm$b;-><init>(Lcom/huawei/hem/lm;J)V

    iput-object p1, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    .line 11
    new-instance p1, Lcom/huawei/hem/lm$a;

    invoke-direct {p1, p0}, Lcom/huawei/hem/lm$a;-><init>(Lcom/huawei/hem/lm;)V

    iput-object p1, p0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

    .line 12
    iget-object p2, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    iput-boolean p4, p2, Lcom/huawei/hem/lm$b;->f:Z

    .line 13
    iput-boolean p3, p1, Lcom/huawei/hem/lm$a;->c:Z

    if-eqz p5, :cond_0

    .line 14
    iget-object p1, p0, Lcom/huawei/hem/lm;->e:Ljava/util/Deque;

    invoke-interface {p1, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hem/lm;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hem/lm;->g()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$a;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hem/lm;->h()Z

    move-result v1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/lm;->c(Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget v1, p0, Lcom/huawei/hem/lm;->c:I

    invoke-virtual {v0, v1}, Lcom/huawei/hem/am;->h(I)Lcom/huawei/hem/lm;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

    iget-boolean v1, v0, Lcom/huawei/hem/lm$a;->b:Z

    if-nez v1, :cond_3

    .line 2
    iget-boolean v0, v0, Lcom/huawei/hem/lm$a;->c:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/lm;->l:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/huawei/hem/qm;

    iget-object v1, p0, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    invoke-direct {v0, v1}, Lcom/huawei/hem/qm;-><init>(Lcom/huawei/hem/wl;)V

    :goto_0
    throw v0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/huawei/hem/wl;Ljava/io/IOException;)V
    .locals 1
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/lm;->d(Lcom/huawei/hem/wl;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget v0, p0, Lcom/huawei/hem/lm;->c:I

    .line 3
    iget-object p2, p2, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {p2, v0, p1}, Lcom/huawei/hem/mm;->i(ILcom/huawei/hem/wl;)V

    return-void
.end method

.method public final d(Lcom/huawei/hem/wl;Ljava/io/IOException;)Z
    .locals 2
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$b;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$a;->c:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    .line 7
    iput-object p2, p0, Lcom/huawei/hem/lm;->l:Ljava/io/IOException;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget p2, p0, Lcom/huawei/hem/lm;->c:I

    invoke-virtual {p1, p2}, Lcom/huawei/hem/am;->h(I)Lcom/huawei/hem/lm;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Lcom/huawei/hem/wl;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hem/lm;->d(Lcom/huawei/hem/wl;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget v1, p0, Lcom/huawei/hem/lm;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hem/am;->N(ILcom/huawei/hem/wl;)V

    return-void
.end method

.method public f()Lcom/huawei/hem/zn;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/lm;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hem/lm;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

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

.method public g()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/huawei/hem/lm;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget-boolean v3, v3, Lcom/huawei/hem/am;->a:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public declared-synchronized h()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$b;->e:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$a;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$a;->b:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/huawei/hem/lm;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i(Lcom/huawei/hem/yj;Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/lm;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    .line 4
    iput-object p1, v0, Lcom/huawei/hem/lm$b;->d:Lcom/huawei/hem/yj;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/huawei/hem/lm;->f:Z

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/lm;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    iput-boolean v1, p1, Lcom/huawei/hem/lm$b;->f:Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hem/lm;->h()Z

    move-result p1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget p2, p0, Lcom/huawei/hem/lm;->c:I

    invoke-virtual {p1, p2}, Lcom/huawei/hem/am;->h(I)Lcom/huawei/hem/lm;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
