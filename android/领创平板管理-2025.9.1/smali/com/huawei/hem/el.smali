.class public final Lcom/huawei/hem/el;
.super Ljava/lang/Object;
.source "ExchangeFinder.java"


# instance fields
.field public final a:Lcom/huawei/hem/kl;

.field public final b:Lcom/huawei/hem/fj;

.field public final c:Lcom/huawei/hem/gl;

.field public final d:Lcom/huawei/hem/kj;

.field public final e:Lcom/huawei/hem/vj;

.field public f:Lcom/huawei/hem/jl$a;

.field public final g:Lcom/huawei/hem/jl;

.field public h:Lcom/huawei/hem/fl;

.field public i:Z

.field public j:Lcom/huawei/hem/nk;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/kl;Lcom/huawei/hem/gl;Lcom/huawei/hem/fj;Lcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    .line 4
    iput-object p3, p0, Lcom/huawei/hem/el;->b:Lcom/huawei/hem/fj;

    .line 5
    iput-object p4, p0, Lcom/huawei/hem/el;->d:Lcom/huawei/hem/kj;

    .line 6
    iput-object p5, p0, Lcom/huawei/hem/el;->e:Lcom/huawei/hem/vj;

    .line 7
    new-instance p1, Lcom/huawei/hem/jl;

    iget-object p2, p2, Lcom/huawei/hem/gl;->e:Lcom/huawei/hem/hl;

    invoke-direct {p1, p3, p2, p4, p5}, Lcom/huawei/hem/jl;-><init>(Lcom/huawei/hem/fj;Lcom/huawei/hem/hl;Lcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V

    iput-object p1, p0, Lcom/huawei/hem/el;->g:Lcom/huawei/hem/jl;

    return-void
.end method


# virtual methods
.method public final a(IIIIZ)Lcom/huawei/hem/fl;
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    invoke-virtual {v0}, Lcom/huawei/hem/kl;->e()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v1, Lcom/huawei/hem/el;->i:Z

    .line 4
    iget-object v3, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v3, v3, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    .line 5
    iget-object v4, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v4, v4, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v4, v4, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    iget-boolean v4, v4, Lcom/huawei/hem/fl;->k:Z

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    invoke-virtual {v4}, Lcom/huawei/hem/kl;->h()Ljava/net/Socket;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 7
    :goto_0
    iget-object v6, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v6, v6, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    if-eqz v6, :cond_1

    .line 8
    iget-object v3, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v3, v3, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object v6, v3

    move-object v3, v5

    :goto_1
    const/4 v7, 0x1

    if-nez v3, :cond_4

    .line 9
    iget-object v8, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    iget-object v9, v1, Lcom/huawei/hem/el;->b:Lcom/huawei/hem/fj;

    iget-object v10, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    invoke-virtual {v8, v9, v10, v5, v0}, Lcom/huawei/hem/gl;->e(Lcom/huawei/hem/fj;Lcom/huawei/hem/kl;Ljava/util/List;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10
    iget-object v3, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v3, v3, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    move-object v8, v5

    move v9, v7

    goto :goto_3

    .line 11
    :cond_2
    iget-object v8, v1, Lcom/huawei/hem/el;->j:Lcom/huawei/hem/nk;

    if-eqz v8, :cond_3

    .line 12
    iget-object v8, v1, Lcom/huawei/hem/el;->j:Lcom/huawei/hem/nk;

    .line 13
    iput-object v5, v1, Lcom/huawei/hem/el;->j:Lcom/huawei/hem/nk;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hem/el;->d()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 15
    iget-object v8, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v8, v8, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    .line 16
    iget-object v8, v8, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    :goto_2
    move v9, v0

    goto :goto_3

    :cond_4
    move v9, v0

    move-object v8, v5

    .line 17
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 18
    invoke-static {v4}, Lcom/huawei/hem/tk;->e(Ljava/net/Socket;)V

    if-eqz v6, :cond_6

    .line 19
    iget-object v2, v1, Lcom/huawei/hem/el;->e:Lcom/huawei/hem/vj;

    if-eqz v2, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    throw v5

    :cond_6
    :goto_4
    if-eqz v9, :cond_8

    .line 21
    iget-object v2, v1, Lcom/huawei/hem/el;->e:Lcom/huawei/hem/vj;

    if-eqz v2, :cond_7

    goto :goto_5

    .line 22
    :cond_7
    throw v5

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    return-object v3

    :cond_9
    if-nez v8, :cond_1c

    .line 23
    iget-object v2, v1, Lcom/huawei/hem/el;->f:Lcom/huawei/hem/jl$a;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/huawei/hem/jl$a;->a()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 24
    :cond_a
    iget-object v2, v1, Lcom/huawei/hem/el;->g:Lcom/huawei/hem/jl;

    .line 25
    invoke-virtual {v2}, Lcom/huawei/hem/jl;->a()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :goto_6
    invoke-virtual {v2}, Lcom/huawei/hem/jl;->b()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 28
    invoke-virtual {v2}, Lcom/huawei/hem/jl;->b()Z

    move-result v6

    const-string v10, "No route to "

    if-eqz v6, :cond_18

    .line 29
    iget-object v6, v2, Lcom/huawei/hem/jl;->e:Ljava/util/List;

    iget v11, v2, Lcom/huawei/hem/jl;->f:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v2, Lcom/huawei/hem/jl;->f:I

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    .line 30
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v2, Lcom/huawei/hem/jl;->g:Ljava/util/List;

    .line 31
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v11

    sget-object v12, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v11, v12, :cond_e

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v11

    sget-object v12, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v11, v12, :cond_b

    goto :goto_8

    .line 32
    :cond_b
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v11

    .line 33
    instance-of v12, v11, Ljava/net/InetSocketAddress;

    if-eqz v12, :cond_d

    .line 34
    check-cast v11, Ljava/net/InetSocketAddress;

    .line 35
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    if-nez v12, :cond_c

    .line 36
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 37
    :cond_c
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 38
    :goto_7
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    goto :goto_9

    .line 39
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_e
    :goto_8
    iget-object v11, v2, Lcom/huawei/hem/jl;->a:Lcom/huawei/hem/fj;

    .line 42
    iget-object v11, v11, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 43
    iget-object v12, v11, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 44
    iget v11, v11, Lcom/huawei/hem/zj;->e:I

    :goto_9
    if-lt v11, v7, :cond_17

    const v7, 0xffff

    if-gt v11, v7, :cond_17

    .line 45
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v7, v10, :cond_f

    .line 46
    iget-object v7, v2, Lcom/huawei/hem/jl;->g:Ljava/util/List;

    invoke-static {v12, v11}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 47
    :cond_f
    iget-object v7, v2, Lcom/huawei/hem/jl;->d:Lcom/huawei/hem/vj;

    if-eqz v7, :cond_16

    .line 48
    iget-object v7, v2, Lcom/huawei/hem/jl;->a:Lcom/huawei/hem/fj;

    .line 49
    iget-object v7, v7, Lcom/huawei/hem/fj;->b:Lcom/huawei/hem/uj;

    .line 50
    invoke-interface {v7, v12}, Lcom/huawei/hem/uj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 51
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15

    .line 52
    iget-object v10, v2, Lcom/huawei/hem/jl;->d:Lcom/huawei/hem/vj;

    if-eqz v10, :cond_14

    .line 53
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    move v12, v0

    :goto_a
    if-ge v12, v10, :cond_10

    .line 54
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 55
    iget-object v14, v2, Lcom/huawei/hem/jl;->g:Ljava/util/List;

    new-instance v15, Ljava/net/InetSocketAddress;

    invoke-direct {v15, v13, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 56
    :cond_10
    :goto_b
    iget-object v7, v2, Lcom/huawei/hem/jl;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v10, v0

    :goto_c
    if-ge v10, v7, :cond_12

    .line 57
    new-instance v11, Lcom/huawei/hem/nk;

    iget-object v12, v2, Lcom/huawei/hem/jl;->a:Lcom/huawei/hem/fj;

    iget-object v13, v2, Lcom/huawei/hem/jl;->g:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v12, v6, v13}, Lcom/huawei/hem/nk;-><init>(Lcom/huawei/hem/fj;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 58
    iget-object v12, v2, Lcom/huawei/hem/jl;->b:Lcom/huawei/hem/hl;

    .line 59
    monitor-enter v12

    .line 60
    :try_start_1
    iget-object v13, v12, Lcom/huawei/hem/hl;->a:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    if-eqz v13, :cond_11

    .line 61
    iget-object v12, v2, Lcom/huawei/hem/jl;->h:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 62
    :cond_11
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :catchall_0
    move-exception v0

    .line 63
    monitor-exit v12

    throw v0

    .line 64
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_e

    :cond_13
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 65
    :cond_14
    throw v5

    .line 66
    :cond_15
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/huawei/hem/jl;->a:Lcom/huawei/hem/fj;

    .line 67
    iget-object v2, v2, Lcom/huawei/hem/fj;->b:Lcom/huawei/hem/uj;

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_16
    throw v5

    .line 70
    :cond_17
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; port is out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    invoke-static {v10}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/huawei/hem/jl;->a:Lcom/huawei/hem/fj;

    .line 72
    iget-object v4, v4, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 73
    iget-object v4, v4, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; exhausted proxy configurations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/huawei/hem/jl;->e:Ljava/util/List;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_19
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 76
    iget-object v6, v2, Lcom/huawei/hem/jl;->h:Ljava/util/List;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v2, v2, Lcom/huawei/hem/jl;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 78
    :cond_1a
    new-instance v2, Lcom/huawei/hem/jl$a;

    invoke-direct {v2, v4}, Lcom/huawei/hem/jl$a;-><init>(Ljava/util/List;)V

    .line 79
    iput-object v2, v1, Lcom/huawei/hem/el;->f:Lcom/huawei/hem/jl$a;

    const/4 v2, 0x1

    goto :goto_f

    .line 80
    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1c
    move v2, v0

    .line 81
    :goto_f
    iget-object v4, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    monitor-enter v4

    .line 82
    :try_start_2
    iget-object v6, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    invoke-virtual {v6}, Lcom/huawei/hem/kl;->e()Z

    move-result v6

    if-nez v6, :cond_28

    if-eqz v2, :cond_1e

    .line 83
    iget-object v2, v1, Lcom/huawei/hem/el;->f:Lcom/huawei/hem/jl$a;

    if-eqz v2, :cond_1d

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/huawei/hem/jl$a;->a:Ljava/util/List;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    iget-object v2, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    iget-object v7, v1, Lcom/huawei/hem/el;->b:Lcom/huawei/hem/fj;

    iget-object v10, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    invoke-virtual {v2, v7, v10, v6, v0}, Lcom/huawei/hem/gl;->e(Lcom/huawei/hem/fj;Lcom/huawei/hem/kl;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 86
    iget-object v0, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v3, v0, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    const/4 v9, 0x1

    goto :goto_10

    .line 87
    :cond_1d
    throw v5

    :cond_1e
    move-object v6, v5

    :cond_1f
    :goto_10
    if-nez v9, :cond_22

    if-nez v8, :cond_21

    .line 88
    iget-object v0, v1, Lcom/huawei/hem/el;->f:Lcom/huawei/hem/jl$a;

    .line 89
    invoke-virtual {v0}, Lcom/huawei/hem/jl$a;->a()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 90
    iget-object v2, v0, Lcom/huawei/hem/jl$a;->a:Ljava/util/List;

    iget v3, v0, Lcom/huawei/hem/jl$a;->b:I

    add-int/lit8 v7, v3, 0x1

    iput v7, v0, Lcom/huawei/hem/jl$a;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/huawei/hem/nk;

    goto :goto_11

    .line 91
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 92
    :cond_21
    :goto_11
    new-instance v3, Lcom/huawei/hem/fl;

    iget-object v0, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    invoke-direct {v3, v0, v8}, Lcom/huawei/hem/fl;-><init>(Lcom/huawei/hem/gl;Lcom/huawei/hem/nk;)V

    .line 93
    iput-object v3, v1, Lcom/huawei/hem/el;->h:Lcom/huawei/hem/fl;

    .line 94
    :cond_22
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v9, :cond_24

    .line 95
    iget-object v0, v1, Lcom/huawei/hem/el;->e:Lcom/huawei/hem/vj;

    if-eqz v0, :cond_23

    return-object v3

    .line 96
    :cond_23
    throw v5

    .line 97
    :cond_24
    iget-object v0, v1, Lcom/huawei/hem/el;->d:Lcom/huawei/hem/kj;

    iget-object v2, v1, Lcom/huawei/hem/el;->e:Lcom/huawei/hem/vj;

    move-object v10, v3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lcom/huawei/hem/fl;->c(IIIIZLcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V

    .line 98
    iget-object v0, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    iget-object v0, v0, Lcom/huawei/hem/gl;->e:Lcom/huawei/hem/hl;

    .line 99
    iget-object v2, v3, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 100
    invoke-virtual {v0, v2}, Lcom/huawei/hem/hl;->a(Lcom/huawei/hem/nk;)V

    .line 101
    iget-object v2, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    monitor-enter v2

    .line 102
    :try_start_3
    iput-object v5, v1, Lcom/huawei/hem/el;->h:Lcom/huawei/hem/fl;

    .line 103
    iget-object v0, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    iget-object v4, v1, Lcom/huawei/hem/el;->b:Lcom/huawei/hem/fj;

    iget-object v7, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    const/4 v9, 0x1

    invoke-virtual {v0, v4, v7, v6, v9}, Lcom/huawei/hem/gl;->e(Lcom/huawei/hem/fj;Lcom/huawei/hem/kl;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 104
    iput-boolean v9, v3, Lcom/huawei/hem/fl;->k:Z

    .line 105
    iget-object v0, v3, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    .line 106
    iget-object v3, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v3, v3, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    .line 107
    iput-object v8, v1, Lcom/huawei/hem/el;->j:Lcom/huawei/hem/nk;

    goto :goto_12

    .line 108
    :cond_25
    iget-object v0, v1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    .line 109
    iget-boolean v4, v0, Lcom/huawei/hem/gl;->f:Z

    if-nez v4, :cond_26

    const/4 v4, 0x1

    .line 110
    iput-boolean v4, v0, Lcom/huawei/hem/gl;->f:Z

    .line 111
    sget-object v4, Lcom/huawei/hem/gl;->g:Ljava/util/concurrent/Executor;

    iget-object v6, v0, Lcom/huawei/hem/gl;->c:Ljava/lang/Runnable;

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 112
    :cond_26
    iget-object v0, v0, Lcom/huawei/hem/gl;->d:Ljava/util/Deque;

    invoke-interface {v0, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, v1, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    invoke-virtual {v0, v3}, Lcom/huawei/hem/kl;->a(Lcom/huawei/hem/fl;)V

    move-object v0, v5

    .line 114
    :goto_12
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    invoke-static {v0}, Lcom/huawei/hem/tk;->e(Ljava/net/Socket;)V

    .line 116
    iget-object v0, v1, Lcom/huawei/hem/el;->e:Lcom/huawei/hem/vj;

    if-eqz v0, :cond_27

    return-object v3

    .line 117
    :cond_27
    throw v5

    :catchall_1
    move-exception v0

    .line 118
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 119
    :cond_28
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 120
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 121
    :cond_29
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 122
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public final b(IIIIZZ)Lcom/huawei/hem/fl;
    .locals 12

    .line 1
    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/huawei/hem/el;->a(IIIIZ)Lcom/huawei/hem/fl;

    move-result-object v1

    move-object v2, p0

    .line 2
    iget-object v3, v2, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    monitor-enter v3

    .line 3
    :try_start_0
    iget v0, v1, Lcom/huawei/hem/fl;->m:I

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/huawei/hem/fl;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    monitor-exit v3

    return-object v1

    .line 5
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    iget-object v0, v1, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v4, v1, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 9
    monitor-enter v4

    .line 10
    :try_start_1
    iget-boolean v0, v4, Lcom/huawei/hem/am;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit v4

    goto :goto_2

    .line 11
    :cond_2
    :try_start_2
    iget-wide v8, v4, Lcom/huawei/hem/am;->n:J

    iget-wide v10, v4, Lcom/huawei/hem/am;->m:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_3

    iget-wide v8, v4, Lcom/huawei/hem/am;->p:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    monitor-exit v4

    goto :goto_2

    .line 12
    :cond_3
    monitor-exit v4

    :catch_0
    :cond_4
    :goto_1
    move v3, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_5
    if-eqz p6, :cond_4

    .line 13
    :try_start_3
    iget-object v0, v1, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v4
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 14
    :try_start_4
    iget-object v0, v1, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-virtual {v0, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 15
    iget-object v0, v1, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    invoke-interface {v0}, Lcom/huawei/hem/jn;->y()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_6

    .line 16
    :try_start_5
    iget-object v0, v1, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v6, v1, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-virtual {v6, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 17
    invoke-virtual {v1}, Lcom/huawei/hem/fl;->i()V

    goto/16 :goto_0

    :cond_8
    return-object v1

    :catchall_2
    move-exception v0

    .line 18
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/el;->j:Lcom/huawei/hem/nk;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hem/el;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v1, v1, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    .line 6
    iget-object v1, v1, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 7
    iput-object v1, p0, Lcom/huawei/hem/el;->j:Lcom/huawei/hem/nk;

    .line 8
    monitor-exit v0

    return v2

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/huawei/hem/el;->f:Lcom/huawei/hem/jl$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/hem/el;->f:Lcom/huawei/hem/jl$a;

    invoke-virtual {v1}, Lcom/huawei/hem/jl$a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/huawei/hem/el;->g:Lcom/huawei/hem/jl;

    .line 10
    invoke-virtual {v1}, Lcom/huawei/hem/jl;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/el;->a:Lcom/huawei/hem/kl;

    iget-object v0, v0, Lcom/huawei/hem/kl;->i:Lcom/huawei/hem/fl;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/huawei/hem/fl;->l:I

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 5
    iget-object v1, p0, Lcom/huawei/hem/el;->b:Lcom/huawei/hem/fj;

    .line 6
    iget-object v1, v1, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 7
    invoke-static {v0, v1}, Lcom/huawei/hem/tk;->w(Lcom/huawei/hem/zj;Lcom/huawei/hem/zj;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/huawei/hem/el;->i:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
