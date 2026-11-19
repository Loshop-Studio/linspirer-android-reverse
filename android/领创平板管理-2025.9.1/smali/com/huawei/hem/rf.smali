.class public Lcom/huawei/hem/rf;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/huawei/hem/nf;

.field public final b:Lcom/huawei/hem/uf;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public e:Lcom/huawei/hem/tf;

.field public volatile f:Z

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(IILcom/huawei/hem/nf;Lcom/huawei/hem/uf;ZLjava/lang/String;Lcom/huawei/hem/rf$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hem/rf;->g:I

    .line 3
    iput p2, p0, Lcom/huawei/hem/rf;->h:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/huawei/hem/rf;->f:Z

    .line 5
    iput-object p4, p0, Lcom/huawei/hem/rf;->b:Lcom/huawei/hem/uf;

    .line 6
    iput-object p6, p0, Lcom/huawei/hem/rf;->c:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/huawei/hem/rf;->a:Lcom/huawei/hem/nf;

    .line 8
    iput-boolean p5, p0, Lcom/huawei/hem/rf;->d:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/pf;->b()Lcom/huawei/hem/if;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/huawei/hem/rf;->h:I

    if-ltz v1, :cond_1

    .line 4
    iget v1, p0, Lcom/huawei/hem/rf;->g:I

    invoke-interface {v0, v1}, Lcom/huawei/hem/if;->n(I)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hem/ng;

    .line 6
    iget v2, v1, Lcom/huawei/hem/ng;->b:I

    .line 7
    iget v3, p0, Lcom/huawei/hem/rf;->h:I

    if-ne v2, v3, :cond_0

    .line 8
    iget-wide v0, v1, Lcom/huawei/hem/ng;->d:J

    return-wide v0

    .line 9
    :cond_1
    iget v1, p0, Lcom/huawei/hem/rf;->g:I

    invoke-interface {v0, v1}, Lcom/huawei/hem/if;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hem/rf;->f:Z

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/rf;->e:Lcom/huawei/hem/tf;

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, v1, Lcom/huawei/hem/tf;->m:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 23

    move-object/from16 v11, p0

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object v0, v11, Lcom/huawei/hem/rf;->a:Lcom/huawei/hem/nf;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/nf;->d:Lcom/huawei/hem/of;

    .line 4
    iget-wide v0, v0, Lcom/huawei/hem/of;->b:J

    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v1, v0

    move v2, v12

    :cond_0
    :goto_0
    const/4 v13, 0x1

    .line 5
    :try_start_0
    iget-boolean v0, v11, Lcom/huawei/hem/rf;->f:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lcom/huawei/hem/zf; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 6
    check-cast v1, Lcom/huawei/hem/hf;

    invoke-virtual {v1}, Lcom/huawei/hem/hf;->a()V

    :cond_1
    return-void

    .line 7
    :cond_2
    :try_start_1
    iget-object v0, v11, Lcom/huawei/hem/rf;->a:Lcom/huawei/hem/nf;

    invoke-virtual {v0}, Lcom/huawei/hem/nf;->a()Lcom/huawei/hem/gf;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/huawei/hem/zf; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    move-object v0, v14

    check-cast v0, Lcom/huawei/hem/hf;

    :try_start_2
    invoke-virtual {v0}, Lcom/huawei/hem/hf;->b()I

    move-result v1

    const/16 v2, 0xce

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v11, Lcom/huawei/hem/rf;->a:Lcom/huawei/hem/nf;

    .line 10
    iget-object v5, v5, Lcom/huawei/hem/nf;->f:Ljava/util/Map;

    aput-object v5, v4, v12

    .line 11
    invoke-virtual {v0}, Lcom/huawei/hem/hf;->c()Ljava/util/Map;

    move-result-object v0

    aput-object v0, v4, v13

    const/4 v0, 0x2

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget v1, v11, Lcom/huawei/hem/rf;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    iget v1, v11, Lcom/huawei/hem/rf;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 13
    invoke-static {v3, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/huawei/hem/zf; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :cond_4
    :goto_1
    :try_start_3
    iget-boolean v1, v11, Lcom/huawei/hem/rf;->f:Z
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/huawei/hem/zf; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/huawei/hem/hf;->a()V

    return-void

    .line 16
    :cond_5
    :try_start_4
    iget v1, v11, Lcom/huawei/hem/rf;->g:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 18
    iget v2, v11, Lcom/huawei/hem/rf;->h:I

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 20
    iget-object v8, v11, Lcom/huawei/hem/rf;->b:Lcom/huawei/hem/uf;

    .line 21
    iget-boolean v3, v11, Lcom/huawei/hem/rf;->d:Z

    .line 22
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 23
    iget-object v4, v11, Lcom/huawei/hem/rf;->a:Lcom/huawei/hem/nf;

    .line 24
    iget-object v4, v4, Lcom/huawei/hem/nf;->d:Lcom/huawei/hem/of;

    .line 25
    iget-object v9, v11, Lcom/huawei/hem/rf;->c:Ljava/lang/String;

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 26
    new-instance v15, Lcom/huawei/hem/tf;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 28
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v10, 0x0

    move-object v1, v15

    move-object v2, v14

    move-object v3, v4

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v10}, Lcom/huawei/hem/tf;-><init>(Lcom/huawei/hem/gf;Lcom/huawei/hem/of;Lcom/huawei/hem/rf;IIZLcom/huawei/hem/uf;Ljava/lang/String;Lcom/huawei/hem/tf$a;)V

    .line 29
    iput-object v15, v11, Lcom/huawei/hem/rf;->e:Lcom/huawei/hem/tf;

    .line 30
    invoke-virtual {v15}, Lcom/huawei/hem/tf;->a()V

    .line 31
    iget-boolean v1, v11, Lcom/huawei/hem/rf;->f:Z

    if-eqz v1, :cond_6

    iget-object v1, v11, Lcom/huawei/hem/rf;->e:Lcom/huawei/hem/tf;

    .line 32
    iput-boolean v13, v1, Lcom/huawei/hem/tf;->m:Z
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/huawei/hem/zf; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    :cond_6
    invoke-virtual {v0}, Lcom/huawei/hem/hf;->a()V

    goto/16 :goto_9

    .line 34
    :cond_7
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/huawei/hem/zf; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    move v2, v13

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    :goto_3
    move v2, v12

    :goto_4
    move-object v1, v14

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    :goto_5
    move v2, v12

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_c
    move-exception v0

    goto :goto_6

    :catch_d
    move-exception v0

    goto :goto_6

    :catch_e
    move-exception v0

    goto :goto_6

    :catch_f
    move-exception v0

    .line 35
    :goto_6
    :try_start_6
    iget-object v3, v11, Lcom/huawei/hem/rf;->b:Lcom/huawei/hem/uf;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    check-cast v3, Lcom/huawei/hem/qf;

    :try_start_7
    invoke-virtual {v3, v0}, Lcom/huawei/hem/qf;->i(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v2, :cond_8

    .line 36
    iget-object v3, v11, Lcom/huawei/hem/rf;->e:Lcom/huawei/hem/tf;

    if-nez v3, :cond_8

    const-string v2, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v0, v3, v12

    .line 37
    invoke-static {v11, v2, v3}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v2, v11, Lcom/huawei/hem/rf;->b:Lcom/huawei/hem/uf;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    check-cast v2, Lcom/huawei/hem/qf;

    :try_start_8
    invoke-virtual {v2, v0}, Lcom/huawei/hem/qf;->j(Ljava/lang/Exception;)V

    if-eqz v1, :cond_c

    goto :goto_8

    .line 39
    :cond_8
    iget-object v3, v11, Lcom/huawei/hem/rf;->e:Lcom/huawei/hem/tf;

    if-eqz v3, :cond_a

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hem/rf;->a()J

    move-result-wide v16

    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-lez v3, :cond_a

    .line 41
    iget-object v3, v11, Lcom/huawei/hem/rf;->a:Lcom/huawei/hem/nf;

    .line 42
    iget-object v4, v3, Lcom/huawei/hem/nf;->d:Lcom/huawei/hem/of;

    iget-wide v5, v4, Lcom/huawei/hem/of;->b:J

    cmp-long v7, v16, v5

    if-nez v7, :cond_9

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, "no data download, no need to update"

    .line 43
    invoke-static {v3, v5, v4}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 44
    :cond_9
    iget-wide v7, v4, Lcom/huawei/hem/of;->d:J

    sub-long v5, v16, v5

    sub-long v20, v7, v5

    .line 45
    iget-wide v14, v4, Lcom/huawei/hem/of;->a:J

    iget-wide v4, v4, Lcom/huawei/hem/of;->c:J

    .line 46
    new-instance v6, Lcom/huawei/hem/of;

    const/16 v22, 0x0

    move-object v13, v6

    move-wide/from16 v18, v4

    invoke-direct/range {v13 .. v22}, Lcom/huawei/hem/of;-><init>(JJJJLcom/huawei/hem/of$a;)V

    .line 47
    iput-object v6, v3, Lcom/huawei/hem/nf;->d:Lcom/huawei/hem/of;

    .line 48
    :cond_a
    :goto_7
    iget-object v3, v11, Lcom/huawei/hem/rf;->b:Lcom/huawei/hem/uf;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    check-cast v3, Lcom/huawei/hem/qf;

    :try_start_9
    invoke-virtual {v3, v0}, Lcom/huawei/hem/qf;->l(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_0

    .line 49
    move-object v0, v1

    check-cast v0, Lcom/huawei/hem/hf;

    invoke-virtual {v0}, Lcom/huawei/hem/hf;->a()V

    goto/16 :goto_0

    .line 50
    :cond_b
    :try_start_a
    iget-object v2, v11, Lcom/huawei/hem/rf;->b:Lcom/huawei/hem/uf;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    check-cast v2, Lcom/huawei/hem/qf;

    :try_start_b
    invoke-virtual {v2, v0}, Lcom/huawei/hem/qf;->j(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v1, :cond_c

    .line 51
    :goto_8
    check-cast v1, Lcom/huawei/hem/hf;

    invoke-virtual {v1}, Lcom/huawei/hem/hf;->a()V

    :cond_c
    :goto_9
    return-void

    :goto_a
    move-object v14, v1

    :goto_b
    if-eqz v14, :cond_d

    check-cast v14, Lcom/huawei/hem/hf;

    invoke-virtual {v14}, Lcom/huawei/hem/hf;->a()V

    .line 52
    :cond_d
    throw v0
.end method
