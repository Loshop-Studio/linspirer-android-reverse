.class public Lcom/huawei/hem/me;
.super Ljava/lang/Object;
.source "FileDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/me$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hem/fe$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/hem/me$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/fe$a;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/hem/fe;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/huawei/hem/fe$a;->g()V

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/huawei/hem/fe$a;->o()Lcom/huawei/hem/ze$a;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/ie;

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    .line 5
    invoke-interface {v0}, Lcom/huawei/hem/ve;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/huawei/hem/me;->b(Lcom/huawei/hem/fe$a;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/huawei/hem/fe$a;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/huawei/hem/fe$a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "already has %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 4
    invoke-static {p0, v1, v2}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/huawei/hem/fe$a;->v()V

    .line 6
    iget-object v1, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/fe$a;

    .line 3
    invoke-interface {v3, p1}, Lcom/huawei/hem/fe$a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/huawei/hem/fe$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/fe$a;

    .line 4
    invoke-interface {v3, p1}, Lcom/huawei/hem/fe$a;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/huawei/hem/fe$a;->s()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v3}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/hem/fe;->a()B

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/huawei/hem/fe$a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f(Lcom/huawei/hem/fe$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 6

    .line 1
    invoke-interface {p2}, Lcom/huawei/hem/ig;->a()B

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    iget-object v4, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 5
    sget-object v4, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 6
    iget-object v4, v4, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v4}, Lcom/huawei/hem/we;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-static {}, Lcom/huawei/hem/ue;->b()Lcom/huawei/hem/ue;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    sget-object v4, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 9
    iget-object v4, v4, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v4, v3}, Lcom/huawei/hem/we;->g(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1

    .line 11
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_7

    .line 12
    invoke-interface {p1}, Lcom/huawei/hem/fe$a;->o()Lcom/huawei/hem/ze$a;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/huawei/hem/ie;

    .line 14
    iget-object p1, p1, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    const/4 v5, -0x4

    if-eq v0, v5, :cond_6

    const/4 v5, -0x3

    if-eq v0, v5, :cond_4

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-interface {p1, p2}, Lcom/huawei/hem/ve;->h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {p1, p2}, Lcom/huawei/hem/ve;->g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-interface {p2}, Lcom/huawei/hem/ig;->a()B

    move-result v0

    if-ne v0, v5, :cond_5

    .line 18
    new-instance v0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;

    invoke-direct {v0, p2}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;-><init>(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 19
    invoke-interface {p1, v0}, Lcom/huawei/hem/ve;->d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_1

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v4, [Ljava/lang/Object;

    .line 21
    iget v2, p2, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p2}, Lcom/huawei/hem/ig;->a()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "take block completed snapshot, must has already be completed. %d %d"

    .line 23
    invoke-static {p2, v0}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    invoke-interface {p1, p2}, Lcom/huawei/hem/ve;->l(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_1

    :cond_7
    const-string p2, "remove error, not exist: %s %d"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 25
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v4, v3

    .line 26
    invoke-static {p0, p2, v4}, Lcom/huawei/hem/fh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v2

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
