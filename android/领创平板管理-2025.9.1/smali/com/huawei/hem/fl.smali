.class public final Lcom/huawei/hem/fl;
.super Lcom/huawei/hem/am$e;
.source "RealConnection.java"


# instance fields
.field public final b:Lcom/huawei/hem/gl;

.field public final c:Lcom/huawei/hem/nk;

.field public d:Ljava/net/Socket;

.field public e:Ljava/net/Socket;

.field public f:Lcom/huawei/hem/xj;

.field public g:Lcom/huawei/hem/ek;

.field public h:Lcom/huawei/hem/am;

.field public i:Lcom/huawei/hem/jn;

.field public j:Lcom/huawei/hem/in;

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/huawei/hem/kl;",
            ">;>;"
        }
    .end annotation
.end field

.field public q:J


# direct methods
.method public constructor <init>(Lcom/huawei/hem/gl;Lcom/huawei/hem/nk;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/am$e;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/huawei/hem/fl;->o:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/fl;->p:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lcom/huawei/hem/fl;->q:J

    .line 5
    iput-object p1, p0, Lcom/huawei/hem/fl;->b:Lcom/huawei/hem/gl;

    .line 6
    iput-object p2, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/am;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fl;->b:Lcom/huawei/hem/gl;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hem/am;->d()I

    move-result p1

    iput p1, p0, Lcom/huawei/hem/fl;->o:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/huawei/hem/lm;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/wl;->REFUSED_STREAM:Lcom/huawei/hem/wl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/lm;->c(Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    return-void
.end method

.method public c(IIIIZLcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V
    .locals 13

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1
    iget-object v0, v7, Lcom/huawei/hem/fl;->g:Lcom/huawei/hem/ek;

    if-nez v0, :cond_12

    .line 2
    iget-object v0, v7, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/fj;->f:Ljava/util/List;

    .line 5
    new-instance v10, Lcom/huawei/hem/cl;

    invoke-direct {v10, v0}, Lcom/huawei/hem/cl;-><init>(Ljava/util/List;)V

    .line 6
    iget-object v1, v7, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 7
    iget-object v1, v1, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 8
    iget-object v2, v1, Lcom/huawei/hem/fj;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_2

    .line 9
    sget-object v1, Lcom/huawei/hem/pj;->h:Lcom/huawei/hem/pj;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v7, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 11
    iget-object v0, v0, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 12
    iget-object v0, v0, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 13
    iget-object v0, v0, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 14
    sget-object v1, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 15
    invoke-virtual {v1, v0}, Lcom/huawei/hem/wm;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/huawei/hem/il;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    invoke-static {v3, v0, v4}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/huawei/hem/il;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 17
    :cond_1
    new-instance v0, Lcom/huawei/hem/il;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/huawei/hem/il;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 18
    :cond_2
    iget-object v0, v1, Lcom/huawei/hem/fj;->e:Ljava/util/List;

    .line 19
    sget-object v1, Lcom/huawei/hem/ek;->H2_PRIOR_KNOWLEDGE:Lcom/huawei/hem/ek;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    .line 20
    :goto_1
    :try_start_0
    iget-object v0, v7, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    invoke-virtual {v0}, Lcom/huawei/hem/nk;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/huawei/hem/fl;->e(IIILcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V

    .line 22
    iget-object v0, v7, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, p1

    move v2, p2

    goto :goto_2

    :cond_4
    move v1, p1

    move v2, p2

    .line 23
    :try_start_1
    invoke-virtual {p0, p1, p2, v8, v9}, Lcom/huawei/hem/fl;->d(IILcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move/from16 v3, p4

    .line 24
    :try_start_2
    invoke-virtual {p0, v10, v3, v8, v9}, Lcom/huawei/hem/fl;->f(Lcom/huawei/hem/cl;ILcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V

    .line 25
    iget-object v0, v7, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 26
    iget-object v0, v0, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    .line 27
    iget-object v0, v7, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 28
    iget-object v0, v0, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v9, :cond_8

    .line 29
    :goto_3
    iget-object v0, v7, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    invoke-virtual {v0}, Lcom/huawei/hem/nk;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 30
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/huawei/hem/il;

    invoke-direct {v1, v0}, Lcom/huawei/hem/il;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 32
    :cond_6
    :goto_4
    iget-object v0, v7, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    if-eqz v0, :cond_7

    .line 33
    iget-object v1, v7, Lcom/huawei/hem/fl;->b:Lcom/huawei/hem/gl;

    monitor-enter v1

    .line 34
    :try_start_3
    iget-object v0, v7, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    invoke-virtual {v0}, Lcom/huawei/hem/am;->d()I

    move-result v0

    iput v0, v7, Lcom/huawei/hem/fl;->o:I

    .line 35
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    .line 36
    :cond_8
    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_6
    move/from16 v3, p4

    goto :goto_7

    :catch_2
    move-exception v0

    move v1, p1

    move v2, p2

    goto :goto_6

    .line 37
    :goto_7
    iget-object v4, v7, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-static {v4}, Lcom/huawei/hem/tk;->e(Ljava/net/Socket;)V

    .line 38
    iget-object v4, v7, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    invoke-static {v4}, Lcom/huawei/hem/tk;->e(Ljava/net/Socket;)V

    .line 39
    iput-object v11, v7, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    .line 40
    iput-object v11, v7, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    .line 41
    iput-object v11, v7, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    .line 42
    iput-object v11, v7, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    .line 43
    iput-object v11, v7, Lcom/huawei/hem/fl;->f:Lcom/huawei/hem/xj;

    .line 44
    iput-object v11, v7, Lcom/huawei/hem/fl;->g:Lcom/huawei/hem/ek;

    .line 45
    iput-object v11, v7, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    .line 46
    iget-object v4, v7, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 47
    iget-object v4, v4, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    if-eqz v9, :cond_10

    if-nez v12, :cond_9

    .line 48
    new-instance v12, Lcom/huawei/hem/il;

    invoke-direct {v12, v0}, Lcom/huawei/hem/il;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    .line 49
    :cond_9
    invoke-virtual {v12, v0}, Lcom/huawei/hem/il;->addConnectException(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_f

    const/4 v4, 0x1

    .line 50
    iput-boolean v4, v10, Lcom/huawei/hem/cl;->d:Z

    .line 51
    iget-boolean v4, v10, Lcom/huawei/hem/cl;->c:Z

    const/4 v5, 0x0

    if-nez v4, :cond_a

    goto :goto_9

    .line 52
    :cond_a
    instance-of v4, v0, Ljava/net/ProtocolException;

    if-eqz v4, :cond_b

    goto :goto_9

    .line 53
    :cond_b
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_c

    goto :goto_9

    .line 54
    :cond_c
    instance-of v4, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_d

    .line 55
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_d

    goto :goto_9

    .line 56
    :cond_d
    instance-of v4, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v4, :cond_e

    goto :goto_9

    .line 57
    :cond_e
    instance-of v5, v0, Ljavax/net/ssl/SSLException;

    :goto_9
    if-eqz v5, :cond_f

    goto/16 :goto_1

    .line 58
    :cond_f
    throw v12

    .line 59
    :cond_10
    throw v11

    .line 60
    :cond_11
    new-instance v0, Lcom/huawei/hem/il;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/huawei/hem/il;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 61
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(IILcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 2
    iget-object v0, p3, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;

    .line 3
    iget-object p3, p3, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 4
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Ljava/net/Socket;

    invoke-direct {p3, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p3, p3, Lcom/huawei/hem/fj;->c:Ljavax/net/SocketFactory;

    .line 7
    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p3

    .line 8
    :goto_1
    iput-object p3, p0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 10
    iget-object v0, v0, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    if-eqz p4, :cond_3

    .line 11
    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 12
    :try_start_0
    sget-object p2, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 13
    iget-object p3, p0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    iget-object p4, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 14
    iget-object p4, p4, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    .line 15
    invoke-virtual {p2, p3, p4, p1}, Lcom/huawei/hem/wm;->h(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    iget-object p1, p0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    invoke-static {p1}, Lcom/huawei/hem/rn;->g(Ljava/net/Socket;)Lcom/huawei/hem/ao;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/huawei/hem/vn;

    invoke-direct {p2, p1}, Lcom/huawei/hem/vn;-><init>(Lcom/huawei/hem/ao;)V

    .line 18
    iput-object p2, p0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    .line 19
    iget-object p1, p0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    invoke-static {p1}, Lcom/huawei/hem/rn;->d(Ljava/net/Socket;)Lcom/huawei/hem/zn;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/huawei/hem/un;

    invoke-direct {p2, p1}, Lcom/huawei/hem/un;-><init>(Lcom/huawei/hem/zn;)V

    .line 21
    iput-object p2, p0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 23
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Ljava/net/ConnectException;

    const-string p3, "Failed to connect to "

    invoke-static {p3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 25
    iget-object p4, p4, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    .line 26
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 28
    throw p2

    :cond_3
    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method public final e(IIILcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-instance v2, Lcom/huawei/hem/gk$a;

    invoke-direct {v2}, Lcom/huawei/hem/gk$a;-><init>()V

    iget-object v3, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 2
    iget-object v3, v3, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 3
    iget-object v3, v3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 4
    invoke-virtual {v2, v3}, Lcom/huawei/hem/gk$a;->f(Lcom/huawei/hem/zj;)Lcom/huawei/hem/gk$a;

    const-string v3, "CONNECT"

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/huawei/hem/gk$a;->c(Ljava/lang/String;Lcom/huawei/hem/jk;)Lcom/huawei/hem/gk$a;

    iget-object v3, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 6
    iget-object v3, v3, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 7
    iget-object v3, v3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    const/4 v5, 0x1

    .line 8
    invoke-static {v3, v5}, Lcom/huawei/hem/tk;->m(Lcom/huawei/hem/zj;Z)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Host"

    invoke-virtual {v2, v6, v3}, Lcom/huawei/hem/gk$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/gk$a;

    const-string v3, "Proxy-Connection"

    const-string v6, "Keep-Alive"

    .line 9
    invoke-virtual {v2, v3, v6}, Lcom/huawei/hem/gk$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/gk$a;

    const-string v3, "User-Agent"

    const-string v6, "okhttp/3.14.9"

    .line 10
    invoke-virtual {v2, v3, v6}, Lcom/huawei/hem/gk$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/gk$a;

    .line 11
    invoke-virtual {v2}, Lcom/huawei/hem/gk$a;->a()Lcom/huawei/hem/gk;

    move-result-object v2

    .line 12
    new-instance v3, Lcom/huawei/hem/kk$a;

    invoke-direct {v3}, Lcom/huawei/hem/kk$a;-><init>()V

    .line 13
    iput-object v2, v3, Lcom/huawei/hem/kk$a;->a:Lcom/huawei/hem/gk;

    .line 14
    sget-object v6, Lcom/huawei/hem/ek;->HTTP_1_1:Lcom/huawei/hem/ek;

    .line 15
    iput-object v6, v3, Lcom/huawei/hem/kk$a;->b:Lcom/huawei/hem/ek;

    const/16 v6, 0x197

    .line 16
    iput v6, v3, Lcom/huawei/hem/kk$a;->c:I

    const-string v6, "Preemptive Authenticate"

    .line 17
    iput-object v6, v3, Lcom/huawei/hem/kk$a;->d:Ljava/lang/String;

    .line 18
    sget-object v6, Lcom/huawei/hem/tk;->d:Lcom/huawei/hem/mk;

    .line 19
    iput-object v6, v3, Lcom/huawei/hem/kk$a;->g:Lcom/huawei/hem/mk;

    const-wide/16 v6, -0x1

    .line 20
    iput-wide v6, v3, Lcom/huawei/hem/kk$a;->k:J

    .line 21
    iput-wide v6, v3, Lcom/huawei/hem/kk$a;->l:J

    .line 22
    iget-object v6, v3, Lcom/huawei/hem/kk$a;->f:Lcom/huawei/hem/yj$a;

    if-eqz v6, :cond_a

    const-string v7, "Proxy-Authenticate"

    .line 23
    invoke-static {v7}, Lcom/huawei/hem/yj;->a(Ljava/lang/String;)V

    const-string v8, "OkHttp-Preemptive"

    .line 24
    invoke-static {v8, v7}, Lcom/huawei/hem/yj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v6, v7}, Lcom/huawei/hem/yj$a;->b(Ljava/lang/String;)Lcom/huawei/hem/yj$a;

    .line 26
    iget-object v9, v6, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v6, v6, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v3}, Lcom/huawei/hem/kk$a;->b()Lcom/huawei/hem/kk;

    move-result-object v3

    .line 29
    iget-object v6, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 30
    iget-object v7, v6, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 31
    iget-object v7, v7, Lcom/huawei/hem/fj;->d:Lcom/huawei/hem/hj;

    .line 32
    invoke-interface {v7, v6, v3}, Lcom/huawei/hem/hj;->a(Lcom/huawei/hem/nk;Lcom/huawei/hem/kk;)Lcom/huawei/hem/gk;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, v3

    .line 33
    :cond_0
    iget-object v3, v2, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x15

    if-ge v7, v8, :cond_9

    move/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 34
    invoke-virtual {v0, v8, v1, v9, v10}, Lcom/huawei/hem/fl;->d(IILcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V

    .line 35
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CONNECT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/huawei/hem/tk;->m(Lcom/huawei/hem/zj;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " HTTP/1.1"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 36
    :goto_1
    new-instance v11, Lcom/huawei/hem/ul;

    iget-object v12, v0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    iget-object v13, v0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/huawei/hem/ul;-><init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/fl;Lcom/huawei/hem/jn;Lcom/huawei/hem/in;)V

    .line 37
    iget-object v4, v0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    invoke-interface {v4}, Lcom/huawei/hem/ao;->n()Lcom/huawei/hem/bo;

    move-result-object v4

    int-to-long v12, v1

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v12, v13, v14}, Lcom/huawei/hem/bo;->g(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hem/bo;

    .line 38
    iget-object v4, v0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    invoke-interface {v4}, Lcom/huawei/hem/zn;->n()Lcom/huawei/hem/bo;

    move-result-object v4

    move/from16 v12, p3

    int-to-long v13, v12

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v13, v14, v15}, Lcom/huawei/hem/bo;->g(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hem/bo;

    .line 39
    iget-object v4, v2, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    .line 40
    invoke-virtual {v11, v4, v5}, Lcom/huawei/hem/ul;->m(Lcom/huawei/hem/yj;Ljava/lang/String;)V

    .line 41
    iget-object v4, v11, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    invoke-interface {v4}, Lcom/huawei/hem/in;->flush()V

    .line 42
    invoke-virtual {v11, v6}, Lcom/huawei/hem/ul;->g(Z)Lcom/huawei/hem/kk$a;

    move-result-object v4

    .line 43
    iput-object v2, v4, Lcom/huawei/hem/kk$a;->a:Lcom/huawei/hem/gk;

    .line 44
    invoke-virtual {v4}, Lcom/huawei/hem/kk$a;->b()Lcom/huawei/hem/kk;

    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/huawei/hem/pl;->a(Lcom/huawei/hem/kk;)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v4, v13, v15

    if-nez v4, :cond_1

    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {v11, v13, v14}, Lcom/huawei/hem/ul;->j(J)Lcom/huawei/hem/ao;

    move-result-object v4

    const v11, 0x7fffffff

    .line 47
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v11, v13}, Lcom/huawei/hem/tk;->x(Lcom/huawei/hem/ao;ILjava/util/concurrent/TimeUnit;)Z

    .line 48
    check-cast v4, Lcom/huawei/hem/ul$e;

    invoke-virtual {v4}, Lcom/huawei/hem/ul$e;->close()V

    .line 49
    :goto_2
    iget v4, v2, Lcom/huawei/hem/kk;->c:I

    const/16 v11, 0xc8

    if-eq v4, v11, :cond_6

    const/16 v11, 0x197

    if-ne v4, v11, :cond_5

    .line 50
    iget-object v4, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 51
    iget-object v11, v4, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 52
    iget-object v11, v11, Lcom/huawei/hem/fj;->d:Lcom/huawei/hem/hj;

    .line 53
    invoke-interface {v11, v4, v2}, Lcom/huawei/hem/hj;->a(Lcom/huawei/hem/nk;Lcom/huawei/hem/kk;)Lcom/huawei/hem/gk;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 54
    iget-object v2, v2, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    const-string v11, "Connection"

    invoke-virtual {v2, v11}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    const-string v11, "close"

    .line 55
    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 56
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to authenticate with proxy"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected response code for CONNECT: "

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    iget v2, v2, Lcom/huawei/hem/kk;->c:I

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_6
    iget-object v2, v0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    invoke-interface {v2}, Lcom/huawei/hem/jn;->x()Lcom/huawei/hem/hn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hem/hn;->y()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    invoke-interface {v2}, Lcom/huawei/hem/in;->m()Lcom/huawei/hem/hn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hem/hn;->y()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_7

    goto :goto_5

    .line 61
    :cond_7
    iget-object v4, v0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    invoke-static {v4}, Lcom/huawei/hem/tk;->e(Ljava/net/Socket;)V

    const/4 v4, 0x0

    .line 62
    iput-object v4, v0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    .line 63
    iput-object v4, v0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    .line 64
    iput-object v4, v0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    .line 65
    iget-object v4, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 66
    iget-object v4, v4, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 67
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    return-void

    .line 68
    :cond_a
    throw v4
.end method

.method public final f(Lcom/huawei/hem/cl;ILcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V
    .locals 5

    .line 1
    iget-object p3, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 2
    iget-object p3, p3, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 3
    iget-object v0, p3, Lcom/huawei/hem/fj;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p3, Lcom/huawei/hem/fj;->e:Ljava/util/List;

    .line 5
    sget-object p3, Lcom/huawei/hem/ek;->H2_PRIOR_KNOWLEDGE:Lcom/huawei/hem/ek;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    iput-object p1, p0, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    .line 7
    sget-object p1, Lcom/huawei/hem/ek;->H2_PRIOR_KNOWLEDGE:Lcom/huawei/hem/ek;

    iput-object p1, p0, Lcom/huawei/hem/fl;->g:Lcom/huawei/hem/ek;

    .line 8
    invoke-virtual {p0, p2}, Lcom/huawei/hem/fl;->j(I)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    iput-object p1, p0, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    .line 10
    sget-object p1, Lcom/huawei/hem/ek;->HTTP_1_1:Lcom/huawei/hem/ek;

    iput-object p1, p0, Lcom/huawei/hem/fl;->g:Lcom/huawei/hem/ek;

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p4, :cond_a

    .line 11
    :try_start_0
    iget-object p4, p0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    .line 12
    iget-object v2, p3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 13
    iget-object v2, v2, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 14
    iget-object v3, p3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 15
    iget v3, v3, Lcom/huawei/hem/zj;->e:I

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v0, p4, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p4

    check-cast p4, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {p1, p4}, Lcom/huawei/hem/cl;->a(Ljavax/net/ssl/SSLSocket;)Lcom/huawei/hem/pj;

    move-result-object p1

    .line 18
    iget-boolean v0, p1, Lcom/huawei/hem/pj;->b:Z

    if-eqz v0, :cond_2

    .line 19
    sget-object v0, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 20
    iget-object v2, p3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 21
    iget-object v2, v2, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 22
    iget-object v3, p3, Lcom/huawei/hem/fj;->e:Ljava/util/List;

    .line 23
    invoke-virtual {v0, p4, v2, v3}, Lcom/huawei/hem/wm;->g(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 24
    :cond_2
    invoke-virtual {p4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 25
    invoke-virtual {p4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/huawei/hem/xj;->a(Ljavax/net/ssl/SSLSession;)Lcom/huawei/hem/xj;

    move-result-object v2

    .line 27
    iget-object v3, p3, Lcom/huawei/hem/fj;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 28
    iget-object v4, p3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 29
    iget-object v4, v4, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 30
    invoke-interface {v3, v4, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 31
    iget-object p1, v2, Lcom/huawei/hem/xj;->c:Ljava/util/List;

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "Hostname "

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 33
    :try_start_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 34
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object p3, p3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 36
    iget-object p3, p3, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not verified:\n    certificate: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p1}, Lcom/huawei/hem/mj;->b(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n    DN: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p3

    invoke-interface {p3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n    subjectAltNames: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {p1}, Lcom/huawei/hem/bn;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_3
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object p3, p3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 43
    iget-object p3, p3, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not verified (no certificates)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_4
    iget-object v0, p3, Lcom/huawei/hem/fj;->k:Lcom/huawei/hem/mj;

    .line 46
    iget-object p3, p3, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 47
    iget-object p3, p3, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 48
    iget-object v3, v2, Lcom/huawei/hem/xj;->c:Ljava/util/List;

    .line 49
    invoke-virtual {v0, p3, v3}, Lcom/huawei/hem/mj;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 50
    iget-boolean p1, p1, Lcom/huawei/hem/pj;->b:Z

    if-eqz p1, :cond_5

    .line 51
    sget-object p1, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 52
    invoke-virtual {p1, p4}, Lcom/huawei/hem/wm;->j(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_5
    iput-object p4, p0, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    .line 54
    invoke-static {p4}, Lcom/huawei/hem/rn;->g(Ljava/net/Socket;)Lcom/huawei/hem/ao;

    move-result-object p1

    .line 55
    new-instance p3, Lcom/huawei/hem/vn;

    invoke-direct {p3, p1}, Lcom/huawei/hem/vn;-><init>(Lcom/huawei/hem/ao;)V

    .line 56
    iput-object p3, p0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    .line 57
    iget-object p1, p0, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    invoke-static {p1}, Lcom/huawei/hem/rn;->d(Ljava/net/Socket;)Lcom/huawei/hem/zn;

    move-result-object p1

    .line 58
    new-instance p3, Lcom/huawei/hem/un;

    invoke-direct {p3, p1}, Lcom/huawei/hem/un;-><init>(Lcom/huawei/hem/zn;)V

    .line 59
    iput-object p3, p0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    .line 60
    iput-object v2, p0, Lcom/huawei/hem/fl;->f:Lcom/huawei/hem/xj;

    if-eqz v1, :cond_6

    .line 61
    invoke-static {v1}, Lcom/huawei/hem/ek;->get(Ljava/lang/String;)Lcom/huawei/hem/ek;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_6
    sget-object p1, Lcom/huawei/hem/ek;->HTTP_1_1:Lcom/huawei/hem/ek;

    :goto_0
    iput-object p1, p0, Lcom/huawei/hem/fl;->g:Lcom/huawei/hem/ek;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    sget-object p1, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 64
    invoke-virtual {p1, p4}, Lcom/huawei/hem/wm;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 65
    iget-object p1, p0, Lcom/huawei/hem/fl;->g:Lcom/huawei/hem/ek;

    sget-object p3, Lcom/huawei/hem/ek;->HTTP_2:Lcom/huawei/hem/ek;

    if-ne p1, p3, :cond_7

    .line 66
    invoke-virtual {p0, p2}, Lcom/huawei/hem/fl;->j(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 67
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/huawei/hem/tk;->t(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 68
    :cond_8
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    move-object p4, v1

    :goto_3
    if-eqz p4, :cond_9

    .line 69
    sget-object p2, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 70
    invoke-virtual {p2, p4}, Lcom/huawei/hem/wm;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 71
    :cond_9
    invoke-static {p4}, Lcom/huawei/hem/tk;->e(Ljava/net/Socket;)V

    throw p1

    .line 72
    :cond_a
    throw v1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Lcom/huawei/hem/dk;Lcom/huawei/hem/ak$a;)Lcom/huawei/hem/nl;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/huawei/hem/jm;

    iget-object v1, p0, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/huawei/hem/jm;-><init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/fl;Lcom/huawei/hem/ak$a;Lcom/huawei/hem/am;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    check-cast p2, Lcom/huawei/hem/ql;

    .line 4
    iget v1, p2, Lcom/huawei/hem/ql;->h:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    invoke-interface {v0}, Lcom/huawei/hem/ao;->n()Lcom/huawei/hem/bo;

    move-result-object v0

    .line 7
    iget v1, p2, Lcom/huawei/hem/ql;->h:I

    int-to-long v1, v1

    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hem/bo;->g(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hem/bo;

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    invoke-interface {v0}, Lcom/huawei/hem/zn;->n()Lcom/huawei/hem/bo;

    move-result-object v0

    .line 10
    iget p2, p2, Lcom/huawei/hem/ql;->i:I

    int-to-long v1, p2

    .line 11
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Lcom/huawei/hem/bo;->g(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hem/bo;

    .line 12
    new-instance p2, Lcom/huawei/hem/ul;

    iget-object v0, p0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    iget-object v1, p0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    invoke-direct {p2, p1, p0, v0, v1}, Lcom/huawei/hem/ul;-><init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/fl;Lcom/huawei/hem/jn;Lcom/huawei/hem/in;)V

    return-object p2
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fl;->b:Lcom/huawei/hem/gl;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/huawei/hem/fl;->k:Z

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

.method public final j(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    new-instance v0, Lcom/huawei/hem/am$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/huawei/hem/am$c;-><init>(Z)V

    iget-object v3, p0, Lcom/huawei/hem/fl;->e:Ljava/net/Socket;

    iget-object v4, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 3
    iget-object v4, v4, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 4
    iget-object v4, v4, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 5
    iget-object v4, v4, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 6
    iget-object v5, p0, Lcom/huawei/hem/fl;->i:Lcom/huawei/hem/jn;

    iget-object v6, p0, Lcom/huawei/hem/fl;->j:Lcom/huawei/hem/in;

    .line 7
    iput-object v3, v0, Lcom/huawei/hem/am$c;->a:Ljava/net/Socket;

    .line 8
    iput-object v4, v0, Lcom/huawei/hem/am$c;->b:Ljava/lang/String;

    .line 9
    iput-object v5, v0, Lcom/huawei/hem/am$c;->c:Lcom/huawei/hem/jn;

    .line 10
    iput-object v6, v0, Lcom/huawei/hem/am$c;->d:Lcom/huawei/hem/in;

    .line 11
    iput-object p0, v0, Lcom/huawei/hem/am$c;->e:Lcom/huawei/hem/am$e;

    .line 12
    iput p1, v0, Lcom/huawei/hem/am$c;->h:I

    .line 13
    new-instance p1, Lcom/huawei/hem/am;

    invoke-direct {p1, v0}, Lcom/huawei/hem/am;-><init>(Lcom/huawei/hem/am$c;)V

    .line 14
    iput-object p1, p0, Lcom/huawei/hem/fl;->h:Lcom/huawei/hem/am;

    .line 15
    iget-object v0, p1, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-boolean v3, v0, Lcom/huawei/hem/mm;->e:Z

    if-nez v3, :cond_9

    .line 18
    iget-boolean v3, v0, Lcom/huawei/hem/mm;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    monitor-exit v0

    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    sget-object v3, Lcom/huawei/hem/mm;->g:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    sget-object v3, Lcom/huawei/hem/mm;->g:Ljava/util/logging/Logger;

    const-string v4, ">> CONNECTION %s"

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/huawei/hem/zl;->a:Lcom/huawei/hem/kn;

    invoke-virtual {v6}, Lcom/huawei/hem/kn;->hex()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/huawei/hem/tk;->k(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 21
    :cond_1
    iget-object v3, v0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    sget-object v4, Lcom/huawei/hem/zl;->a:Lcom/huawei/hem/kn;

    invoke-virtual {v4}, Lcom/huawei/hem/kn;->toByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    .line 22
    iget-object v3, v0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {v3}, Lcom/huawei/hem/in;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    monitor-exit v0

    .line 24
    :goto_0
    iget-object v0, p1, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    iget-object v3, p1, Lcom/huawei/hem/am;->s:Lcom/huawei/hem/pm;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_2
    iget-boolean v4, v0, Lcom/huawei/hem/mm;->e:Z

    if-nez v4, :cond_8

    .line 27
    iget v4, v3, Lcom/huawei/hem/pm;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    const/4 v5, 0x4

    .line 28
    invoke-virtual {v0, v1, v4, v5, v1}, Lcom/huawei/hem/mm;->d(IIBB)V

    move v4, v1

    :goto_1
    const/16 v6, 0xa

    if-ge v4, v6, :cond_6

    shl-int v6, v2, v4

    .line 29
    iget v7, v3, Lcom/huawei/hem/pm;->a:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    if-ne v4, v5, :cond_4

    const/4 v6, 0x3

    goto :goto_3

    :cond_4
    const/4 v6, 0x7

    if-ne v4, v6, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v4

    .line 30
    :goto_3
    iget-object v7, v0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {v7, v6}, Lcom/huawei/hem/in;->s(I)Lcom/huawei/hem/in;

    .line 31
    iget-object v6, v0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    .line 32
    iget-object v7, v3, Lcom/huawei/hem/pm;->b:[I

    aget v7, v7, v4

    .line 33
    invoke-interface {v6, v7}, Lcom/huawei/hem/in;->t(I)Lcom/huawei/hem/in;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 34
    :cond_6
    iget-object v2, v0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {v2}, Lcom/huawei/hem/in;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    monitor-exit v0

    .line 36
    iget-object v0, p1, Lcom/huawei/hem/am;->s:Lcom/huawei/hem/pm;

    invoke-virtual {v0}, Lcom/huawei/hem/pm;->a()I

    move-result v0

    const v2, 0xffff

    if-eq v0, v2, :cond_7

    .line 37
    iget-object v3, p1, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    sub-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/huawei/hem/mm;->j(IJ)V

    .line 38
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    iget-object p1, p1, Lcom/huawei/hem/am;->w:Lcom/huawei/hem/am$g;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 39
    :cond_8
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 40
    :cond_9
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public k(Lcom/huawei/hem/zj;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/huawei/hem/zj;->e:I

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 3
    iget-object v1, v1, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 4
    iget-object v1, v1, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 5
    iget v2, v1, Lcom/huawei/hem/zj;->e:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/huawei/hem/fl;->f:Lcom/huawei/hem/xj;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/huawei/hem/bn;->a:Lcom/huawei/hem/bn;

    .line 9
    iget-object p1, p1, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/huawei/hem/xj;->c:Ljava/util/List;

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 12
    invoke-virtual {v2, p1, v0}, Lcom/huawei/hem/bn;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v3, v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Connection{"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 2
    iget-object v1, v1, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 3
    iget-object v1, v1, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 4
    iget-object v1, v1, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 6
    iget-object v1, v1, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 7
    iget-object v1, v1, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 8
    iget v1, v1, Lcom/huawei/hem/zj;->e:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 10
    iget-object v1, v1, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 12
    iget-object v1, v1, Lcom/huawei/hem/nk;->c:Ljava/net/InetSocketAddress;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Lcom/huawei/hem/fl;->f:Lcom/huawei/hem/xj;

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, v1, Lcom/huawei/hem/xj;->b:Lcom/huawei/hem/nj;

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/fl;->g:Lcom/huawei/hem/ek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
