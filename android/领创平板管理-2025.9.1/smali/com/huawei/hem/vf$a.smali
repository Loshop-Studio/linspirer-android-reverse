.class public Lcom/huawei/hem/vf$a;
.super Ljava/lang/Object;
.source "DownloadEventPoolImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/vf;->a(Lcom/huawei/hem/xf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/xf;

.field public final synthetic b:Lcom/huawei/hem/vf;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/vf;Lcom/huawei/hem/xf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/vf$a;->b:Lcom/huawei/hem/vf;

    iput-object p2, p0, Lcom/huawei/hem/vf$a;->a:Lcom/huawei/hem/xf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vf$a;->b:Lcom/huawei/hem/vf;

    iget-object v1, p0, Lcom/huawei/hem/vf$a;->a:Lcom/huawei/hem/xf;

    if-eqz v0, :cond_12

    if-eqz v1, :cond_11

    .line 2
    iget-object v2, v1, Lcom/huawei/hem/xf;->b:Ljava/lang/String;

    .line 3
    iget-object v3, v0, Lcom/huawei/hem/vf;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    monitor-enter v5

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/huawei/hem/vf;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 6
    monitor-exit v5

    goto/16 :goto_9

    .line 7
    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 9
    array-length v2, v0

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_f

    aget-object v5, v0, v3

    if-nez v5, :cond_2

    goto/16 :goto_8

    .line 10
    :cond_2
    check-cast v5, Lcom/huawei/hem/yf;

    check-cast v5, Lcom/huawei/hem/je;

    .line 11
    instance-of v6, v1, Lcom/huawei/hem/wf;

    if-eqz v6, :cond_e

    .line 12
    move-object v6, v1

    check-cast v6, Lcom/huawei/hem/wf;

    .line 13
    iget-object v6, v6, Lcom/huawei/hem/wf;->c:Lcom/huawei/hem/wf$a;

    .line 14
    iput-object v6, v5, Lcom/huawei/hem/je;->a:Lcom/huawei/hem/wf$a;

    .line 15
    sget-object v7, Lcom/huawei/hem/wf$a;->connected:Lcom/huawei/hem/wf$a;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_8

    .line 16
    check-cast v5, Lcom/huawei/hem/bf;

    .line 17
    sget-object v6, Lcom/huawei/hem/ue$a;->a:Lcom/huawei/hem/ue;

    .line 18
    invoke-virtual {v6}, Lcom/huawei/hem/ue;->d()Lcom/huawei/hem/ye;

    move-result-object v6

    .line 19
    iget-object v7, v5, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    monitor-enter v7

    .line 20
    :try_start_1
    iget-object v9, v5, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 21
    iget-object v5, v5, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    .line 23
    move-object v10, v6

    check-cast v10, Lcom/huawei/hem/ef;

    .line 24
    iget-object v10, v10, Lcom/huawei/hem/ef;->a:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 25
    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huawei/hem/fe$a;

    .line 27
    invoke-interface {v10}, Lcom/huawei/hem/fe$a;->k()I

    move-result v11

    .line 28
    move-object v12, v6

    check-cast v12, Lcom/huawei/hem/ef;

    .line 29
    iget-object v12, v12, Lcom/huawei/hem/ef;->a:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    move v12, v8

    goto :goto_3

    :cond_4
    move v12, v4

    :goto_3
    if-eqz v12, :cond_5

    .line 30
    invoke-interface {v10}, Lcom/huawei/hem/fe$a;->t()Lcom/huawei/hem/fe;

    move-result-object v10

    invoke-interface {v10}, Lcom/huawei/hem/fe;->m()Lcom/huawei/hem/fe$b;

    move-result-object v10

    check-cast v10, Lcom/huawei/hem/he$b;

    .line 31
    iget-object v12, v10, Lcom/huawei/hem/he$b;->a:Lcom/huawei/hem/he;

    invoke-virtual {v12}, Lcom/huawei/hem/he;->getId()I

    .line 32
    sget-object v12, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 33
    iget-object v10, v10, Lcom/huawei/hem/he$b;->a:Lcom/huawei/hem/he;

    invoke-virtual {v12, v10}, Lcom/huawei/hem/me;->b(Lcom/huawei/hem/fe$a;)V

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 35
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 36
    :cond_5
    invoke-interface {v10}, Lcom/huawei/hem/fe$a;->h()V

    goto :goto_2

    .line 37
    :cond_6
    check-cast v6, Lcom/huawei/hem/ef;

    .line 38
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 39
    iget-object v9, v6, Lcom/huawei/hem/ef;->a:Landroid/util/SparseArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Handler;

    const/4 v9, 0x3

    .line 40
    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 41
    :cond_7
    monitor-exit v7

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 42
    :cond_8
    check-cast v5, Lcom/huawei/hem/bf;

    .line 43
    iget-object v6, v5, Lcom/huawei/hem/je;->a:Lcom/huawei/hem/wf$a;

    .line 44
    sget-object v7, Lcom/huawei/hem/wf$a;->lost:Lcom/huawei/hem/wf$a;

    if-ne v6, v7, :cond_d

    .line 45
    sget-object v6, Lcom/huawei/hem/ue$a;->a:Lcom/huawei/hem/ue;

    .line 46
    invoke-virtual {v6}, Lcom/huawei/hem/ue;->d()Lcom/huawei/hem/ye;

    move-result-object v6

    .line 47
    sget-object v7, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 48
    invoke-virtual {v7}, Lcom/huawei/hem/me;->g()I

    move-result v7

    if-lez v7, :cond_e

    .line 49
    iget-object v7, v5, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    monitor-enter v7

    .line 50
    :try_start_2
    sget-object v8, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 51
    iget-object v9, v5, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    .line 52
    iget-object v10, v8, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 53
    :try_start_3
    iget-object v11, v8, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/hem/fe$a;

    .line 54
    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 55
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 56
    :cond_a
    iget-object v8, v8, Lcom/huawei/hem/me;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 57
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 58
    :try_start_4
    iget-object v8, v5, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hem/fe$a;

    .line 59
    invoke-interface {v9}, Lcom/huawei/hem/fe$a;->e()V

    goto :goto_6

    .line 60
    :cond_b
    check-cast v6, Lcom/huawei/hem/ef;

    move v8, v4

    .line 61
    :goto_7
    iget-object v9, v6, Lcom/huawei/hem/ef;->a:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 62
    iget-object v9, v6, Lcom/huawei/hem/ef;->a:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 63
    iget-object v10, v6, Lcom/huawei/hem/ef;->a:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Handler;

    const/4 v10, 0x2

    .line 64
    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 65
    :cond_c
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 66
    :try_start_5
    sget-object v6, Lcom/huawei/hem/ue$a;->a:Lcom/huawei/hem/ue;

    .line 67
    invoke-virtual {v6}, Lcom/huawei/hem/ue;->e()Z

    move-result v6

    if-nez v6, :cond_e

    .line 68
    sget-object v6, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 69
    sget-object v7, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 70
    iget-object v6, v6, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v6, v7}, Lcom/huawei/hem/we;->p(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    :catch_0
    const-string v6, "restart service failed, you may need to restart downloading manually when the app comes back to foreground"

    new-array v7, v4, [Ljava/lang/Object;

    .line 71
    invoke-static {v5, v6, v7}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    .line 72
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    :catchall_3
    move-exception v0

    .line 73
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 74
    :cond_d
    sget-object v6, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 75
    invoke-virtual {v6}, Lcom/huawei/hem/me;->g()I

    move-result v6

    if-lez v6, :cond_e

    const-string v6, "file download service has be unbound but the size of active tasks are not empty %d "

    new-array v7, v8, [Ljava/lang/Object;

    .line 76
    sget-object v8, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 77
    invoke-virtual {v8}, Lcom/huawei/hem/me;->g()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 78
    invoke-static {v5, v6, v7}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 79
    :cond_f
    iget-object v0, v1, Lcom/huawei/hem/xf;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 80
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_10
    :goto_9
    return-void

    .line 81
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    .line 82
    throw v0
.end method
