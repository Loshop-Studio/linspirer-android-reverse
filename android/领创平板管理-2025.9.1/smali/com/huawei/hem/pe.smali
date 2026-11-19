.class public Lcom/huawei/hem/pe;
.super Ljava/lang/Object;
.source "FileDownloadMessenger.java"

# interfaces
.implements Lcom/huawei/hem/ve;


# instance fields
.field public a:Lcom/huawei/hem/fe$a;

.field public b:Lcom/huawei/hem/fe$c;

.field public c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/fe$a;Lcom/huawei/hem/fe$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/pe;->d:Z

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    .line 4
    iput-object p2, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    .line 3
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "can\'t begin the task, the holder fo the messenger is nil, %d"

    .line 4
    invoke-static {p0, v1, v0}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-interface {v0}, Lcom/huawei/hem/ig;->a()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    invoke-virtual {v0}, Lcom/huawei/hem/ie;->b()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    invoke-virtual {v0}, Lcom/huawei/hem/ie;->b()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    invoke-interface {v0}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/huawei/hem/fe;->p()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public k()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/pe;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 3
    invoke-interface {v0}, Lcom/huawei/hem/ig;->a()B

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_13

    .line 5
    invoke-interface {v2}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v6

    .line 6
    invoke-interface {v6}, Lcom/huawei/hem/fe;->i()Lcom/huawei/hem/ne;

    move-result-object v5

    .line 7
    invoke-interface {v2}, Lcom/huawei/hem/fe$a;->o()Lcom/huawei/hem/ze$a;

    move-result-object v2

    .line 8
    invoke-virtual {p0, v1}, Lcom/huawei/hem/pe;->n(I)V

    if-eqz v5, :cond_12

    .line 9
    invoke-virtual {v5}, Lcom/huawei/hem/ne;->isInvalid()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v7, 0x4

    if-ne v1, v7, :cond_2

    .line 10
    :try_start_0
    invoke-virtual {v5, v6}, Lcom/huawei/hem/ne;->blockComplete(Lcom/huawei/hem/fe;)V

    .line 11
    check-cast v0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;->c()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v1, Lcom/huawei/hem/ie;

    invoke-virtual {v1}, Lcom/huawei/hem/ie;->b()V

    .line 13
    invoke-virtual {p0, v0}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 14
    check-cast v2, Lcom/huawei/hem/ie;

    invoke-virtual {v2, v0}, Lcom/huawei/hem/ie;->e(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v1, Lcom/huawei/hem/ie;

    invoke-virtual {v1}, Lcom/huawei/hem/ie;->b()V

    .line 16
    invoke-virtual {p0, v0}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 17
    instance-of v7, v5, Lcom/huawei/hem/le;

    if-eqz v7, :cond_3

    .line 18
    move-object v2, v5

    check-cast v2, Lcom/huawei/hem/le;

    :cond_3
    const/4 v7, -0x4

    if-eq v1, v7, :cond_11

    const/4 v7, -0x3

    if-eq v1, v7, :cond_10

    const/4 v7, -0x2

    if-eq v1, v7, :cond_e

    const/4 v7, -0x1

    if-eq v1, v7, :cond_d

    if-eq v1, v3, :cond_b

    if-eq v1, v4, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_5

    const/4 v0, 0x6

    if-eq v1, v0, :cond_4

    goto/16 :goto_0

    .line 19
    :cond_4
    invoke-virtual {v5, v6}, Lcom/huawei/hem/ne;->started(Lcom/huawei/hem/fe;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()Ljava/lang/Throwable;

    .line 21
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()I

    .line 22
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    .line 23
    invoke-virtual {v2}, Lcom/huawei/hem/le;->e()V

    goto/16 :goto_0

    .line 24
    :cond_6
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()Ljava/lang/Throwable;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()I

    move-result v2

    .line 26
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()I

    move-result v0

    .line 27
    invoke-virtual {v5, v6, v1, v2, v0}, Lcom/huawei/hem/ne;->retry(Lcom/huawei/hem/fe;Ljava/lang/Throwable;II)V

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_8

    .line 28
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v7

    .line 29
    invoke-interface {v6}, Lcom/huawei/hem/fe;->f()J

    move-result-wide v9

    move-object v5, v2

    .line 30
    invoke-virtual/range {v5 .. v10}, Lcom/huawei/hem/le;->d(Lcom/huawei/hem/fe;JJ)V

    goto/16 :goto_0

    .line 31
    :cond_8
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()I

    move-result v0

    .line 32
    invoke-interface {v6}, Lcom/huawei/hem/fe;->c()I

    move-result v1

    .line 33
    invoke-virtual {v5, v6, v0, v1}, Lcom/huawei/hem/ne;->progress(Lcom/huawei/hem/fe;II)V

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_a

    .line 34
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->l()Z

    .line 36
    invoke-interface {v6}, Lcom/huawei/hem/fe;->q()J

    .line 37
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    .line 38
    invoke-virtual {v2}, Lcom/huawei/hem/le;->a()V

    goto :goto_0

    .line 39
    :cond_a
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->l()Z

    move-result v8

    .line 41
    invoke-interface {v6}, Lcom/huawei/hem/fe;->d()I

    move-result v9

    .line 42
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()I

    move-result v10

    .line 43
    invoke-virtual/range {v5 .. v10}, Lcom/huawei/hem/ne;->connected(Lcom/huawei/hem/fe;Ljava/lang/String;ZII)V

    goto :goto_0

    :cond_b
    if-eqz v2, :cond_c

    .line 44
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v7

    .line 45
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v9

    move-object v5, v2

    .line 46
    invoke-virtual/range {v5 .. v10}, Lcom/huawei/hem/le;->c(Lcom/huawei/hem/fe;JJ)V

    goto :goto_0

    .line 47
    :cond_c
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()I

    move-result v1

    .line 48
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()I

    move-result v0

    .line 49
    invoke-virtual {v5, v6, v1, v0}, Lcom/huawei/hem/ne;->pending(Lcom/huawei/hem/fe;II)V

    goto :goto_0

    .line 50
    :cond_d
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()Ljava/lang/Throwable;

    move-result-object v0

    .line 51
    invoke-virtual {v5, v6, v0}, Lcom/huawei/hem/ne;->error(Lcom/huawei/hem/fe;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_e
    if-eqz v2, :cond_f

    .line 52
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v7

    .line 53
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v9

    move-object v5, v2

    .line 54
    invoke-virtual/range {v5 .. v10}, Lcom/huawei/hem/le;->b(Lcom/huawei/hem/fe;JJ)V

    goto :goto_0

    .line 55
    :cond_f
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()I

    move-result v1

    .line 56
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()I

    move-result v0

    .line 57
    invoke-virtual {v5, v6, v1, v0}, Lcom/huawei/hem/ne;->paused(Lcom/huawei/hem/fe;II)V

    goto :goto_0

    .line 58
    :cond_10
    invoke-virtual {v5, v6}, Lcom/huawei/hem/ne;->completed(Lcom/huawei/hem/fe;)V

    goto :goto_0

    .line 59
    :cond_11
    invoke-virtual {v5, v6}, Lcom/huawei/hem/ne;->warn(Lcom/huawei/hem/fe;)V

    :cond_12
    :goto_0
    return-void

    .line 60
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "can\'t handover the message, no master to receive this message(status[%d]) size[%d]"

    .line 62
    invoke-static {v1, v2}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    invoke-virtual {v0}, Lcom/huawei/hem/ie;->b()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    invoke-interface {v0}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/hem/fe;->w()Z

    move-result v0

    return v0
.end method

.method public final n(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/of$b;->e(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    .line 4
    iget v2, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p1}, Lcom/huawei/hem/ig;->a()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]"

    .line 6
    invoke-static {p0, p1, v0}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    :cond_1
    return-void
.end method

.method public final o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/hem/pe;->d:Z

    if-nez v1, :cond_8

    invoke-interface {v0}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/hem/fe;->i()Lcom/huawei/hem/ne;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/pe;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/huawei/hem/oe;->a()Lcom/huawei/hem/oe;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/pe;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/pe;->k()V

    goto/16 :goto_3

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/huawei/hem/oe;->b(Lcom/huawei/hem/ve;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 8
    :cond_3
    invoke-static {}, Lcom/huawei/hem/oe;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p1, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p1, Lcom/huawei/hem/oe;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v2, p1, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    iget-object v2, p1, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/ve;

    .line 13
    iget-object v4, p1, Lcom/huawei/hem/oe;->a:Landroid/os/Handler;

    invoke-virtual {v4, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 14
    :cond_4
    iget-object v2, p1, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 15
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 16
    :cond_5
    :goto_1
    invoke-static {}, Lcom/huawei/hem/oe;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p1, Lcom/huawei/hem/oe;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_1
    iget-object v1, p1, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    invoke-virtual {p1}, Lcom/huawei/hem/oe;->d()V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 22
    :cond_6
    iget-object p1, p1, Lcom/huawei/hem/oe;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 23
    throw p1

    .line 24
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    invoke-interface {v0}, Lcom/huawei/hem/fe$a;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-interface {p1}, Lcom/huawei/hem/ig;->a()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 26
    iget-object v0, p0, Lcom/huawei/hem/pe;->b:Lcom/huawei/hem/fe$c;

    check-cast v0, Lcom/huawei/hem/ie;

    invoke-virtual {v0}, Lcom/huawei/hem/ie;->b()V

    .line 27
    :cond_9
    invoke-interface {p1}, Lcom/huawei/hem/ig;->a()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/huawei/hem/pe;->n(I)V

    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/huawei/hem/pe;->a:Lcom/huawei/hem/fe$a;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v1}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/hem/fe;->getId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%d:%s"

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
