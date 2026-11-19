.class public Lcom/huawei/hem/te$c;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/te;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/ze$b;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ze$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/te$c;->a:Lcom/huawei/hem/ze$b;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/huawei/hem/te$c;->b:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/te$c;->a:Lcom/huawei/hem/ze$b;

    if-ne p1, v0, :cond_0

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

.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/huawei/hem/te$c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Lcom/huawei/hem/te$c;->a:Lcom/huawei/hem/ze$b;

    move-object v2, v0

    check-cast v2, Lcom/huawei/hem/ie;

    .line 3
    iget-byte v0, v2, Lcom/huawei/hem/ie;->d:B

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v4, :cond_1

    const-string v0, "High concurrent cause, this task %d will not start, because the of status isn\'t toLaunchPool: %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v2}, Lcom/huawei/hem/ie;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-byte v4, v2, Lcom/huawei/hem/ie;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    .line 5
    invoke-static {v2, v0, v3}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v0, v2, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    move-object v7, v0

    check-cast v7, Lcom/huawei/hem/he;

    const/4 v0, 0x0

    if-eqz v7, :cond_a

    .line 7
    invoke-static {}, Lcom/huawei/hem/ue;->b()Lcom/huawei/hem/ue;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Lcom/huawei/hem/ue;->c()Lcom/huawei/hem/xe;

    move-result-object v8

    .line 9
    check-cast v8, Lcom/huawei/hem/bf;

    :try_start_0
    invoke-virtual {v8, v7}, Lcom/huawei/hem/bf;->a(Lcom/huawei/hem/fe$a;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object v9, v2, Lcom/huawei/hem/ie;->b:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-byte v10, v2, Lcom/huawei/hem/ie;->d:B

    if-eq v10, v4, :cond_3

    const-string v0, "High concurrent cause, this task %d will not start, the status can\'t assign to toFileDownloadService, because the status isn\'t toLaunchPool: %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v2}, Lcom/huawei/hem/ie;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-byte v4, v2, Lcom/huawei/hem/ie;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    .line 13
    invoke-static {v2, v0, v3}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    monitor-exit v9

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xb

    .line 15
    iput-byte v3, v2, Lcom/huawei/hem/ie;->d:B

    .line 16
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    sget-object v3, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 18
    invoke-virtual {v3, v7}, Lcom/huawei/hem/me;->a(Lcom/huawei/hem/fe$a;)V

    .line 19
    invoke-virtual {v7}, Lcom/huawei/hem/he;->getId()I

    move-result v3

    .line 20
    iget-object v4, v7, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    .line 21
    iget-boolean v9, v7, Lcom/huawei/hem/he;->g:Z

    .line 22
    iget-object v10, v7, Lcom/huawei/hem/he;->f:Ljava/lang/String;

    .line 23
    invoke-static {v4, v9, v10}, Lcom/huawei/hem/hh;->k(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    iget-boolean v9, v7, Lcom/huawei/hem/he;->n:Z

    .line 25
    invoke-static {v3, v4, v9, v6}, Lcom/huawei/hem/of$b;->b(ILjava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 26
    :cond_4
    sget-object v9, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 27
    iget-object v10, v7, Lcom/huawei/hem/he;->d:Ljava/lang/String;

    .line 28
    iget-object v11, v7, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    .line 29
    iget-boolean v12, v7, Lcom/huawei/hem/he;->g:Z

    .line 30
    iget v13, v7, Lcom/huawei/hem/he;->l:I

    .line 31
    iget v14, v7, Lcom/huawei/hem/he;->m:I

    .line 32
    iget v15, v7, Lcom/huawei/hem/he;->i:I

    .line 33
    iget-boolean v3, v7, Lcom/huawei/hem/he;->n:Z

    .line 34
    iget-object v4, v2, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    .line 35
    check-cast v4, Lcom/huawei/hem/he;

    if-eqz v4, :cond_8

    const/16 v17, 0x0

    .line 36
    iget-boolean v0, v7, Lcom/huawei/hem/he;->k:Z

    move/from16 v16, v3

    move/from16 v18, v0

    .line 37
    invoke-virtual/range {v9 .. v18}, Lcom/huawei/hem/qe;->d(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v0

    .line 38
    iget-byte v3, v2, Lcom/huawei/hem/ie;->d:B

    const/4 v4, -0x2

    if-ne v3, v4, :cond_5

    const-string v3, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"

    new-array v4, v6, [Ljava/lang/Object;

    .line 39
    invoke-virtual {v2}, Lcom/huawei/hem/ie;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 40
    invoke-static {v2, v3, v4}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    .line 41
    sget-object v0, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 42
    invoke-virtual {v2}, Lcom/huawei/hem/ie;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/huawei/hem/qe;->n(I)Z

    goto :goto_0

    :cond_5
    if-nez v0, :cond_7

    .line 43
    invoke-virtual {v8, v7}, Lcom/huawei/hem/bf;->a(Lcom/huawei/hem/fe$a;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/huawei/hem/ie;->e(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    .line 45
    sget-object v3, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 46
    invoke-virtual {v3, v7}, Lcom/huawei/hem/me;->e(Lcom/huawei/hem/fe$a;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 47
    invoke-virtual {v8, v7}, Lcom/huawei/hem/bf;->b(Lcom/huawei/hem/fe$a;)V

    .line 48
    sget-object v3, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 49
    invoke-virtual {v3, v7}, Lcom/huawei/hem/me;->a(Lcom/huawei/hem/fe$a;)V

    .line 50
    :cond_6
    sget-object v3, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 51
    invoke-virtual {v3, v7, v0}, Lcom/huawei/hem/me;->f(Lcom/huawei/hem/fe$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto :goto_0

    .line 52
    :cond_7
    invoke-virtual {v8, v7}, Lcom/huawei/hem/bf;->b(Lcom/huawei/hem/fe$a;)V

    goto :goto_0

    .line 53
    :cond_8
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_0
    move-exception v0

    .line 54
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    sget-object v3, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 57
    invoke-virtual {v2, v0}, Lcom/huawei/hem/ie;->e(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/huawei/hem/me;->f(Lcom/huawei/hem/fe$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    :cond_9
    :goto_0
    return-void

    .line 58
    :cond_a
    throw v0
.end method
