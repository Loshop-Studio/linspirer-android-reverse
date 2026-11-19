.class public Lcom/huawei/hem/nf;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field public d:Lcom/huawei/hem/of;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/hem/of;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/huawei/hem/nf$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/huawei/hem/nf;->a:I

    .line 3
    iput-object p3, p0, Lcom/huawei/hem/nf;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/huawei/hem/nf;->e:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/huawei/hem/nf;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 6
    iput-object p1, p0, Lcom/huawei/hem/nf;->d:Lcom/huawei/hem/of;

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hem/gf;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 2
    iget-object v2, v0, Lcom/huawei/hem/nf;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huawei/hem/pf;->a(Ljava/lang/String;)Lcom/huawei/hem/gf;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/nf;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10
    move-object v6, v1

    check-cast v6, Lcom/huawei/hem/hf;

    .line 11
    iget-object v6, v6, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    invoke-virtual {v6, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, v0, Lcom/huawei/hem/nf;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/huawei/hem/nf;->d:Lcom/huawei/hem/of;

    iget-wide v3, v3, Lcom/huawei/hem/of;->a:J

    check-cast v1, Lcom/huawei/hem/hf;

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    iget-object v2, v0, Lcom/huawei/hem/nf;->e:Ljava/lang/String;

    .line 15
    iget-object v3, v1, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    const-string v4, "If-Match"

    invoke-virtual {v3, v4, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object v2, v0, Lcom/huawei/hem/nf;->d:Lcom/huawei/hem/of;

    .line 17
    iget-boolean v3, v2, Lcom/huawei/hem/of;->e:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    iget-boolean v3, v2, Lcom/huawei/hem/of;->f:Z

    if-eqz v3, :cond_4

    .line 19
    sget-object v3, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    .line 20
    iget-boolean v3, v3, Lcom/huawei/hem/gh;->h:Z

    if-eqz v3, :cond_4

    .line 21
    iget-object v3, v1, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    instance-of v7, v3, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_4

    .line 22
    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v7, "HEAD"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 23
    :cond_4
    iget-wide v7, v2, Lcom/huawei/hem/of;->c:J

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_5

    new-array v3, v6, [Ljava/lang/Object;

    .line 24
    iget-wide v7, v2, Lcom/huawei/hem/of;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "bytes=%d-"

    invoke-static {v2, v3}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    new-array v3, v4, [Ljava/lang/Object;

    .line 25
    iget-wide v7, v2, Lcom/huawei/hem/of;->b:J

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v5

    iget-wide v7, v2, Lcom/huawei/hem/of;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v6

    const-string v2, "bytes=%d-%d"

    invoke-static {v2, v3}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 27
    :goto_1
    iget-object v3, v1, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    const-string v7, "Range"

    invoke-virtual {v3, v7, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_2
    iget-object v2, v0, Lcom/huawei/hem/nf;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    const-string v3, "User-Agent"

    if-eqz v2, :cond_6

    .line 29
    iget-object v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 31
    :cond_6
    invoke-static {}, Lcom/huawei/hem/hh;->b()Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v7, v1, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    invoke-virtual {v7, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_7
    iget-object v2, v1, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    .line 34
    iput-object v2, v0, Lcom/huawei/hem/nf;->f:Ljava/util/Map;

    .line 35
    iget-object v2, v1, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/huawei/hem/nf;->g:Ljava/util/List;

    .line 37
    iget-object v3, v0, Lcom/huawei/hem/nf;->f:Ljava/util/Map;

    .line 38
    invoke-virtual {v1}, Lcom/huawei/hem/hf;->b()I

    move-result v7

    .line 39
    iget-object v8, v1, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    const-string v9, "Location"

    invoke-virtual {v8, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 40
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v5

    :goto_3
    const/16 v12, 0x12d

    if-eq v7, v12, :cond_9

    const/16 v12, 0x12e

    if-eq v7, v12, :cond_9

    const/16 v12, 0x12f

    if-eq v7, v12, :cond_9

    const/16 v12, 0x12c

    if-eq v7, v12, :cond_9

    const/16 v12, 0x133

    if-eq v7, v12, :cond_9

    const/16 v12, 0x134

    if-ne v7, v12, :cond_8

    goto :goto_4

    :cond_8
    move v12, v5

    goto :goto_5

    :cond_9
    :goto_4
    move v12, v6

    :goto_5
    if-eqz v12, :cond_e

    if-eqz v8, :cond_d

    .line 41
    check-cast v1, Lcom/huawei/hem/hf;

    invoke-virtual {v1}, Lcom/huawei/hem/hf;->a()V

    .line 42
    sget-object v1, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 43
    invoke-virtual {v1, v8}, Lcom/huawei/hem/pf;->a(Ljava/lang/String;)Lcom/huawei/hem/gf;

    move-result-object v1

    .line 44
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 45
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 47
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_a

    .line 48
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 49
    move-object v15, v1

    check-cast v15, Lcom/huawei/hem/hf;

    .line 50
    iget-object v15, v15, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    invoke-virtual {v15, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 51
    :cond_b
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    move-object v7, v1

    check-cast v7, Lcom/huawei/hem/hf;

    .line 53
    iget-object v8, v7, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    .line 54
    invoke-virtual {v7}, Lcom/huawei/hem/hf;->b()I

    move-result v8

    .line 55
    iget-object v7, v7, Lcom/huawei/hem/hf;->a:Ljava/net/URLConnection;

    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v11, v6

    const/16 v12, 0xa

    if-ge v11, v12, :cond_c

    move/from16 v16, v8

    move-object v8, v7

    move/from16 v7, v16

    goto/16 :goto_3

    .line 56
    :cond_c
    new-instance v1, Ljava/lang/IllegalAccessException;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v10, v2, v5

    const-string v3, "redirect too many times! %s"

    .line 57
    invoke-static {v3, v2}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_d
    new-instance v2, Ljava/lang/IllegalAccessException;

    new-array v3, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    check-cast v1, Lcom/huawei/hem/hf;

    invoke-virtual {v1}, Lcom/huawei/hem/hf;->c()Ljava/util/Map;

    move-result-object v1

    aput-object v1, v3, v6

    const-string v1, "receive %d (redirect) but the location is null with response [%s]"

    .line 60
    invoke-static {v1, v3}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_e
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method
