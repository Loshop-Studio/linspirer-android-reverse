.class public final Lcom/huawei/hem/fk;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/huawei/hem/kj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/fk$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/dk;

.field public b:Lcom/huawei/hem/kl;

.field public final c:Lcom/huawei/hem/gk;

.field public final d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/gk;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/fk;->c:Lcom/huawei/hem/gk;

    .line 4
    iput-boolean p3, p0, Lcom/huawei/hem/fk;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/lj;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/fk;->e:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hem/fk;->e:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 6
    sget-object v2, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    const-string v3, "response.body().close()"

    .line 7
    invoke-virtual {v2, v3}, Lcom/huawei/hem/wm;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/kl;->f:Ljava/lang/Object;

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/kl;->d:Lcom/huawei/hem/vj;

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 10
    iget-object v0, v0, Lcom/huawei/hem/dk;->a:Lcom/huawei/hem/sj;

    .line 11
    new-instance v2, Lcom/huawei/hem/fk$a;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hem/fk$a;-><init>(Lcom/huawei/hem/fk;Lcom/huawei/hem/lj;)V

    .line 12
    monitor-enter v0

    .line 13
    :try_start_1
    iget-object p1, v0, Lcom/huawei/hem/sj;->d:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, v2, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    .line 15
    iget-boolean p1, p1, Lcom/huawei/hem/fk;->d:Z

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {v2}, Lcom/huawei/hem/fk$a;->b()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v3, v0, Lcom/huawei/hem/sj;->e:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hem/fk$a;

    .line 18
    invoke-virtual {v4}, Lcom/huawei/hem/fk$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    move-object v1, v4

    goto :goto_1

    .line 19
    :cond_1
    iget-object v3, v0, Lcom/huawei/hem/sj;->d:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hem/fk$a;

    .line 20
    invoke-virtual {v4}, Lcom/huawei/hem/fk$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 21
    iget-object p1, v1, Lcom/huawei/hem/fk$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v2, Lcom/huawei/hem/fk$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-virtual {v0}, Lcom/huawei/hem/sj;->b()Z

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 25
    :cond_5
    throw v1

    .line 26
    :cond_6
    throw v1

    .line 27
    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 28
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public b()Lcom/huawei/hem/kk;
    .locals 12

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/dk;->e:Ljava/util/List;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance v0, Lcom/huawei/hem/sl;

    iget-object v2, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    invoke-direct {v0, v2}, Lcom/huawei/hem/sl;-><init>(Lcom/huawei/hem/dk;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcom/huawei/hem/ll;

    iget-object v2, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 7
    iget-object v2, v2, Lcom/huawei/hem/dk;->i:Lcom/huawei/hem/rj;

    .line 8
    invoke-direct {v0, v2}, Lcom/huawei/hem/ll;-><init>(Lcom/huawei/hem/rj;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/huawei/hem/wk;

    iget-object v2, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 10
    iget-object v2, v2, Lcom/huawei/hem/dk;->k:Lcom/huawei/hem/zk;

    .line 11
    invoke-direct {v0, v2}, Lcom/huawei/hem/wk;-><init>(Lcom/huawei/hem/zk;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcom/huawei/hem/bl;

    iget-object v2, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    invoke-direct {v0, v2}, Lcom/huawei/hem/bl;-><init>(Lcom/huawei/hem/dk;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v0, p0, Lcom/huawei/hem/fk;->d:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 15
    iget-object v0, v0, Lcom/huawei/hem/dk;->f:Ljava/util/List;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_0
    new-instance v0, Lcom/huawei/hem/ml;

    iget-boolean v2, p0, Lcom/huawei/hem/fk;->d:Z

    invoke-direct {v0, v2}, Lcom/huawei/hem/ml;-><init>(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v10, Lcom/huawei/hem/ql;

    iget-object v2, p0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/hem/fk;->c:Lcom/huawei/hem/gk;

    iget-object v0, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 19
    iget v7, v0, Lcom/huawei/hem/dk;->y:I

    .line 20
    iget v8, v0, Lcom/huawei/hem/dk;->z:I

    .line 21
    iget v9, v0, Lcom/huawei/hem/dk;->A:I

    move-object v0, v10

    move-object v6, p0

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/huawei/hem/ql;-><init>(Ljava/util/List;Lcom/huawei/hem/kl;Lcom/huawei/hem/dl;ILcom/huawei/hem/gk;Lcom/huawei/hem/kj;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/fk;->c:Lcom/huawei/hem/gk;

    invoke-virtual {v10, v2}, Lcom/huawei/hem/ql;->a(Lcom/huawei/hem/gk;)Lcom/huawei/hem/kk;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    invoke-virtual {v3}, Lcom/huawei/hem/kl;->e()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 25
    iget-object v0, p0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/kl;->g(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    .line 26
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/huawei/hem/tk;->d(Ljava/io/Closeable;)V

    .line 27
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    .line 28
    :try_start_2
    iget-object v3, p0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    invoke-virtual {v3, v0}, Lcom/huawei/hem/kl;->g(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move v11, v2

    move-object v2, v0

    move v0, v11

    :goto_0
    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/kl;->g(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_2
    throw v2
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    invoke-virtual {v1}, Lcom/huawei/hem/kl;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lcom/huawei/hem/fk;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/huawei/hem/fk;->c:Lcom/huawei/hem/gk;

    .line 6
    iget-object v1, v1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 7
    invoke-virtual {v1}, Lcom/huawei/hem/zj;->o()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    invoke-virtual {v0}, Lcom/huawei/hem/kl;->b()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    iget-object v1, p0, Lcom/huawei/hem/fk;->c:Lcom/huawei/hem/gk;

    iget-boolean v2, p0, Lcom/huawei/hem/fk;->d:Z

    .line 2
    new-instance v3, Lcom/huawei/hem/fk;

    invoke-direct {v3, v0, v1, v2}, Lcom/huawei/hem/fk;-><init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/gk;Z)V

    .line 3
    new-instance v1, Lcom/huawei/hem/kl;

    invoke-direct {v1, v0, v3}, Lcom/huawei/hem/kl;-><init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/kj;)V

    iput-object v1, v3, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    return-object v3
.end method

.method public request()Lcom/huawei/hem/gk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fk;->c:Lcom/huawei/hem/gk;

    return-object v0
.end method
