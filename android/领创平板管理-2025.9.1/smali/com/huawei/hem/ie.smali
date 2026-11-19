.class public Lcom/huawei/hem/ie;
.super Ljava/lang/Object;
.source "DownloadTaskHunter.java"

# interfaces
.implements Lcom/huawei/hem/ze;
.implements Lcom/huawei/hem/ze$b;
.implements Lcom/huawei/hem/ze$a;
.implements Lcom/huawei/hem/fe$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/ie$a;
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/ve;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/huawei/hem/ie$a;

.field public volatile d:B

.field public e:Ljava/lang/Throwable;

.field public final f:Lcom/huawei/hem/ge;

.field public g:J

.field public h:J

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ie$a;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/huawei/hem/ie;->d:B

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/ie;->e:Ljava/lang/Throwable;

    .line 4
    iput-object p2, p0, Lcom/huawei/hem/ie;->b:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    .line 6
    new-instance p2, Lcom/huawei/hem/ge;

    invoke-direct {p2}, Lcom/huawei/hem/ge;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/huawei/hem/ie;->f:Lcom/huawei/hem/ge;

    .line 8
    new-instance p2, Lcom/huawei/hem/pe;

    check-cast p1, Lcom/huawei/hem/he;

    invoke-direct {p2, p1, p0}, Lcom/huawei/hem/pe;-><init>(Lcom/huawei/hem/fe$a;Lcom/huawei/hem/fe$c;)V

    iput-object p2, p0, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v0, Lcom/huawei/hem/he;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hem/he;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v0, Lcom/huawei/hem/he;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/ie;->f:Lcom/huawei/hem/ge;

    iget-wide v2, p0, Lcom/huawei/hem/ie;->g:J

    .line 3
    iget-wide v4, v0, Lcom/huawei/hem/ge;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v4, v0, Lcom/huawei/hem/ge;->c:J

    sub-long/2addr v2, v4

    .line 5
    iput-wide v6, v0, Lcom/huawei/hem/ge;->a:J

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v8, v0, Lcom/huawei/hem/ge;->d:J

    sub-long/2addr v4, v8

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    long-to-int v2, v2

    .line 7
    iput v2, v0, Lcom/huawei/hem/ge;->e:I

    goto :goto_0

    .line 8
    :cond_1
    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Lcom/huawei/hem/ge;->e:I

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v0, Lcom/huawei/hem/he;

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/huawei/hem/ue;->b()Lcom/huawei/hem/ue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/ue;->c()Lcom/huawei/hem/xe;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v2, Lcom/huawei/hem/he;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/huawei/hem/bf;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/bf;->b(Lcom/huawei/hem/fe$a;)V

    return-void

    .line 11
    :cond_2
    throw v1

    .line 12
    :cond_3
    throw v1

    .line 13
    :cond_4
    throw v1
.end method

