.class public final Lcom/huawei/hem/ml;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lcom/huawei/hem/ak;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hem/ml;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/ak$a;)Lcom/huawei/hem/kk;
    .locals 9

    .line 1
    check-cast p1, Lcom/huawei/hem/ql;

    .line 2
    iget-object v0, p1, Lcom/huawei/hem/ql;->c:Lcom/huawei/hem/dl;

    if-eqz v0, :cond_1a

    .line 3
    iget-object p1, p1, Lcom/huawei/hem/ql;->e:Lcom/huawei/hem/gk;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget-object v4, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v4, :cond_18

    .line 6
    iget-object v4, v0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v4, p1}, Lcom/huawei/hem/nl;->b(Lcom/huawei/hem/gk;)V

    .line 7
    iget-object v4, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v4, :cond_17

    .line 8
    iget-object v4, p1, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    .line 9
    invoke-static {v4}, Lcom/huawei/hem/uk;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 10
    iget-object v4, p1, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    if-eqz v4, :cond_5

    .line 11
    iget-object v4, p1, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    const-string v7, "Expect"

    invoke-virtual {v4, v7}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "100-continue"

    .line 12
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    :try_start_1
    iget-object v4, v0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v4}, Lcom/huawei/hem/nl;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    iget-object v4, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v0, v5}, Lcom/huawei/hem/dl;->d(Z)Lcom/huawei/hem/kk$a;

    move-result-object v4

    move v7, v5

    goto :goto_0

    .line 16
    :cond_0
    throw v3

    :catch_0
    move-exception p1

    .line 17
    iget-object v1, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0, p1}, Lcom/huawei/hem/dl;->e(Ljava/io/IOException;)V

    .line 19
    throw p1

    .line 20
    :cond_1
    throw v3

    :cond_2
    move-object v4, v3

    move v7, v6

    :goto_0
    if-nez v4, :cond_4

    .line 21
    iget-object v5, p1, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    if-eqz v5, :cond_3

    .line 22
    invoke-virtual {v0, p1, v6}, Lcom/huawei/hem/dl;->c(Lcom/huawei/hem/gk;Z)Lcom/huawei/hem/zn;

    move-result-object v5

    .line 23
    invoke-static {v5}, Lcom/huawei/hem/rn;->a(Lcom/huawei/hem/zn;)Lcom/huawei/hem/in;

    move-result-object v5

    .line 24
    iget-object v8, p1, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    .line 25
    invoke-virtual {v8, v5}, Lcom/huawei/hem/jk;->e(Lcom/huawei/hem/in;)V

    .line 26
    check-cast v5, Lcom/huawei/hem/un;

    invoke-virtual {v5}, Lcom/huawei/hem/un;->close()V

    goto :goto_1

    .line 27
    :cond_3
    throw v3

    .line 28
    :cond_4
    iget-object v8, v0, Lcom/huawei/hem/dl;->a:Lcom/huawei/hem/kl;

    invoke-virtual {v8, v0, v5, v6, v3}, Lcom/huawei/hem/kl;->d(Lcom/huawei/hem/dl;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 29
    invoke-virtual {v0}, Lcom/huawei/hem/dl;->b()Lcom/huawei/hem/fl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hem/fl;->g()Z

    move-result v5

    if-nez v5, :cond_6

    .line 30
    iget-object v5, v0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v5}, Lcom/huawei/hem/nl;->h()Lcom/huawei/hem/fl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hem/fl;->i()V

    goto :goto_1

    .line 31
    :cond_5
    iget-object v4, v0, Lcom/huawei/hem/dl;->a:Lcom/huawei/hem/kl;

    invoke-virtual {v4, v0, v5, v6, v3}, Lcom/huawei/hem/kl;->d(Lcom/huawei/hem/dl;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-object v4, v3

    move v7, v6

    .line 32
    :cond_6
    :goto_1
    iget-object v5, p1, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    .line 33
    :try_start_2
    iget-object v5, v0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v5}, Lcom/huawei/hem/nl;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_8

    .line 34
    iget-object v5, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v5, :cond_7

    goto :goto_2

    .line 35
    :cond_7
    throw v3

    :cond_8
    :goto_2
    if-nez v4, :cond_9

    .line 36
    invoke-virtual {v0, v6}, Lcom/huawei/hem/dl;->d(Z)Lcom/huawei/hem/kk$a;

    move-result-object v4

    .line 37
    :cond_9
    iput-object p1, v4, Lcom/huawei/hem/kk$a;->a:Lcom/huawei/hem/gk;

    .line 38
    invoke-virtual {v0}, Lcom/huawei/hem/dl;->b()Lcom/huawei/hem/fl;

    move-result-object v5

    .line 39
    iget-object v5, v5, Lcom/huawei/hem/fl;->f:Lcom/huawei/hem/xj;

    .line 40
    iput-object v5, v4, Lcom/huawei/hem/kk$a;->e:Lcom/huawei/hem/xj;

    .line 41
    iput-wide v1, v4, Lcom/huawei/hem/kk$a;->k:J

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 43
    iput-wide v7, v4, Lcom/huawei/hem/kk$a;->l:J

    .line 44
    invoke-virtual {v4}, Lcom/huawei/hem/kk$a;->b()Lcom/huawei/hem/kk;

    move-result-object v4

    .line 45
    iget v5, v4, Lcom/huawei/hem/kk;->c:I

    const/16 v7, 0x64

    if-ne v5, v7, :cond_a

    .line 46
    invoke-virtual {v0, v6}, Lcom/huawei/hem/dl;->d(Z)Lcom/huawei/hem/kk$a;

    move-result-object v4

    .line 47
    iput-object p1, v4, Lcom/huawei/hem/kk$a;->a:Lcom/huawei/hem/gk;

    .line 48
    invoke-virtual {v0}, Lcom/huawei/hem/dl;->b()Lcom/huawei/hem/fl;

    move-result-object p1

    .line 49
    iget-object p1, p1, Lcom/huawei/hem/fl;->f:Lcom/huawei/hem/xj;

    .line 50
    iput-object p1, v4, Lcom/huawei/hem/kk$a;->e:Lcom/huawei/hem/xj;

    .line 51
    iput-wide v1, v4, Lcom/huawei/hem/kk$a;->k:J

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 53
    iput-wide v1, v4, Lcom/huawei/hem/kk$a;->l:J

    .line 54
    invoke-virtual {v4}, Lcom/huawei/hem/kk$a;->b()Lcom/huawei/hem/kk;

    move-result-object v4

    .line 55
    iget v5, v4, Lcom/huawei/hem/kk;->c:I

    .line 56
    :cond_a
    iget-object p1, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz p1, :cond_15

    .line 57
    iget-boolean p1, p0, Lcom/huawei/hem/ml;->a:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x65

    if-ne v5, p1, :cond_b

    .line 58
    new-instance p1, Lcom/huawei/hem/kk$a;

    invoke-direct {p1, v4}, Lcom/huawei/hem/kk$a;-><init>(Lcom/huawei/hem/kk;)V

    .line 59
    sget-object v1, Lcom/huawei/hem/tk;->d:Lcom/huawei/hem/mk;

    .line 60
    iput-object v1, p1, Lcom/huawei/hem/kk$a;->g:Lcom/huawei/hem/mk;

    .line 61
    invoke-virtual {p1}, Lcom/huawei/hem/kk$a;->b()Lcom/huawei/hem/kk;

    move-result-object p1

    goto :goto_4

    .line 62
    :cond_b
    new-instance p1, Lcom/huawei/hem/kk$a;

    invoke-direct {p1, v4}, Lcom/huawei/hem/kk$a;-><init>(Lcom/huawei/hem/kk;)V

    .line 63
    :try_start_3
    iget-object v1, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v1, :cond_13

    const-string v1, "Content-Type"

    .line 64
    iget-object v2, v4, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    invoke-virtual {v2, v1}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    move-object v1, v3

    .line 65
    :goto_3
    iget-object v2, v0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v2, v4}, Lcom/huawei/hem/nl;->d(Lcom/huawei/hem/kk;)J

    move-result-wide v6

    .line 66
    iget-object v2, v0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v2, v4}, Lcom/huawei/hem/nl;->e(Lcom/huawei/hem/kk;)Lcom/huawei/hem/ao;

    move-result-object v2

    .line 67
    new-instance v4, Lcom/huawei/hem/dl$b;

    invoke-direct {v4, v0, v2, v6, v7}, Lcom/huawei/hem/dl$b;-><init>(Lcom/huawei/hem/dl;Lcom/huawei/hem/ao;J)V

    .line 68
    new-instance v2, Lcom/huawei/hem/rl;

    invoke-static {v4}, Lcom/huawei/hem/rn;->b(Lcom/huawei/hem/ao;)Lcom/huawei/hem/jn;

    move-result-object v4

    invoke-direct {v2, v1, v6, v7, v4}, Lcom/huawei/hem/rl;-><init>(Ljava/lang/String;JLcom/huawei/hem/jn;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 69
    iput-object v2, p1, Lcom/huawei/hem/kk$a;->g:Lcom/huawei/hem/mk;

    .line 70
    invoke-virtual {p1}, Lcom/huawei/hem/kk$a;->b()Lcom/huawei/hem/kk;

    move-result-object p1

    .line 71
    :goto_4
    iget-object v1, p1, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 72
    iget-object v1, v1, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "close"

    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 74
    iget-object v1, p1, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    invoke-virtual {v1, v2}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    move-object v3, v1

    .line 75
    :cond_d
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 76
    :cond_e
    iget-object v0, v0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v0}, Lcom/huawei/hem/nl;->h()Lcom/huawei/hem/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/fl;->i()V

    :cond_f
    const/16 v0, 0xcc

    if-eq v5, v0, :cond_10

    const/16 v0, 0xcd

    if-ne v5, v0, :cond_11

    .line 77
    :cond_10
    iget-object v0, p1, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    .line 78
    invoke-virtual {v0}, Lcom/huawei/hem/mk;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    :cond_11
    return-object p1

    .line 79
    :cond_12
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "HTTP "

    const-string v2, " had non-zero Content-Length: "

    invoke-static {v1, v5, v2}, Lcom/huawei/hem/f6;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    iget-object p1, p1, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    .line 81
    invoke-virtual {p1}, Lcom/huawei/hem/mk;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_13
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 83
    iget-object v1, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v1, :cond_14

    .line 84
    invoke-virtual {v0, p1}, Lcom/huawei/hem/dl;->e(Ljava/io/IOException;)V

    .line 85
    throw p1

    .line 86
    :cond_14
    throw v3

    .line 87
    :cond_15
    throw v3

    :catch_2
    move-exception p1

    .line 88
    iget-object v1, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v1, :cond_16

    .line 89
    invoke-virtual {v0, p1}, Lcom/huawei/hem/dl;->e(Ljava/io/IOException;)V

    .line 90
    throw p1

    .line 91
    :cond_16
    throw v3

    .line 92
    :cond_17
    :try_start_5
    throw v3

    .line 93
    :cond_18
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p1

    .line 94
    iget-object v1, v0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v1, :cond_19

    .line 95
    invoke-virtual {v0, p1}, Lcom/huawei/hem/dl;->e(Ljava/io/IOException;)V

    .line 96
    throw p1

    .line 97
    :cond_19
    throw v3

    .line 98
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
