.class public Lcom/huawei/hem/tf;
.super Ljava/lang/Object;
.source "FetchDataTask.java"


# instance fields
.field public final a:Lcom/huawei/hem/uf;

.field public final b:I

.field public final c:I

.field public final d:Lcom/huawei/hem/rf;

.field public final e:Lcom/huawei/hem/gf;

.field public final f:Z

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:Ljava/lang/String;

.field public k:J

.field public l:Lcom/huawei/hem/xg;

.field public volatile m:Z

.field public final n:Lcom/huawei/hem/if;

.field public volatile o:J

.field public volatile p:J


# direct methods
.method public constructor <init>(Lcom/huawei/hem/gf;Lcom/huawei/hem/of;Lcom/huawei/hem/rf;IIZLcom/huawei/hem/uf;Ljava/lang/String;Lcom/huawei/hem/tf$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/huawei/hem/tf;->o:J

    .line 3
    iput-wide v0, p0, Lcom/huawei/hem/tf;->p:J

    .line 4
    iput-object p7, p0, Lcom/huawei/hem/tf;->a:Lcom/huawei/hem/uf;

    .line 5
    iput-object p8, p0, Lcom/huawei/hem/tf;->j:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/huawei/hem/tf;->e:Lcom/huawei/hem/gf;

    .line 7
    iput-boolean p6, p0, Lcom/huawei/hem/tf;->f:Z

    .line 8
    iput-object p3, p0, Lcom/huawei/hem/tf;->d:Lcom/huawei/hem/rf;

    .line 9
    iput p5, p0, Lcom/huawei/hem/tf;->c:I

    .line 10
    iput p4, p0, Lcom/huawei/hem/tf;->b:I

    .line 11
    sget-object p1, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hem/pf;->b()Lcom/huawei/hem/if;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/tf;->n:Lcom/huawei/hem/if;

    .line 13
    iget-wide p3, p2, Lcom/huawei/hem/of;->a:J

    iput-wide p3, p0, Lcom/huawei/hem/tf;->g:J

    .line 14
    iget-wide p3, p2, Lcom/huawei/hem/of;->c:J

    iput-wide p3, p0, Lcom/huawei/hem/tf;->h:J

    .line 15
    iget-wide p3, p2, Lcom/huawei/hem/of;->b:J

    iput-wide p3, p0, Lcom/huawei/hem/tf;->k:J

    .line 16
    iget-wide p1, p2, Lcom/huawei/hem/of;->d:J

    iput-wide p1, p0, Lcom/huawei/hem/tf;->i:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 23

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/huawei/hem/tf;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, v1, Lcom/huawei/hem/tf;->c:I

    iget-object v2, v1, Lcom/huawei/hem/tf;->e:Lcom/huawei/hem/gf;

    invoke-static {v0, v2}, Lcom/huawei/hem/hh;->d(ILcom/huawei/hem/gf;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_3

    .line 3
    iget-object v0, v1, Lcom/huawei/hem/tf;->e:Lcom/huawei/hem/gf;

    .line 4
    check-cast v0, Lcom/huawei/hem/hf;

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    const-string v2, "Content-Range"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v2, "bytes (\\d+)-(\\d+)/\\d+"

    .line 7
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 11
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v12, v2

    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    move-wide v2, v12

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    const-class v2, Lcom/huawei/hem/hh;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v12, "parse content length from content range error"

    .line 13
    invoke-static {v8, v2, v0, v12, v3}, Lcom/huawei/hem/fh;->d(ILjava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    move-wide v2, v4

    :goto_1
    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    move-wide v2, v4

    :cond_3
    cmp-long v0, v2, v6

    if-eqz v0, :cond_17

    .line 14
    iget-wide v12, v1, Lcom/huawei/hem/tf;->i:J

    cmp-long v0, v12, v6

    const/4 v14, 0x3

    const/4 v15, 0x5

    const/4 v6, 0x4

    if-lez v0, :cond_5

    cmp-long v0, v2, v12

    if-eqz v0, :cond_5

    .line 15
    iget-wide v7, v1, Lcom/huawei/hem/tf;->h:J

    cmp-long v0, v7, v4

    if-nez v0, :cond_4

    const-string v0, "range[%d-)"

    new-array v4, v11, [Ljava/lang/Object;

    .line 16
    iget-wide v7, v1, Lcom/huawei/hem/tf;->k:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v0, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "range[%d-%d)"

    new-array v4, v9, [Ljava/lang/Object;

    .line 17
    iget-wide v7, v1, Lcom/huawei/hem/tf;->k:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    iget-wide v7, v1, Lcom/huawei/hem/tf;->h:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v0, v4}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_2
    new-instance v4, Lcom/huawei/hem/zf;

    const-string v5, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v0, v7, v10

    iget-wide v12, v1, Lcom/huawei/hem/tf;->i:J

    .line 19
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v9

    iget v0, v1, Lcom/huawei/hem/tf;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v14

    iget v0, v1, Lcom/huawei/hem/tf;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v6

    .line 20
    invoke-static {v5, v7}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/huawei/hem/zf;-><init>(Ljava/lang/String;)V

    throw v4

    .line 21
    :cond_5
    iget-wide v12, v1, Lcom/huawei/hem/tf;->k:J

    .line 22
    :try_start_1
    sget-object v0, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 23
    invoke-virtual {v0}, Lcom/huawei/hem/pf;->e()Lcom/huawei/hem/eh;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/yg$a;

    if-eqz v0, :cond_13

    .line 24
    iget-object v0, v1, Lcom/huawei/hem/tf;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hem/hh;->a(Ljava/lang/String;)Lcom/huawei/hem/xg;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    iput-object v7, v1, Lcom/huawei/hem/tf;->l:Lcom/huawei/hem/xg;

    .line 25
    iget-wide v14, v1, Lcom/huawei/hem/tf;->k:J

    move-object v0, v7

    check-cast v0, Lcom/huawei/hem/yg;

    .line 26
    iget-object v0, v0, Lcom/huawei/hem/yg;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 27
    iget-object v0, v1, Lcom/huawei/hem/tf;->e:Lcom/huawei/hem/gf;

    check-cast v0, Lcom/huawei/hem/hf;

    .line 28
    iget-object v0, v0, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/16 v0, 0x1000

    :try_start_3
    new-array v0, v0, [B

    .line 29
    iget-boolean v15, v1, Lcom/huawei/hem/tf;->m:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v15, :cond_7

    if-eqz v14, :cond_6

    .line 30
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 31
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 32
    :cond_6
    :goto_3
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hem/tf;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 33
    check-cast v7, Lcom/huawei/hem/yg;

    :try_start_6
    invoke-virtual {v7}, Lcom/huawei/hem/yg;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 34
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 35
    check-cast v7, Lcom/huawei/hem/yg;

    :try_start_7
    invoke-virtual {v7}, Lcom/huawei/hem/yg;->a()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 36
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :goto_5
    throw v2

    .line 38
    :cond_7
    :goto_6
    :try_start_8
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v6, -0x1

    if-ne v15, v6, :cond_d

    .line 39
    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v6, v0

    .line 40
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    :goto_7
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hem/tf;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 42
    check-cast v7, Lcom/huawei/hem/yg;

    :try_start_b
    invoke-virtual {v7}, Lcom/huawei/hem/yg;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v6, v0

    .line 43
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    :goto_8
    iget-wide v6, v1, Lcom/huawei/hem/tf;->k:J

    sub-long/2addr v6, v12

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    cmp-long v0, v2, v6

    if-nez v0, :cond_8

    goto :goto_9

    .line 45
    :cond_8
    new-instance v0, Lcom/huawei/hem/zf;

    const-string v4, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    .line 46
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v11

    iget-wide v2, v1, Lcom/huawei/hem/tf;->g:J

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v9

    iget-wide v2, v1, Lcom/huawei/hem/tf;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v5, v3

    iget-wide v2, v1, Lcom/huawei/hem/tf;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v5, v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v5, v6

    .line 48
    invoke-static {v4, v5}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/huawei/hem/zf;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_9
    :goto_9
    iget-object v0, v1, Lcom/huawei/hem/tf;->a:Lcom/huawei/hem/uf;

    iget-object v2, v1, Lcom/huawei/hem/tf;->d:Lcom/huawei/hem/rf;

    iget-wide v3, v1, Lcom/huawei/hem/tf;->g:J

    iget-wide v5, v1, Lcom/huawei/hem/tf;->h:J

    check-cast v0, Lcom/huawei/hem/qf;

    .line 50
    iget-boolean v7, v0, Lcom/huawei/hem/qf;->s:Z

    if-eqz v7, :cond_a

    goto :goto_a

    .line 51
    :cond_a
    iget v7, v2, Lcom/huawei/hem/rf;->h:I

    .line 52
    iget-boolean v7, v0, Lcom/huawei/hem/qf;->n:Z

    if-eqz v7, :cond_b

    const-wide/16 v16, 0x0

    cmp-long v2, v3, v16

    if-eqz v2, :cond_c

    .line 53
    iget-object v2, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 54
    iget-wide v7, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_c

    const-string v2, "the single task not completed corrected(%d, %d != %d) for task(%d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 55
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v11

    iget-object v3, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 56
    iget-wide v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:J

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v9

    iget-object v3, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 58
    iget v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x3

    aput-object v3, v7, v18

    .line 60
    invoke-static {v0, v2, v7}, Lcom/huawei/hem/fh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 61
    :cond_b
    iget-object v3, v0, Lcom/huawei/hem/qf;->l:Ljava/util/ArrayList;

    monitor-enter v3

    .line 62
    :try_start_c
    iget-object v0, v0, Lcom/huawei/hem/qf;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v3

    :cond_c
    :goto_a
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 64
    check-cast v7, Lcom/huawei/hem/yg;

    :try_start_d
    invoke-virtual {v7}, Lcom/huawei/hem/yg;->a()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 65
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    :goto_b
    throw v2

    :cond_d
    const/4 v6, 0x5

    const-wide/16 v16, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x4

    .line 67
    :try_start_e
    move-object v4, v7

    check-cast v4, Lcom/huawei/hem/yg;

    .line 68
    iget-object v4, v4, Lcom/huawei/hem/yg;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4, v0, v10, v15}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 69
    iget-wide v4, v1, Lcom/huawei/hem/tf;->k:J

    move-wide/from16 v20, v12

    int-to-long v11, v15

    add-long/2addr v4, v11

    iput-wide v4, v1, Lcom/huawei/hem/tf;->k:J

    .line 70
    iget-object v4, v1, Lcom/huawei/hem/tf;->a:Lcom/huawei/hem/uf;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    check-cast v4, Lcom/huawei/hem/qf;

    :try_start_f
    invoke-virtual {v4, v11, v12}, Lcom/huawei/hem/qf;->k(J)V

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 72
    iget-wide v11, v1, Lcom/huawei/hem/tf;->k:J

    iget-wide v8, v1, Lcom/huawei/hem/tf;->o:J

    sub-long/2addr v11, v8

    .line 73
    iget-wide v8, v1, Lcom/huawei/hem/tf;->p:J

    sub-long v8, v4, v8

    .line 74
    sget v6, Lcom/huawei/hem/hh;->a:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v22, v14

    int-to-long v13, v6

    cmp-long v6, v11, v13

    if-lez v6, :cond_e

    .line 75
    :try_start_10
    sget-wide v11, Lcom/huawei/hem/hh;->b:J

    cmp-long v6, v8, v11

    if-lez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_11

    :cond_e
    move v6, v10

    :goto_c
    if-eqz v6, :cond_f

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hem/tf;->b()V

    .line 77
    iget-wide v8, v1, Lcom/huawei/hem/tf;->k:J

    iput-wide v8, v1, Lcom/huawei/hem/tf;->o:J

    .line 78
    iput-wide v4, v1, Lcom/huawei/hem/tf;->p:J

    .line 79
    :cond_f
    iget-boolean v4, v1, Lcom/huawei/hem/tf;->m:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v4, :cond_10

    .line 80
    :try_start_11
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 81
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    :goto_d
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hem/tf;->b()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 83
    check-cast v7, Lcom/huawei/hem/yg;

    :try_start_13
    invoke-virtual {v7}, Lcom/huawei/hem/yg;->a()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 84
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    return-void

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 85
    check-cast v7, Lcom/huawei/hem/yg;

    :try_start_14
    invoke-virtual {v7}, Lcom/huawei/hem/yg;->a()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 86
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    :goto_f
    throw v2

    .line 88
    :cond_10
    :try_start_15
    iget-boolean v4, v1, Lcom/huawei/hem/tf;->f:Z

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/huawei/hem/hh;->p()Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_10

    .line 89
    :cond_11
    new-instance v0, Lcom/huawei/hem/bg;

    invoke-direct {v0}, Lcom/huawei/hem/bg;-><init>()V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :cond_12
    :goto_10
    move/from16 v6, v19

    move-wide/from16 v12, v20

    move-object/from16 v14, v22

    const-wide/16 v4, -0x1

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v11, 0x1

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v22, v14

    :goto_11
    move-object v2, v0

    move-object v3, v7

    move-object/from16 v7, v22

    goto :goto_13

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    const/4 v7, 0x0

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    .line 90
    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_12

    :catchall_8
    move-exception v0

    const/4 v2, 0x0

    :goto_12
    move-object v3, v2

    move-object v7, v3

    move-object v2, v0

    :goto_13
    if-eqz v7, :cond_14

    .line 91
    :try_start_17
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    goto :goto_14

    :catch_a
    move-exception v0

    move-object v4, v0

    .line 92
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_14
    if-eqz v3, :cond_15

    .line 93
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hem/tf;->b()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_16

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 94
    check-cast v3, Lcom/huawei/hem/yg;

    :try_start_19
    invoke-virtual {v3}, Lcom/huawei/hem/yg;->a()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 95
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_15
    throw v2

    :cond_15
    :goto_16
    if-eqz v3, :cond_16

    .line 97
    check-cast v3, Lcom/huawei/hem/yg;

    :try_start_1a
    invoke-virtual {v3}, Lcom/huawei/hem/yg;->a()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_17

    :catch_c
    move-exception v0

    move-object v3, v0

    .line 98
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    :cond_16
    :goto_17
    throw v2

    .line 100
    :cond_17
    new-instance v0, Lcom/huawei/hem/zf;

    const-string v2, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Lcom/huawei/hem/tf;->b:I

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    iget v4, v1, Lcom/huawei/hem/tf;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 102
    invoke-static {v2, v3}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/huawei/hem/zf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/tf;->l:Lcom/huawei/hem/xg;

    check-cast v2, Lcom/huawei/hem/yg;

    .line 3
    iget-object v3, v2, Lcom/huawei/hem/yg;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4
    iget-object v2, v2, Lcom/huawei/hem/yg;->b:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    iget v2, p0, Lcom/huawei/hem/tf;->c:I

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/tf;->n:Lcom/huawei/hem/if;

    iget v1, p0, Lcom/huawei/hem/tf;->b:I

    iget v2, p0, Lcom/huawei/hem/tf;->c:I

    iget-wide v3, p0, Lcom/huawei/hem/tf;->k:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/huawei/hem/if;->k(IIJ)V

    goto :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/tf;->a:Lcom/huawei/hem/uf;

    check-cast v0, Lcom/huawei/hem/qf;

    .line 8
    iget-object v1, v0, Lcom/huawei/hem/qf;->f:Lcom/huawei/hem/if;

    iget-object v0, v0, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 9
    iget v2, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 10
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/huawei/hem/if;->l(IJ)V

    :cond_2
    :goto_2
    return-void
.end method