.method public c()Z
    .locals 9

    .line 1
    iget-byte v0, p0, Lcom/huawei/hem/ie;->d:B

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/of$b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x2

    .line 3
    iput-byte v0, p0, Lcom/huawei/hem/ie;->d:B

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v0, Lcom/huawei/hem/he;

    if-eqz v0, :cond_3

    .line 5
    sget-object v1, Lcom/huawei/hem/te$a;->a:Lcom/huawei/hem/te;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, v1, Lcom/huawei/hem/te;->a:Lcom/huawei/hem/te$b;

    .line 8
    iget-object v2, v2, Lcom/huawei/hem/te$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v1

    .line 10
    invoke-static {}, Lcom/huawei/hem/ue;->b()Lcom/huawei/hem/ue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hem/ue;->e()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 12
    invoke-virtual {v0}, Lcom/huawei/hem/he;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hem/qe;->n(I)Z

    .line 13
    :goto_0
    sget-object v1, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 14
    invoke-virtual {v1, v0}, Lcom/huawei/hem/me;->a(Lcom/huawei/hem/fe$a;)V

    .line 15
    sget-object v1, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 16
    invoke-virtual {v0}, Lcom/huawei/hem/he;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;

    invoke-virtual {v0}, Lcom/huawei/hem/he;->getId()I

    move-result v4

    .line 18
    invoke-virtual {v0}, Lcom/huawei/hem/he;->q()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/huawei/hem/he;->f()J

    move-result-wide v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;-><init>(IJJ)V

    goto :goto_1

    .line 19
    :cond_2
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;

    invoke-virtual {v0}, Lcom/huawei/hem/he;->getId()I

    move-result v3

    .line 20
    invoke-virtual {v0}, Lcom/huawei/hem/he;->d()I

    move-result v4

    invoke-virtual {v0}, Lcom/huawei/hem/he;->c()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;-><init>(III)V

    .line 21
    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/huawei/hem/me;->f(Lcom/huawei/hem/fe$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 22
    sget-object v1, Lcom/huawei/hem/ue$a;->a:Lcom/huawei/hem/ue;

    .line 23
    invoke-virtual {v1}, Lcom/huawei/hem/ue;->c()Lcom/huawei/hem/xe;

    move-result-object v1

    check-cast v1, Lcom/huawei/hem/bf;

    invoke-virtual {v1, v0}, Lcom/huawei/hem/bf;->b(Lcom/huawei/hem/fe$a;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 24
    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 25
    throw v0
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v0, Lcom/huawei/hem/he;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/he;->d:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/hh;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/he;->z(Ljava/lang/String;Z)Lcom/huawei/hem/fe;

    .line 6
    :cond_0
    iget-boolean v1, v0, Lcom/huawei/hem/he;->g:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    .line 9
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, v0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    .line 11
    invoke-static {v1}, Lcom/huawei/hem/hh;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 13
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Create parent directory failed, please make sure you have permission to create file or directory on the path: %s"

    .line 17
    invoke-static {v1, v3}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    .line 18
    :cond_4
    new-instance v1, Ljava/security/InvalidParameterException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    iget-object v0, v0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    aput-object v0, v3, v2

    const-string v0, "the provided mPath[%s] is invalid, can\'t find its directory"

    .line 20
    invoke-static {v0, v3}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v0, 0x0

    .line 21
    throw v0
.end method

.method public e(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 5

    const/4 v0, -0x1

    .line 1
    iput-byte v0, p0, Lcom/huawei/hem/ie;->d:B

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/ie;->e:Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/ie;->a()I

    move-result v0

    .line 4
    iget-wide v1, p0, Lcom/huawei/hem/ie;->g:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 5
    new-instance v3, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v3, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    long-to-int v1, v1

    invoke-direct {v3, v0, v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    :goto_0
    return-object v3
.end method

.method public final f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v0, Lcom/huawei/hem/he;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 2
    invoke-interface {p1}, Lcom/huawei/hem/ig;->a()B

    move-result v2

    .line 3
    iput-byte v2, p0, Lcom/huawei/hem/ie;->d:B

    .line 4
    iget-boolean v3, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b:Z

    .line 5
    iput-boolean v3, p0, Lcom/huawei/hem/ie;->j:Z

    const/4 v3, -0x4

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_11

    const/4 v3, -0x3

    if-eq v2, v3, :cond_f

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-eq v2, v8, :cond_c

    if-eq v2, v6, :cond_8

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    const/4 v0, 0x6

    if-eq v2, v0, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ve;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hem/ie;->g:J

    .line 8
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/ie;->e:Ljava/lang/Throwable;

    .line 9
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()I

    move-result v0

    iput v0, p0, Lcom/huawei/hem/ie;->i:I

    .line 10
    iget-object v0, p0, Lcom/huawei/hem/ie;->f:Lcom/huawei/hem/ge;

    .line 11
    iput v7, v0, Lcom/huawei/hem/ge;->e:I

    .line 12
    iput-wide v4, v0, Lcom/huawei/hem/ge;->a:J

    .line 13
    iget-object v0, p0, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ve;->i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hem/ie;->g:J

    .line 15
    iget-object v0, p0, Lcom/huawei/hem/ie;->f:Lcom/huawei/hem/ge;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v1

    .line 16
    iget v3, v0, Lcom/huawei/hem/ge;->f:I

    if-gtz v3, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    iget-wide v9, v0, Lcom/huawei/hem/ge;->a:J

    cmp-long v3, v9, v4

    if-nez v3, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/huawei/hem/ge;->a:J

    sub-long/2addr v9, v11

    .line 19
    iget v3, v0, Lcom/huawei/hem/ge;->f:I

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-gez v3, :cond_5

    iget v3, v0, Lcom/huawei/hem/ge;->e:I

    if-nez v3, :cond_6

    cmp-long v3, v9, v4

    if-lez v3, :cond_6

    .line 20
    :cond_5
    iget-wide v3, v0, Lcom/huawei/hem/ge;->b:J

    sub-long v3, v1, v3

    div-long/2addr v3, v9

    long-to-int v3, v3

    iput v3, v0, Lcom/huawei/hem/ge;->e:I

    .line 21
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/huawei/hem/ge;->e:I

    :goto_0
    move v7, v8

    :cond_6
    if-eqz v7, :cond_7

    .line 22
    iput-wide v1, v0, Lcom/huawei/hem/ge;->b:J

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/huawei/hem/ge;->a:J

    .line 24
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ve;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/hem/ie;->h:J

    .line 26
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->l()Z

    .line 27
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 29
    iget-object v0, v0, Lcom/huawei/hem/he;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    aput-object v2, v3, v8

    const-string v0, "already has mFilename[%s], but assign mFilename[%s] again"

    .line 30
    invoke-static {p0, v0, v3}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_9
    iget-object v0, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v0, Lcom/huawei/hem/he;

    .line 32
    iput-object v2, v0, Lcom/huawei/hem/he;->f:Ljava/lang/String;

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/huawei/hem/ie;->f:Lcom/huawei/hem/ge;

    iget-wide v2, p0, Lcom/huawei/hem/ie;->g:J

    if-eqz v0, :cond_b

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/huawei/hem/ge;->d:J

    .line 35
    iput-wide v2, v0, Lcom/huawei/hem/ge;->c:J

    .line 36
    iget-object v0, p0, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ve;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    .line 37
    :cond_b
    throw v1

    .line 38
    :cond_c
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hem/ie;->g:J

    .line 39
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hem/ie;->h:J

    .line 40
    iget-object v0, p0, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ve;->f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    .line 41
    :cond_d
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/ie;->e:Ljava/lang/Throwable;

    .line 42
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/hem/ie;->g:J

    .line 43
    sget-object v0, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 44
    iget-object v2, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v2, Lcom/huawei/hem/he;

    if-eqz v2, :cond_e

    invoke-virtual {v0, v2, p1}, Lcom/huawei/hem/me;->f(Lcom/huawei/hem/fe$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_3

    .line 45
    :cond_e
    throw v1

    .line 46
    :cond_f
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()Z

    .line 47
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/hem/ie;->g:J

    .line 48
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/hem/ie;->h:J

    .line 49
    sget-object v0, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 50
    iget-object v2, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v2, Lcom/huawei/hem/he;

    if-eqz v2, :cond_10

    invoke-virtual {v0, v2, p1}, Lcom/huawei/hem/me;->f(Lcom/huawei/hem/fe$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_3

    .line 51
    :cond_10
    throw v1

    .line 52
    :cond_11
    iget-object v2, p0, Lcom/huawei/hem/ie;->f:Lcom/huawei/hem/ge;

    .line 53
    iput v7, v2, Lcom/huawei/hem/ge;->e:I

    .line 54
    iput-wide v4, v2, Lcom/huawei/hem/ge;->a:J

    .line 55
    sget-object v2, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 56
    invoke-virtual {v0}, Lcom/huawei/hem/he;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/huawei/hem/me;->c(I)I

    move-result v2

    if-gt v2, v8, :cond_12

    .line 57
    iget-boolean v3, v0, Lcom/huawei/hem/he;->g:Z

    if-eqz v3, :cond_12

    .line 58
    sget-object v4, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 59
    iget-object v5, v0, Lcom/huawei/hem/he;->d:Ljava/lang/String;

    .line 60
    iget-object v9, v0, Lcom/huawei/hem/he;->e:Ljava/lang/String;

    .line 61
    iget-object v10, v0, Lcom/huawei/hem/he;->f:Ljava/lang/String;

    .line 62
    invoke-static {v9, v3, v10}, Lcom/huawei/hem/hh;->k(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v5, v3}, Lcom/huawei/hem/hh;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 64
    invoke-virtual {v4, v3}, Lcom/huawei/hem/me;->c(I)I

    move-result v3

    goto :goto_2

    :cond_12
    move v3, v7

    :goto_2
    add-int/2addr v2, v3

    if-gt v2, v8, :cond_14

    .line 65
    sget-object v2, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 66
    invoke-virtual {v0}, Lcom/huawei/hem/he;->getId()I

    move-result v3

    .line 67
    iget-object v2, v2, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v2, v3}, Lcom/huawei/hem/we;->b(I)B

    move-result v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v0}, Lcom/huawei/hem/he;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    const-string v0, "warn, but no mListener to receive, switch to pending %d %d"

    .line 69
    invoke-static {p0, v0, v3}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {v2}, Lcom/huawei/hem/of$b;->d(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 71
    iput-byte v8, p0, Lcom/huawei/hem/ie;->d:B

    .line 72
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/hem/ie;->h:J

    .line 73
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/hem/ie;->g:J

    .line 74
    iget-object v0, p0, Lcom/huawei/hem/ie;->f:Lcom/huawei/hem/ge;

    if-eqz v0, :cond_13

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/huawei/hem/ge;->d:J

    .line 76
    iput-wide v2, v0, Lcom/huawei/hem/ge;->c:J

    .line 77
    iget-object v0, p0, Lcom/huawei/hem/ie;->a:Lcom/huawei/hem/ve;

    check-cast p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot$b;

    .line 78
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$b;->b()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p1

    .line 79
    invoke-interface {v0, p1}, Lcom/huawei/hem/ve;->f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_3

    .line 80
    :cond_13
    throw v1

    .line 81
    :cond_14
    sget-object v0, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    .line 82
    iget-object v2, p0, Lcom/huawei/hem/ie;->c:Lcom/huawei/hem/ie$a;

    check-cast v2, Lcom/huawei/hem/he;

    if-eqz v2, :cond_15

    invoke-virtual {v0, v2, p1}, Lcom/huawei/hem/me;->f(Lcom/huawei/hem/fe$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    :goto_3
    return-void

    .line 83
    :cond_15
    throw v1

    .line 84
    :cond_16
    throw v1
.end method
