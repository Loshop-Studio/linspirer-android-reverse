.class public final Lcom/huawei/hem/sl;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lcom/huawei/hem/ak;


# instance fields
.field public final a:Lcom/huawei/hem/dk;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/dk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/sl;->a:Lcom/huawei/hem/dk;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/ak$a;)Lcom/huawei/hem/kk;
    .locals 26

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/huawei/hem/ql;

    .line 2
    iget-object v0, v2, Lcom/huawei/hem/ql;->e:Lcom/huawei/hem/gk;

    .line 3
    iget-object v9, v2, Lcom/huawei/hem/ql;->b:Lcom/huawei/hem/kl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v10, v0

    move-object v11, v3

    move v12, v4

    .line 4
    :goto_0
    iget-object v0, v9, Lcom/huawei/hem/kl;->g:Lcom/huawei/hem/gk;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    iget-object v5, v10, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 6
    invoke-static {v0, v5}, Lcom/huawei/hem/tk;->w(Lcom/huawei/hem/zj;Lcom/huawei/hem/zj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/huawei/hem/kl;->h:Lcom/huawei/hem/el;

    invoke-virtual {v0}, Lcom/huawei/hem/el;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 p1, v12

    goto/16 :goto_3

    .line 7
    :cond_0
    iget-object v0, v9, Lcom/huawei/hem/kl;->j:Lcom/huawei/hem/dl;

    if-nez v0, :cond_1

    .line 8
    iget-object v0, v9, Lcom/huawei/hem/kl;->h:Lcom/huawei/hem/el;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v9, v3, v4}, Lcom/huawei/hem/kl;->f(Ljava/io/IOException;Z)Ljava/io/IOException;

    .line 10
    iput-object v3, v9, Lcom/huawei/hem/kl;->h:Lcom/huawei/hem/el;

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 12
    :cond_2
    :goto_1
    iput-object v10, v9, Lcom/huawei/hem/kl;->g:Lcom/huawei/hem/gk;

    .line 13
    new-instance v0, Lcom/huawei/hem/el;

    iget-object v5, v9, Lcom/huawei/hem/kl;->b:Lcom/huawei/hem/gl;

    .line 14
    iget-object v4, v10, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 15
    iget-object v6, v4, Lcom/huawei/hem/zj;->a:Ljava/lang/String;

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 16
    iget-object v3, v9, Lcom/huawei/hem/kl;->a:Lcom/huawei/hem/dk;

    .line 17
    iget-object v6, v3, Lcom/huawei/hem/dk;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 18
    iget-object v7, v3, Lcom/huawei/hem/dk;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 19
    iget-object v3, v3, Lcom/huawei/hem/dk;->p:Lcom/huawei/hem/mj;

    move-object/from16 v20, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_2

    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    .line 20
    :goto_2
    new-instance v6, Lcom/huawei/hem/fj;

    .line 21
    iget-object v14, v4, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    .line 22
    iget v15, v4, Lcom/huawei/hem/zj;->e:I

    .line 23
    iget-object v3, v9, Lcom/huawei/hem/kl;->a:Lcom/huawei/hem/dk;

    .line 24
    iget-object v4, v3, Lcom/huawei/hem/dk;->t:Lcom/huawei/hem/uj;

    .line 25
    iget-object v7, v3, Lcom/huawei/hem/dk;->l:Ljavax/net/SocketFactory;

    .line 26
    iget-object v8, v3, Lcom/huawei/hem/dk;->q:Lcom/huawei/hem/hj;

    .line 27
    iget-object v13, v3, Lcom/huawei/hem/dk;->b:Ljava/net/Proxy;

    move/from16 p1, v12

    .line 28
    iget-object v12, v3, Lcom/huawei/hem/dk;->c:Ljava/util/List;

    .line 29
    iget-object v1, v3, Lcom/huawei/hem/dk;->d:Ljava/util/List;

    .line 30
    iget-object v3, v3, Lcom/huawei/hem/dk;->h:Ljava/net/ProxySelector;

    move-object/from16 v22, v13

    move-object v13, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    move-object/from16 v23, v12

    move-object/from16 v24, v1

    move-object/from16 v25, v3

    .line 31
    invoke-direct/range {v13 .. v25}, Lcom/huawei/hem/fj;-><init>(Ljava/lang/String;ILcom/huawei/hem/uj;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/huawei/hem/mj;Lcom/huawei/hem/hj;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 32
    iget-object v7, v9, Lcom/huawei/hem/kl;->c:Lcom/huawei/hem/kj;

    iget-object v8, v9, Lcom/huawei/hem/kl;->d:Lcom/huawei/hem/vj;

    move-object v3, v0

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/huawei/hem/el;-><init>(Lcom/huawei/hem/kl;Lcom/huawei/hem/gl;Lcom/huawei/hem/fj;Lcom/huawei/hem/kj;Lcom/huawei/hem/vj;)V

    iput-object v0, v9, Lcom/huawei/hem/kl;->h:Lcom/huawei/hem/el;

    .line 33
    :goto_3
    invoke-virtual {v9}, Lcom/huawei/hem/kl;->e()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v3, 0x0

    .line 34
    :try_start_0
    invoke-virtual {v2, v10, v9, v3}, Lcom/huawei/hem/ql;->b(Lcom/huawei/hem/gk;Lcom/huawei/hem/kl;Lcom/huawei/hem/dl;)Lcom/huawei/hem/kk;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/hem/il; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_5

    .line 35
    new-instance v1, Lcom/huawei/hem/kk$a;

    invoke-direct {v1, v0}, Lcom/huawei/hem/kk$a;-><init>(Lcom/huawei/hem/kk;)V

    .line 36
    new-instance v0, Lcom/huawei/hem/kk$a;

    invoke-direct {v0, v11}, Lcom/huawei/hem/kk$a;-><init>(Lcom/huawei/hem/kk;)V

    .line 37
    iput-object v3, v0, Lcom/huawei/hem/kk$a;->g:Lcom/huawei/hem/mk;

    .line 38
    invoke-virtual {v0}, Lcom/huawei/hem/kk$a;->b()Lcom/huawei/hem/kk;

    move-result-object v0

    .line 39
    iget-object v3, v0, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    if-nez v3, :cond_4

    .line 40
    iput-object v0, v1, Lcom/huawei/hem/kk$a;->j:Lcom/huawei/hem/kk;

    .line 41
    invoke-virtual {v1}, Lcom/huawei/hem/kk$a;->b()Lcom/huawei/hem/kk;

    move-result-object v0

    goto :goto_4

    .line 42
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_4
    move-object v11, v0

    .line 43
    sget-object v0, Lcom/huawei/hem/rk;->a:Lcom/huawei/hem/rk;

    check-cast v0, Lcom/huawei/hem/dk$a;

    if-eqz v0, :cond_26

    .line 44
    iget-object v0, v11, Lcom/huawei/hem/kk;->m:Lcom/huawei/hem/dl;

    if-eqz v0, :cond_6

    .line 45
    invoke-virtual {v0}, Lcom/huawei/hem/dl;->b()Lcom/huawei/hem/fl;

    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 47
    :goto_5
    iget v3, v11, Lcom/huawei/hem/kk;->c:I

    .line 48
    iget-object v4, v11, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 49
    iget-object v4, v4, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    const/16 v5, 0x133

    const-string v6, "GET"

    if-eq v3, v5, :cond_11

    const/16 v5, 0x134

    if-eq v3, v5, :cond_11

    const/16 v5, 0x191

    if-eq v3, v5, :cond_10

    const/16 v5, 0x1f7

    if-eq v3, v5, :cond_e

    const/16 v5, 0x197

    if-eq v3, v5, :cond_b

    const/16 v1, 0x198

    if-eq v3, v1, :cond_7

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_c

    :pswitch_0
    move-object/from16 v7, p0

    goto/16 :goto_7

    :cond_7
    move-object/from16 v7, p0

    .line 50
    iget-object v3, v7, Lcom/huawei/hem/sl;->a:Lcom/huawei/hem/dk;

    .line 51
    iget-boolean v3, v3, Lcom/huawei/hem/dk;->w:Z

    if-nez v3, :cond_8

    goto/16 :goto_b

    .line 52
    :cond_8
    iget-object v3, v11, Lcom/huawei/hem/kk;->j:Lcom/huawei/hem/kk;

    if-eqz v3, :cond_9

    .line 53
    iget v3, v3, Lcom/huawei/hem/kk;->c:I

    if-ne v3, v1, :cond_9

    goto/16 :goto_b

    :cond_9
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v7, v11, v1}, Lcom/huawei/hem/sl;->c(Lcom/huawei/hem/kk;I)I

    move-result v1

    if-lez v1, :cond_a

    goto/16 :goto_b

    .line 55
    :cond_a
    iget-object v1, v11, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    goto/16 :goto_c

    :cond_b
    move-object/from16 v7, p0

    if-eqz v1, :cond_c

    .line 56
    iget-object v3, v1, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;

    goto :goto_6

    .line 57
    :cond_c
    iget-object v3, v7, Lcom/huawei/hem/sl;->a:Lcom/huawei/hem/dk;

    .line 58
    iget-object v3, v3, Lcom/huawei/hem/dk;->b:Ljava/net/Proxy;

    .line 59
    :goto_6
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_d

    .line 60
    iget-object v3, v7, Lcom/huawei/hem/sl;->a:Lcom/huawei/hem/dk;

    .line 61
    iget-object v3, v3, Lcom/huawei/hem/dk;->q:Lcom/huawei/hem/hj;

    .line 62
    invoke-interface {v3, v1, v11}, Lcom/huawei/hem/hj;->a(Lcom/huawei/hem/nk;Lcom/huawei/hem/kk;)Lcom/huawei/hem/gk;

    move-result-object v1

    goto/16 :goto_c

    .line 63
    :cond_d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v7, p0

    .line 64
    iget-object v1, v11, Lcom/huawei/hem/kk;->j:Lcom/huawei/hem/kk;

    if-eqz v1, :cond_f

    .line 65
    iget v1, v1, Lcom/huawei/hem/kk;->c:I

    if-ne v1, v5, :cond_f

    goto/16 :goto_b

    :cond_f
    const v1, 0x7fffffff

    .line 66
    invoke-virtual {v7, v11, v1}, Lcom/huawei/hem/sl;->c(Lcom/huawei/hem/kk;I)I

    move-result v1

    if-nez v1, :cond_18

    .line 67
    iget-object v1, v11, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    goto/16 :goto_c

    :cond_10
    move-object/from16 v7, p0

    .line 68
    iget-object v3, v7, Lcom/huawei/hem/sl;->a:Lcom/huawei/hem/dk;

    .line 69
    iget-object v3, v3, Lcom/huawei/hem/dk;->r:Lcom/huawei/hem/hj;

    .line 70
    invoke-interface {v3, v1, v11}, Lcom/huawei/hem/hj;->a(Lcom/huawei/hem/nk;Lcom/huawei/hem/kk;)Lcom/huawei/hem/gk;

    move-result-object v1

    goto :goto_c

    :cond_11
    move-object/from16 v7, p0

    .line 71
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "HEAD"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_b

    .line 72
    :cond_12
    :goto_7
    iget-object v1, v7, Lcom/huawei/hem/sl;->a:Lcom/huawei/hem/dk;

    .line 73
    iget-boolean v1, v1, Lcom/huawei/hem/dk;->v:Z

    if-nez v1, :cond_13

    goto :goto_b

    .line 74
    :cond_13
    iget-object v1, v11, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_15

    goto :goto_b

    .line 75
    :cond_15
    iget-object v3, v11, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 76
    iget-object v3, v3, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    if-eqz v3, :cond_25

    .line 77
    :try_start_1
    new-instance v5, Lcom/huawei/hem/zj$a;

    invoke-direct {v5}, Lcom/huawei/hem/zj$a;-><init>()V

    invoke-virtual {v5, v3, v1}, Lcom/huawei/hem/zj$a;->d(Lcom/huawei/hem/zj;Ljava/lang/String;)Lcom/huawei/hem/zj$a;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_16

    .line 78
    invoke-virtual {v5}, Lcom/huawei/hem/zj$a;->a()Lcom/huawei/hem/zj;

    move-result-object v1

    goto :goto_a

    :cond_16
    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_17

    goto :goto_b

    .line 79
    :cond_17
    iget-object v3, v1, Lcom/huawei/hem/zj;->a:Ljava/lang/String;

    .line 80
    iget-object v5, v11, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 81
    iget-object v5, v5, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 82
    iget-object v5, v5, Lcom/huawei/hem/zj;->a:Ljava/lang/String;

    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 84
    iget-object v3, v7, Lcom/huawei/hem/sl;->a:Lcom/huawei/hem/dk;

    .line 85
    iget-boolean v3, v3, Lcom/huawei/hem/dk;->u:Z

    if-nez v3, :cond_19

    :cond_18
    :goto_b
    const/4 v1, 0x0

    :goto_c
    move-object v10, v1

    goto :goto_f

    .line 86
    :cond_19
    iget-object v3, v11, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    if-eqz v3, :cond_24

    .line 87
    new-instance v5, Lcom/huawei/hem/gk$a;

    invoke-direct {v5, v3}, Lcom/huawei/hem/gk$a;-><init>(Lcom/huawei/hem/gk;)V

    .line 88
    invoke-static {v4}, Lcom/huawei/hem/uk;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "PROPFIND"

    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v5, v6, v3}, Lcom/huawei/hem/gk$a;->c(Ljava/lang/String;Lcom/huawei/hem/jk;)Lcom/huawei/hem/gk$a;

    goto :goto_e

    :cond_1a
    if-eqz v8, :cond_1b

    .line 92
    iget-object v3, v11, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 93
    iget-object v3, v3, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    goto :goto_d

    :cond_1b
    const/4 v3, 0x0

    .line 94
    :goto_d
    invoke-virtual {v5, v4, v3}, Lcom/huawei/hem/gk$a;->c(Ljava/lang/String;Lcom/huawei/hem/jk;)Lcom/huawei/hem/gk$a;

    :goto_e
    if-nez v8, :cond_1c

    .line 95
    iget-object v3, v5, Lcom/huawei/hem/gk$a;->c:Lcom/huawei/hem/yj$a;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lcom/huawei/hem/yj$a;->b(Ljava/lang/String;)Lcom/huawei/hem/yj$a;

    .line 96
    iget-object v3, v5, Lcom/huawei/hem/gk$a;->c:Lcom/huawei/hem/yj$a;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lcom/huawei/hem/yj$a;->b(Ljava/lang/String;)Lcom/huawei/hem/yj$a;

    .line 97
    iget-object v3, v5, Lcom/huawei/hem/gk$a;->c:Lcom/huawei/hem/yj$a;

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/huawei/hem/yj$a;->b(Ljava/lang/String;)Lcom/huawei/hem/yj$a;

    .line 98
    :cond_1c
    iget-object v3, v11, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 99
    iget-object v3, v3, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 100
    invoke-static {v3, v1}, Lcom/huawei/hem/tk;->w(Lcom/huawei/hem/zj;Lcom/huawei/hem/zj;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 101
    iget-object v3, v5, Lcom/huawei/hem/gk$a;->c:Lcom/huawei/hem/yj$a;

    const-string v4, "Authorization"

    invoke-virtual {v3, v4}, Lcom/huawei/hem/yj$a;->b(Ljava/lang/String;)Lcom/huawei/hem/yj$a;

    .line 102
    :cond_1d
    invoke-virtual {v5, v1}, Lcom/huawei/hem/gk$a;->f(Lcom/huawei/hem/zj;)Lcom/huawei/hem/gk$a;

    invoke-virtual {v5}, Lcom/huawei/hem/gk$a;->a()Lcom/huawei/hem/gk;

    move-result-object v1

    goto :goto_c

    :goto_f
    if-nez v10, :cond_20

    if-eqz v0, :cond_1f

    .line 103
    iget-boolean v0, v0, Lcom/huawei/hem/dl;->f:Z

    if-eqz v0, :cond_1f

    .line 104
    iget-boolean v0, v9, Lcom/huawei/hem/kl;->n:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, v9, Lcom/huawei/hem/kl;->n:Z

    .line 106
    iget-object v0, v9, Lcom/huawei/hem/kl;->e:Lcom/huawei/hem/fn;

    invoke-virtual {v0}, Lcom/huawei/hem/fn;->k()Z

    goto :goto_10

    .line 107
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1f
    :goto_10
    return-object v11

    .line 108
    :cond_20
    iget-object v1, v11, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    .line 109
    invoke-static {v1}, Lcom/huawei/hem/tk;->d(Ljava/io/Closeable;)V

    .line 110
    iget-object v1, v9, Lcom/huawei/hem/kl;->b:Lcom/huawei/hem/gl;

    monitor-enter v1

    .line 111
    :try_start_2
    iget-object v3, v9, Lcom/huawei/hem/kl;->j:Lcom/huawei/hem/dl;

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    goto :goto_11

    :cond_21
    const/4 v3, 0x0

    :goto_11
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_22

    .line 112
    iget-object v1, v0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v1}, Lcom/huawei/hem/nl;->cancel()V

    .line 113
    iget-object v1, v0, Lcom/huawei/hem/dl;->a:Lcom/huawei/hem/kl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v3, v4}, Lcom/huawei/hem/kl;->d(Lcom/huawei/hem/dl;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_22
    add-int/lit8 v12, p1, 0x1

    const/16 v0, 0x14

    if-gt v12, v0, :cond_23

    const/4 v3, 0x0

    goto :goto_14

    .line 114
    :cond_23
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many follow-up requests: "

    invoke-static {v1, v12}, Lcom/huawei/hem/f6;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 115
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_24
    const/4 v0, 0x0

    .line 116
    throw v0

    :cond_25
    const/4 v0, 0x0

    .line 117
    throw v0

    :cond_26
    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 118
    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_15

    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    move-object v1, v0

    const/4 v0, 0x1

    .line 119
    :try_start_4
    instance-of v4, v1, Lcom/huawei/hem/vl;

    if-nez v4, :cond_27

    goto :goto_12

    :cond_27
    const/4 v0, 0x0

    .line 120
    :goto_12
    invoke-virtual {v7, v1, v9, v0, v10}, Lcom/huawei/hem/sl;->b(Ljava/io/IOException;Lcom/huawei/hem/kl;ZLcom/huawei/hem/gk;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_13

    :cond_28
    throw v1

    :catch_2
    move-exception v0

    move-object/from16 v7, p0

    move-object v1, v0

    .line 121
    invoke-virtual {v1}, Lcom/huawei/hem/il;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v7, v0, v9, v4, v10}, Lcom/huawei/hem/sl;->b(Ljava/io/IOException;Lcom/huawei/hem/kl;ZLcom/huawei/hem/gk;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_29

    .line 122
    :goto_13
    invoke-virtual {v9}, Lcom/huawei/hem/kl;->c()V

    move/from16 v12, p1

    :goto_14
    move-object v1, v7

    goto/16 :goto_0

    .line 123
    :cond_29
    :try_start_5
    invoke-virtual {v1}, Lcom/huawei/hem/il;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 124
    :goto_15
    invoke-virtual {v9}, Lcom/huawei/hem/kl;->c()V

    throw v0

    :cond_2a
    move-object/from16 v7, p0

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/io/IOException;Lcom/huawei/hem/kl;ZLcom/huawei/hem/gk;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sl;->a:Lcom/huawei/hem/dk;

    .line 2
    iget-boolean v0, v0, Lcom/huawei/hem/dk;->w:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    iget-object p4, p4, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    .line 4
    instance-of p4, p1, Ljava/io/FileNotFoundException;

    if-eqz p4, :cond_1

    return v1

    .line 5
    :cond_1
    instance-of p4, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    instance-of p4, p1, Ljava/io/InterruptedIOException;

    if-eqz p4, :cond_3

    .line 7
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    goto :goto_1

    .line 8
    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    move p1, v1

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v0

    :goto_2
    if-nez p1, :cond_7

    return v1

    .line 11
    :cond_7
    iget-object p1, p2, Lcom/huawei/hem/kl;->h:Lcom/huawei/hem/el;

    .line 12
    iget-object p3, p1, Lcom/huawei/hem/el;->c:Lcom/huawei/hem/gl;

    monitor-enter p3

    .line 13
    :try_start_0
    iget-boolean p1, p1, Lcom/huawei/hem/el;->i:Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_8

    .line 14
    iget-object p1, p2, Lcom/huawei/hem/kl;->h:Lcom/huawei/hem/el;

    invoke-virtual {p1}, Lcom/huawei/hem/el;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v0

    goto :goto_3

    :cond_8
    move p1, v1

    :goto_3
    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lcom/huawei/hem/kk;I)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return p2

    :cond_1
    const-string p2, "\\d+"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    const p1, 0x7fffffff

    return p1
.end method
