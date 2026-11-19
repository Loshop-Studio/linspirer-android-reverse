.class public Lcom/huawei/hem/he;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/huawei/hem/fe;
.implements Lcom/huawei/hem/fe$a;
.implements Lcom/huawei/hem/ie$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/he$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/ze;

.field public final b:Lcom/huawei/hem/ze$a;

.field public c:I

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Lcom/huawei/hem/ne;

.field public i:I

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public volatile o:I

.field public p:Z

.field public final q:Ljava/lang/Object;

.field public volatile r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/huawei/hem/he;->i:I

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hem/he;->j:Z

    .line 4
    iput-boolean v0, p0, Lcom/huawei/hem/he;->k:Z

    const/16 v1, 0x64

    .line 5
    iput v1, p0, Lcom/huawei/hem/he;->l:I

    const/16 v1, 0xa

    .line 6
    iput v1, p0, Lcom/huawei/hem/he;->m:I

    .line 7
    iput-boolean v0, p0, Lcom/huawei/hem/he;->n:Z

    .line 8
    iput v0, p0, Lcom/huawei/hem/he;->o:I

    .line 9
    iput-boolean v0, p0, Lcom/huawei/hem/he;->p:Z

    .line 10
    iput-boolean v0, p0, Lcom/huawei/hem/he;->r:Z

    .line 11
    iput-object p1, p0, Lcom/huawei/hem/he;->d:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/he;->q:Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/huawei/hem/ie;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hem/ie;-><init>(Lcom/huawei/hem/ie$a;Ljava/lang/Object;)V

    .line 14
    iput-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    .line 15
    iput-object v0, p0, Lcom/huawei/hem/he;->b:Lcom/huawei/hem/ze$a;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    check-cast v0, Lcom/huawei/hem/ie;

    .line 2
    iget-byte v0, v0, Lcom/huawei/hem/ie;->d:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Lcom/huawei/hem/ue$a;->a:Lcom/huawei/hem/ue;

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hem/ue;->c()Lcom/huawei/hem/xe;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/bf;

    .line 5
    iget-object v3, v0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hem/he;->a()B

    move-result v0

    invoke-static {v0}, Lcom/huawei/hem/of$b;->d(I)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hem/he;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 9
    invoke-static {v3, v1}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again."

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    iget v0, p0, Lcom/huawei/hem/he;->o:I

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-nez v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/huawei/hem/he;->h:Lcom/huawei/hem/ne;

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    .line 15
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 16
    :goto_4
    iput v0, p0, Lcom/huawei/hem/he;->o:I

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    check-cast v0, Lcom/huawei/hem/ie;

    .line 18
    iget-object v3, v0, Lcom/huawei/hem/ie;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 19
    :try_start_0
    iget-byte v4, v0, Lcom/huawei/hem/ie;->d:B

    if-eqz v4, :cond_8

    const-string v4, "High concurrent cause, this task %d will not input to launch pool, because of the status isn\'t idle : %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, Lcom/huawei/hem/ie;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-byte v2, v0, Lcom/huawei/hem/ie;->d:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    .line 21
    invoke-static {v0, v4, v5}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    monitor-exit v3

    goto :goto_6

    :cond_8
    const/16 v4, 0xa

    .line 23
    iput-byte v4, v0, Lcom/huawei/hem/ie;->d:B

    .line 24
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 25
    iget-object v3, v0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v3, Lcom/huawei/hem/he;

    if-eqz v3, :cond_a

    .line 26
    :try_start_1
    invoke-virtual {v0}, Lcom/huawei/hem/ie;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 27
    sget-object v4, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 28
    invoke-virtual {v4, v3}, Lcom/huawei/hem/me;->a(Lcom/huawei/hem/fe$a;)V

    .line 29
    sget-object v4, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 30
    invoke-virtual {v0, v1}, Lcom/huawei/hem/ie;->e(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/huawei/hem/me;->f(Lcom/huawei/hem/fe$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move v1, v2

    :goto_5
    if-eqz v1, :cond_9

    .line 31
    sget-object v1, Lcom/huawei/hem/te$a;->a:Lcom/huawei/hem/te;

    .line 32
    monitor-enter v1

    .line 33
    :try_start_2
    iget-object v2, v1, Lcom/huawei/hem/te;->a:Lcom/huawei/hem/te$b;

    .line 34
    iget-object v2, v2, Lcom/huawei/hem/te$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/huawei/hem/te$c;

    invoke-direct {v3, v0}, Lcom/huawei/hem/te$c;-><init>(Lcom/huawei/hem/ze$b;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    monitor-exit v1

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 36
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/huawei/hem/he;->getId()I

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    .line 37
    throw v0

    :catchall_2
    move-exception v0

    .line 38
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public a()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    check-cast v0, Lcom/huawei/hem/ie;

    .line 2
    iget-byte v0, v0, Lcom/huawei/hem/ie;->d:B

    return v0
.end method

.method public b(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/he;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    move-object v1, v0

    check-cast v1, Lcom/huawei/hem/ie;

    .line 2
    iget-wide v1, v1, Lcom/huawei/hem/ie;->h:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 3
    :cond_0
    check-cast v0, Lcom/huawei/hem/ie;

    .line 4
    iget-wide v0, v0, Lcom/huawei/hem/ie;->h:J

    long-to-int v0, v0

    return v0
.end method

.method public d()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    move-object v1, v0

    check-cast v1, Lcom/huawei/hem/ie;

    .line 2
    iget-wide v1, v1, Lcom/huawei/hem/ie;->g:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 3
    :cond_0
    check-cast v0, Lcom/huawei/hem/ie;

    .line 4
    iget-wide v0, v0, Lcom/huawei/hem/ie;->g:J

    long-to-int v0, v0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    check-cast v0, Lcom/huawei/hem/ie;

    const/4 v1, 0x0

    .line 2
    iput-byte v1, v0, Lcom/huawei/hem/ie;->d:B

    .line 3
    sget-object v0, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 4
    invoke-virtual {v0, p0}, Lcom/huawei/hem/me;->e(Lcom/huawei/hem/fe$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/huawei/hem/he;->r:Z

    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    check-cast v0, Lcom/huawei/hem/ie;

    .line 2
    iget-wide v0, v0, Lcom/huawei/hem/ie;->h:J

    return-wide v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->h:Lcom/huawei/hem/ne;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 4
    :goto_0
    iput v0, p0, Lcom/huawei/hem/he;->o:I

    return-void
.end method

.method public getId()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/huawei/hem/he;->c:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/he;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/he;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/huawei/hem/he;->g:Z

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/hh;->h(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/huawei/hem/he;->c:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/he;->A()I

    return-void
.end method

.method public i()Lcom/huawei/hem/ne;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->h:Lcom/huawei/hem/ne;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hem/he;->o:I

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/he;->r:Z

    return v0
.end method

.method public m()Lcom/huawei/hem/fe$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/he$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/hem/he$b;-><init>(Lcom/huawei/hem/he;Lcom/huawei/hem/he$a;)V

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public o()Lcom/huawei/hem/ze$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->b:Lcom/huawei/hem/ze$a;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hem/he;->l:I

    return v0
.end method

.method public pause()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Lcom/huawei/hem/ie;

    :try_start_1
    invoke-virtual {v1}, Lcom/huawei/hem/ie;->c()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public q()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    check-cast v0, Lcom/huawei/hem/ie;

    .line 2
    iget-wide v0, v0, Lcom/huawei/hem/ie;->g:J

    return-wide v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hem/he;->o:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/he;->a()B

    move-result v0

    invoke-static {v0}, Lcom/huawei/hem/of$b;->e(I)Z

    move-result v0

    return v0
.end method

.method public start()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/he;->p:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/he;->A()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you start the task manually, it means this task doesn\'t belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn\'t belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that\'s all. In other words, If this task doesn\'t belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Lcom/huawei/hem/fe;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/he;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%d@%s"

    invoke-static {v1, v0}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hem/he;->r:Z

    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/he;->j:Z

    return v0
.end method

.method public x(Lcom/huawei/hem/ne;)Lcom/huawei/hem/fe;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/he;->h:Lcom/huawei/hem/ne;

    return-object p0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/he;->a:Lcom/huawei/hem/ze;

    check-cast v0, Lcom/huawei/hem/ie;

    .line 2
    iget-boolean v0, v0, Lcom/huawei/hem/ie;->j:Z

    return v0
.end method

.method public z(Ljava/lang/String;Z)Lcom/huawei/hem/fe;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    .line 2
    iput-boolean p2, p0, Lcom/huawei/hem/he;->g:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/he;->f:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/he;->f:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
