.class public Lcom/huawei/hem/jg;
.super Ljava/lang/Object;
.source "MessageSnapshotFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/jg$b;,
        Lcom/huawei/hem/jg$a;
    }
.end annotation


# instance fields
.field public volatile a:Lcom/huawei/hem/mg;

.field public volatile b:Lcom/huawei/hem/jg$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/huawei/hem/hg;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/jg;->b:Lcom/huawei/hem/jg$b;

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/jg;->b:Lcom/huawei/hem/jg$b;

    invoke-interface {v0, p1}, Lcom/huawei/hem/jg$b;->J(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/jg;->a:Lcom/huawei/hem/mg;

    if-eqz v0, :cond_8

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/jg;->a:Lcom/huawei/hem/mg;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/huawei/hem/mg;->a:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget v3, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 8
    iget-object v4, v0, Lcom/huawei/hem/mg;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hem/mg$a;

    .line 9
    iget-object v6, v5, Lcom/huawei/hem/mg$a;->a:Ljava/util/List;

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    :cond_2
    if-nez v1, :cond_6

    const/4 v4, 0x0

    .line 11
    iget-object v0, v0, Lcom/huawei/hem/mg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hem/mg$a;

    .line 12
    iget-object v6, v5, Lcom/huawei/hem/mg$a;->a:Ljava/util/List;

    .line 13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4

    move-object v1, v5

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 14
    iget-object v6, v5, Lcom/huawei/hem/mg$a;->a:Ljava/util/List;

    .line 15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_3

    .line 16
    :cond_5
    iget-object v4, v5, Lcom/huawei/hem/mg$a;->a:Ljava/util/List;

    .line 17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object v1, v5

    goto :goto_0

    .line 18
    :cond_6
    :goto_1
    iget-object v0, v1, Lcom/huawei/hem/mg$a;->a:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    iget-object v0, v1, Lcom/huawei/hem/mg$a;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/huawei/hem/lg;

    invoke-direct {v2, v1, p1}, Lcom/huawei/hem/lg;-><init>(Lcom/huawei/hem/mg$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 21
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 22
    iget-object v2, v1, Lcom/huawei/hem/mg$a;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/huawei/hem/lg;

    invoke-direct {v3, v1, p1}, Lcom/huawei/hem/lg;-><init>(Lcom/huawei/hem/mg$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    throw v0

    .line 24
    :cond_7
    throw v1

    :cond_8
    :goto_2
    return-void
.end method
