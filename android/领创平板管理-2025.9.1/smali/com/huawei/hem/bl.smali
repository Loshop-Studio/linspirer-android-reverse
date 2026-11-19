.class public final Lcom/huawei/hem/bl;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lcom/huawei/hem/ak;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/dk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/ak$a;)Lcom/huawei/hem/kk;
    .locals 17

    move-object/from16 v0, p1

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/huawei/hem/ql;

    .line 2
    iget-object v2, v1, Lcom/huawei/hem/ql;->e:Lcom/huawei/hem/gk;

    .line 3
    iget-object v9, v1, Lcom/huawei/hem/ql;->b:Lcom/huawei/hem/kl;

    .line 4
    iget-object v3, v2, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    const-string v4, "GET"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v16, v3, 0x1

    .line 6
    iget-object v3, v9, Lcom/huawei/hem/kl;->b:Lcom/huawei/hem/gl;

    monitor-enter v3

    .line 7
    :try_start_0
    iget-boolean v4, v9, Lcom/huawei/hem/kl;->o:Z

    if-nez v4, :cond_2

    .line 8
    iget-object v4, v9, Lcom/huawei/hem/kl;->j:Lcom/huawei/hem/dl;

    if-nez v4, :cond_1

    .line 9
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v3, v9, Lcom/huawei/hem/kl;->h:Lcom/huawei/hem/el;

    iget-object v4, v9, Lcom/huawei/hem/kl;->a:Lcom/huawei/hem/dk;

    if-eqz v3, :cond_0

    .line 11
    iget v11, v1, Lcom/huawei/hem/ql;->g:I

    .line 12
    iget v12, v1, Lcom/huawei/hem/ql;->h:I

    .line 13
    iget v13, v1, Lcom/huawei/hem/ql;->i:I

    .line 14
    iget v14, v4, Lcom/huawei/hem/dk;->B:I

    .line 15
    iget-boolean v15, v4, Lcom/huawei/hem/dk;->w:Z

    move-object v10, v3

    .line 16
    :try_start_1
    invoke-virtual/range {v10 .. v16}, Lcom/huawei/hem/el;->b(IIIIZZ)Lcom/huawei/hem/fl;

    move-result-object v5

    .line 17
    invoke-virtual {v5, v4, v0}, Lcom/huawei/hem/fl;->h(Lcom/huawei/hem/dk;Lcom/huawei/hem/ak$a;)Lcom/huawei/hem/nl;

    move-result-object v8
    :try_end_1
    .catch Lcom/huawei/hem/il; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    new-instance v0, Lcom/huawei/hem/dl;

    iget-object v5, v9, Lcom/huawei/hem/kl;->c:Lcom/huawei/hem/kj;

    iget-object v6, v9, Lcom/huawei/hem/kl;->d:Lcom/huawei/hem/vj;

    iget-object v7, v9, Lcom/huawei/hem/kl;->h:Lcom/huawei/hem/el;

    move-object v3, v0

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/huawei/hem/dl;-><init>(Lcom/huawei/hem/kl;Lcom/huawei/hem/kj;Lcom/huawei/hem/vj;Lcom/huawei/hem/el;Lcom/huawei/hem/nl;)V

    .line 19
    iget-object v4, v9, Lcom/huawei/hem/kl;->b:Lcom/huawei/hem/gl;

    monitor-enter v4

    .line 20
    :try_start_2
    iput-object v0, v9, Lcom/huawei/hem/kl;->j:Lcom/huawei/hem/dl;

    const/4 v3, 0x0

    .line 21
    iput-boolean v3, v9, Lcom/huawei/hem/kl;->k:Z

    .line 22
    iput-boolean v3, v9, Lcom/huawei/hem/kl;->l:Z

    .line 23
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    invoke-virtual {v1, v2, v9, v0}, Lcom/huawei/hem/ql;->b(Lcom/huawei/hem/gk;Lcom/huawei/hem/kl;Lcom/huawei/hem/dl;)Lcom/huawei/hem/kk;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 25
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v3}, Lcom/huawei/hem/el;->e()V

    .line 27
    new-instance v1, Lcom/huawei/hem/il;

    invoke-direct {v1, v0}, Lcom/huawei/hem/il;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_1
    move-exception v0

    .line 28
    invoke-virtual {v3}, Lcom/huawei/hem/el;->e()V

    .line 29
    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 30
    throw v0

    .line 31
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot make a new request because the previous response is still open: please call response.close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 33
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
