.class public Lcom/huawei/hem/cf;
.super Ljava/lang/Object;
.source "MessageSnapshotGate.java"

# interfaces
.implements Lcom/huawei/hem/jg$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public J(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 5
    iget v2, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/huawei/hem/me;->d(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/fe$a;

    invoke-interface {v3}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    .line 9
    invoke-virtual {p0, v1, p1}, Lcom/huawei/hem/cf;->a(Ljava/util/List;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The event isn\'t consumed, id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v5, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 12
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p1}, Lcom/huawei/hem/ig;->a()B

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " task-count:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/fe$a;

    const-string v3, " | "

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/hem/fe;->a()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/fh;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v1, "Receive the event %d, but there isn\'t any running task in the upper layer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    invoke-interface {p1}, Lcom/huawei/hem/ig;->a()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v4

    .line 18
    invoke-static {p0, v1, v2}, Lcom/huawei/hem/fh;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2
.end method

.method public final a(Ljava/util/List;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hem/fe$a;",
            ">;",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x3

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-le v2, v7, :cond_5

    invoke-interface/range {p2 .. p2}, Lcom/huawei/hem/ig;->a()B

    move-result v2

    if-ne v2, v4, :cond_5

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hem/fe$a;

    .line 3
    invoke-interface {v8}, Lcom/huawei/hem/fe$a;->n()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 4
    :try_start_0
    invoke-interface {v8}, Lcom/huawei/hem/fe$a;->o()Lcom/huawei/hem/ze$a;

    move-result-object v8

    check-cast v8, Lcom/huawei/hem/ie;

    .line 5
    iget-object v10, v8, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v10, Lcom/huawei/hem/he;

    if-eqz v10, :cond_4

    .line 6
    invoke-virtual {v10}, Lcom/huawei/hem/he;->a()B

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lcom/huawei/hem/he;->a()B

    move-result v10

    if-ne v10, v6, :cond_0

    goto :goto_1

    :cond_0
    move v10, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v10, v7

    :goto_2
    if-nez v10, :cond_2

    move v8, v5

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {v8, v0}, Lcom/huawei/hem/ie;->f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    move v8, v7

    :goto_3
    if-eqz v8, :cond_3

    const-string v0, "updateMoreLikelyCompleted"

    new-array v2, v5, [Ljava/lang/Object;

    .line 8
    invoke-static {v1, v0, v2}, Lcom/huawei/hem/fh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    monitor-exit v9

    return v7

    .line 10
    :cond_3
    monitor-exit v9

    goto :goto_0

    .line 11
    :cond_4
    throw v3

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 13
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0xb

    const/4 v10, 0x6

    const/16 v11, 0xa

    const/4 v12, 0x5

    const/4 v13, 0x2

    const/4 v14, -0x4

    if-eqz v8, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hem/fe$a;

    .line 14
    invoke-interface {v8}, Lcom/huawei/hem/fe$a;->n()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 15
    :try_start_1
    invoke-interface {v8}, Lcom/huawei/hem/fe$a;->o()Lcom/huawei/hem/ze$a;

    move-result-object v8

    check-cast v8, Lcom/huawei/hem/ie;

    .line 16
    iget-byte v3, v8, Lcom/huawei/hem/ie;->d:B

    .line 17
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hem/ig;->a()B

    move-result v5

    const/4 v4, -0x2

    if-ne v4, v3, :cond_6

    .line 18
    invoke-static {v5}, Lcom/huawei/hem/of$b;->d(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move v4, v7

    const/4 v3, -0x3

    goto/16 :goto_a

    :cond_6
    if-eq v3, v6, :cond_7

    if-eq v3, v12, :cond_7

    if-ne v3, v5, :cond_7

    goto :goto_5

    .line 19
    :cond_7
    invoke-static {v3}, Lcom/huawei/hem/of$b;->e(I)Z

    move-result v16

    if-eqz v16, :cond_8

    goto :goto_5

    :cond_8
    if-ne v5, v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, -0x1

    if-ne v5, v4, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_11

    if-eq v3, v7, :cond_10

    if-eq v3, v13, :cond_f

    if-eq v3, v6, :cond_f

    if-eq v3, v12, :cond_d

    if-eq v3, v10, :cond_d

    if-eq v3, v11, :cond_c

    if-eq v3, v9, :cond_b

    goto :goto_5

    :cond_b
    if-eq v5, v14, :cond_e

    const/4 v3, -0x3

    if-eq v5, v3, :cond_12

    if-eq v5, v7, :cond_e

    goto :goto_5

    :cond_c
    if-eq v5, v9, :cond_e

    goto :goto_5

    :cond_d
    if-eq v5, v13, :cond_e

    if-eq v5, v12, :cond_e

    :goto_5
    const/4 v3, -0x3

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v3, -0x3

    goto :goto_8

    :cond_f
    const/4 v3, -0x3

    if-eq v5, v3, :cond_12

    if-eq v5, v6, :cond_12

    if-eq v5, v12, :cond_12

    goto :goto_7

    :cond_10
    const/4 v3, -0x3

    if-eq v5, v10, :cond_12

    goto :goto_7

    :cond_11
    const/4 v3, -0x3

    if-eq v5, v11, :cond_12

    :goto_7
    const/4 v4, 0x0

    goto :goto_9

    :cond_12
    :goto_8
    move v4, v7

    :goto_9
    if-nez v4, :cond_13

    const/4 v4, 0x0

    goto :goto_a

    .line 20
    :cond_13
    invoke-virtual {v8, v0}, Lcom/huawei/hem/ie;->f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    move v4, v7

    :goto_a
    if-eqz v4, :cond_14

    const-string v0, "updateKeepFlow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v1, v0, v2}, Lcom/huawei/hem/fh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    monitor-exit v15

    return v7

    .line 23
    :cond_14
    monitor-exit v15

    move v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 24
    :cond_15
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hem/ig;->a()B

    move-result v2

    if-ne v14, v2, :cond_1b

    .line 25
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/fe$a;

    .line 26
    invoke-interface {v3}, Lcom/huawei/hem/fe$a;->n()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 27
    :try_start_2
    invoke-interface {v3}, Lcom/huawei/hem/fe$a;->o()Lcom/huawei/hem/ze$a;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/ie;

    .line 28
    iget-object v5, v3, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v5, Lcom/huawei/hem/he;

    if-eqz v5, :cond_1a

    .line 29
    iget-boolean v5, v5, Lcom/huawei/hem/he;->g:Z

    if-nez v5, :cond_16

    goto :goto_c

    .line 30
    :cond_16
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hem/ig;->a()B

    move-result v5

    if-ne v5, v14, :cond_18

    .line 31
    iget-byte v5, v3, Lcom/huawei/hem/ie;->d:B

    if-eq v5, v13, :cond_17

    goto :goto_c

    .line 32
    :cond_17
    invoke-virtual {v3, v0}, Lcom/huawei/hem/ie;->f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    move v3, v7

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_19

    const-string v0, "updateSampleFilePathTaskRunning"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    invoke-static {v1, v0, v2}, Lcom/huawei/hem/fh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    monitor-exit v4

    return v7

    .line 35
    :cond_19
    monitor-exit v4

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    .line 36
    throw v0

    :catchall_2
    move-exception v0

    .line 37
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 38
    :cond_1b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v7, :cond_26

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 39
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/fe$a;

    .line 40
    invoke-interface {v2}, Lcom/huawei/hem/fe$a;->n()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    const-string v5, "updateKeepAhead"

    new-array v8, v3, [Ljava/lang/Object;

    .line 41
    invoke-static {v1, v5, v8}, Lcom/huawei/hem/fh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-interface {v2}, Lcom/huawei/hem/fe$a;->o()Lcom/huawei/hem/ze$a;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/ie;

    .line 43
    iget-byte v3, v2, Lcom/huawei/hem/ie;->d:B

    .line 44
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hem/ig;->a()B

    move-result v5

    if-eq v3, v6, :cond_1c

    if-eq v3, v12, :cond_1c

    if-ne v3, v5, :cond_1c

    goto :goto_f

    .line 45
    :cond_1c
    invoke-static {v3}, Lcom/huawei/hem/of$b;->e(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    goto :goto_f

    :cond_1d
    if-lt v3, v7, :cond_1e

    if-gt v3, v10, :cond_1e

    if-lt v5, v11, :cond_1e

    if-gt v5, v9, :cond_1e

    goto :goto_f

    :cond_1e
    if-eq v3, v7, :cond_23

    if-eq v3, v13, :cond_22

    if-eq v3, v6, :cond_21

    if-eq v3, v12, :cond_20

    if-eq v3, v10, :cond_1f

    goto :goto_e

    :cond_1f
    if-eqz v5, :cond_24

    if-eq v5, v7, :cond_24

    goto :goto_e

    :cond_20
    if-eq v5, v7, :cond_24

    if-eq v5, v10, :cond_24

    goto :goto_e

    :cond_21
    if-eqz v5, :cond_24

    if-eq v5, v7, :cond_24

    if-eq v5, v13, :cond_24

    if-eq v5, v10, :cond_24

    goto :goto_e

    :cond_22
    if-eqz v5, :cond_24

    if-eq v5, v7, :cond_24

    if-eq v5, v10, :cond_24

    goto :goto_e

    :cond_23
    if-eqz v5, :cond_24

    :goto_e
    move v3, v7

    goto :goto_10

    :cond_24
    :goto_f
    const/4 v3, 0x0

    :goto_10
    if-nez v3, :cond_25

    const/4 v5, 0x0

    goto :goto_11

    .line 46
    :cond_25
    invoke-virtual {v2, v0}, Lcom/huawei/hem/ie;->f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    move v5, v7

    .line 47
    :goto_11
    monitor-exit v4

    return v5

    :catchall_3
    move-exception v0

    .line 48
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method
