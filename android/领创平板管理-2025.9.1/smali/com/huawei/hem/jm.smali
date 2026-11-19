.class public final Lcom/huawei/hem/jm;
.super Ljava/lang/Object;
.source "Http2ExchangeCodec.java"

# interfaces
.implements Lcom/huawei/hem/nl;


# static fields
.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/huawei/hem/ak$a;

.field public final b:Lcom/huawei/hem/fl;

.field public final c:Lcom/huawei/hem/am;

.field public volatile d:Lcom/huawei/hem/lm;

.field public final e:Lcom/huawei/hem/ek;

.field public volatile f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/tk;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/jm;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/tk;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/jm;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/fl;Lcom/huawei/hem/ak$a;Lcom/huawei/hem/am;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/huawei/hem/jm;->b:Lcom/huawei/hem/fl;

    .line 3
    iput-object p3, p0, Lcom/huawei/hem/jm;->a:Lcom/huawei/hem/ak$a;

    .line 4
    iput-object p4, p0, Lcom/huawei/hem/jm;->c:Lcom/huawei/hem/am;

    .line 5
    iget-object p1, p1, Lcom/huawei/hem/dk;->c:Ljava/util/List;

    .line 6
    sget-object p2, Lcom/huawei/hem/ek;->H2_PRIOR_KNOWLEDGE:Lcom/huawei/hem/ek;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lcom/huawei/hem/ek;->H2_PRIOR_KNOWLEDGE:Lcom/huawei/hem/ek;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/huawei/hem/ek;->HTTP_2:Lcom/huawei/hem/ek;

    :goto_0
    iput-object p1, p0, Lcom/huawei/hem/jm;->e:Lcom/huawei/hem/ek;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    invoke-virtual {v0}, Lcom/huawei/hem/lm;->f()Lcom/huawei/hem/zn;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/lm$a;

    invoke-virtual {v0}, Lcom/huawei/hem/lm$a;->close()V

    return-void
.end method

.method public b(Lcom/huawei/hem/gk;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3
    :goto_0
    iget-object v3, p1, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/huawei/hem/yj;->g()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v5, Lcom/huawei/hem/xl;

    sget-object v6, Lcom/huawei/hem/xl;->f:Lcom/huawei/hem/kn;

    .line 6
    iget-object v7, p1, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    .line 7
    invoke-direct {v5, v6, v7}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v5, Lcom/huawei/hem/xl;

    sget-object v6, Lcom/huawei/hem/xl;->g:Lcom/huawei/hem/kn;

    .line 9
    iget-object v7, p1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 10
    invoke-static {v7}, Lcom/huawei/hem/uk;->b(Lcom/huawei/hem/zj;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v5, p1, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    const-string v6, "Host"

    invoke-virtual {v5, v6}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 12
    new-instance v6, Lcom/huawei/hem/xl;

    sget-object v7, Lcom/huawei/hem/xl;->i:Lcom/huawei/hem/kn;

    invoke-direct {v6, v7, v5}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    new-instance v5, Lcom/huawei/hem/xl;

    sget-object v6, Lcom/huawei/hem/xl;->h:Lcom/huawei/hem/kn;

    .line 14
    iget-object p1, p1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 15
    iget-object p1, p1, Lcom/huawei/hem/zj;->a:Ljava/lang/String;

    .line 16
    invoke-direct {v5, v6, p1}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v3}, Lcom/huawei/hem/yj;->g()I

    move-result p1

    move v5, v1

    :goto_1
    if-ge v5, p1, :cond_5

    .line 18
    invoke-virtual {v3, v5}, Lcom/huawei/hem/yj;->d(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 19
    sget-object v7, Lcom/huawei/hem/jm;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "te"

    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3, v5}, Lcom/huawei/hem/yj;->h(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    :cond_3
    new-instance v7, Lcom/huawei/hem/xl;

    invoke-virtual {v3, v5}, Lcom/huawei/hem/yj;->h(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/huawei/hem/xl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/huawei/hem/jm;->c:Lcom/huawei/hem/am;

    xor-int/lit8 v3, v0, 0x1

    const/4 v10, 0x0

    .line 23
    iget-object v5, p1, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    monitor-enter v5

    .line 24
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget v6, p1, Lcom/huawei/hem/am;->f:I

    const v7, 0x3fffffff    # 1.9999999f

    if-le v6, v7, :cond_6

    .line 26
    sget-object v6, Lcom/huawei/hem/wl;->REFUSED_STREAM:Lcom/huawei/hem/wl;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/am;->i(Lcom/huawei/hem/wl;)V

    .line 27
    :cond_6
    iget-boolean v6, p1, Lcom/huawei/hem/am;->g:Z

    if-nez v6, :cond_c

    .line 28
    iget v12, p1, Lcom/huawei/hem/am;->f:I

    .line 29
    iget v6, p1, Lcom/huawei/hem/am;->f:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p1, Lcom/huawei/hem/am;->f:I

    .line 30
    new-instance v13, Lcom/huawei/hem/lm;

    const/4 v11, 0x0

    move-object v6, v13

    move v7, v12

    move-object v8, p1

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/huawei/hem/lm;-><init>(ILcom/huawei/hem/am;ZZLcom/huawei/hem/yj;)V

    if-eqz v0, :cond_7

    .line 31
    iget-wide v6, p1, Lcom/huawei/hem/am;->r:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_7

    iget-wide v6, v13, Lcom/huawei/hem/lm;->b:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_8

    :cond_7
    move v1, v2

    .line 32
    :cond_8
    invoke-virtual {v13}, Lcom/huawei/hem/lm;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, p1, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_9
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    iget-object v0, p1, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {v0, v3, v12, v4}, Lcom/huawei/hem/mm;->g(ZILjava/util/List;)V

    .line 36
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_a

    .line 37
    iget-object p1, p1, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {p1}, Lcom/huawei/hem/mm;->flush()V

    .line 38
    :cond_a
    iput-object v13, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    .line 39
    iget-boolean p1, p0, Lcom/huawei/hem/jm;->f:Z

    if-nez p1, :cond_b

    .line 40
    iget-object p1, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    .line 41
    iget-object p1, p1, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    .line 42
    iget-object v0, p0, Lcom/huawei/hem/jm;->a:Lcom/huawei/hem/ak$a;

    check-cast v0, Lcom/huawei/hem/ql;

    .line 43
    iget v0, v0, Lcom/huawei/hem/ql;->h:I

    int-to-long v0, v0

    .line 44
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/huawei/hem/bo;->g(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hem/bo;

    .line 45
    iget-object p1, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    .line 46
    iget-object p1, p1, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    .line 47
    iget-object v0, p0, Lcom/huawei/hem/jm;->a:Lcom/huawei/hem/ak$a;

    check-cast v0, Lcom/huawei/hem/ql;

    .line 48
    iget v0, v0, Lcom/huawei/hem/ql;->i:I

    int-to-long v0, v0

    .line 49
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/huawei/hem/bo;->g(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hem/bo;

    return-void

    .line 50
    :cond_b
    iget-object p1, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    sget-object v0, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/lm;->e(Lcom/huawei/hem/wl;)V

    .line 51
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_c
    :try_start_3
    new-instance v0, Lcom/huawei/hem/vl;

    invoke-direct {v0}, Lcom/huawei/hem/vl;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    .line 53
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 54
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/jm;->c:Lcom/huawei/hem/am;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {v0}, Lcom/huawei/hem/mm;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hem/jm;->f:Z

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    sget-object v1, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/lm;->e(Lcom/huawei/hem/wl;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/huawei/hem/kk;)J
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/pl;->a(Lcom/huawei/hem/kk;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Lcom/huawei/hem/kk;)Lcom/huawei/hem/ao;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    .line 2
    iget-object p1, p1, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    return-object p1
.end method

.method public f(Lcom/huawei/hem/gk;J)Lcom/huawei/hem/zn;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    invoke-virtual {p1}, Lcom/huawei/hem/lm;->f()Lcom/huawei/hem/zn;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)Lcom/huawei/hem/kk$a;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/jm;->d:Lcom/huawei/hem/lm;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    invoke-virtual {v1}, Lcom/huawei/hem/fn;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/huawei/hem/lm;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/lm;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_2
    iget-object v1, v0, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    invoke-virtual {v1}, Lcom/huawei/hem/lm$c;->n()V

    .line 7
    iget-object v1, v0, Lcom/huawei/hem/lm;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 8
    iget-object v1, v0, Lcom/huawei/hem/lm;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hem/yj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/jm;->e:Lcom/huawei/hem/ek;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1}, Lcom/huawei/hem/yj;->g()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_1
    if-ge v3, v4, :cond_4

    .line 12
    invoke-virtual {v1, v3}, Lcom/huawei/hem/yj;->d(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v1, v3}, Lcom/huawei/hem/yj;->h(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":status"

    .line 14
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP/1.1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hem/tl;->a(Ljava/lang/String;)Lcom/huawei/hem/tl;

    move-result-object v6

    goto :goto_2

    .line 16
    :cond_1
    sget-object v9, Lcom/huawei/hem/jm;->h:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 17
    sget-object v9, Lcom/huawei/hem/rk;->a:Lcom/huawei/hem/rk;

    check-cast v9, Lcom/huawei/hem/dk$a;

    if-eqz v9, :cond_2

    .line 18
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_2
    throw v5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_7

    .line 21
    new-instance v1, Lcom/huawei/hem/kk$a;

    invoke-direct {v1}, Lcom/huawei/hem/kk$a;-><init>()V

    .line 22
    iput-object v0, v1, Lcom/huawei/hem/kk$a;->b:Lcom/huawei/hem/ek;

    .line 23
    iget v0, v6, Lcom/huawei/hem/tl;->b:I

    .line 24
    iput v0, v1, Lcom/huawei/hem/kk$a;->c:I

    .line 25
    iget-object v0, v6, Lcom/huawei/hem/tl;->c:Ljava/lang/String;

    .line 26
    iput-object v0, v1, Lcom/huawei/hem/kk$a;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 28
    new-instance v2, Lcom/huawei/hem/yj$a;

    invoke-direct {v2}, Lcom/huawei/hem/yj$a;-><init>()V

    .line 29
    iget-object v3, v2, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 30
    iput-object v2, v1, Lcom/huawei/hem/kk$a;->f:Lcom/huawei/hem/yj$a;

    if-eqz p1, :cond_6

    .line 31
    sget-object p1, Lcom/huawei/hem/rk;->a:Lcom/huawei/hem/rk;

    check-cast p1, Lcom/huawei/hem/dk$a;

    if-eqz p1, :cond_5

    .line 32
    iget p1, v1, Lcom/huawei/hem/kk$a;->c:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_6

    return-object v5

    :cond_5
    throw v5

    :cond_6
    return-object v1

    .line 33
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_8
    :try_start_3
    iget-object p1, v0, Lcom/huawei/hem/lm;->l:Ljava/io/IOException;

    if-eqz p1, :cond_9

    iget-object p1, v0, Lcom/huawei/hem/lm;->l:Ljava/io/IOException;

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/huawei/hem/qm;

    iget-object v1, v0, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    invoke-direct {p1, v1}, Lcom/huawei/hem/qm;-><init>(Lcom/huawei/hem/wl;)V

    :goto_3
    throw p1

    :catchall_0
    move-exception p1

    .line 35
    iget-object v1, v0, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    invoke-virtual {v1}, Lcom/huawei/hem/lm$c;->n()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public h()Lcom/huawei/hem/fl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/jm;->b:Lcom/huawei/hem/fl;

    return-object v0
.end method
