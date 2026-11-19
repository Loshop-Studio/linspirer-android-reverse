.class public Lcom/taobao/accs/data/d;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

.field public d:Lcom/taobao/accs/flowcontrol/FlowControl;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/taobao/accs/data/Message$a;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Landroid/content/Context;

.field public i:Lcom/taobao/accs/ut/a/d;

.field public j:Lcom/taobao/accs/data/Message;

.field public k:Lcom/taobao/accs/net/b;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/data/a;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/accs/net/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/taobao/accs/data/d;->g:Z

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/taobao/accs/data/d;->e:Ljava/lang/String;

    const-string v0, "MsgRecv_"

    .line 6
    iput-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/taobao/accs/data/MessageHandler$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/MessageHandler$1;-><init>(Lcom/taobao/accs/data/d;)V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->n:Ljava/util/Map;

    .line 9
    new-instance v0, Lcom/taobao/accs/data/f;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/f;-><init>(Lcom/taobao/accs/data/d;)V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->o:Ljava/lang/Runnable;

    .line 10
    iput-object p1, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    .line 12
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    invoke-direct {v0, p1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    .line 13
    new-instance p1, Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v0, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/taobao/accs/flowcontrol/FlowControl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/taobao/accs/data/d;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    if-nez p2, :cond_0

    .line 14
    iget-object p1, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/taobao/accs/data/d;->i()V

    .line 16
    invoke-virtual {p0}, Lcom/taobao/accs/data/d;->h()V

    return-void
.end method

.method private a(Lcom/taobao/accs/utl/h;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/utl/h;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 218
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v2

    .line 219
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extHeaderLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v3, v1

    :cond_2
    :goto_0
    if-ge v3, v2, :cond_4

    .line 221
    invoke-virtual {p1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v4

    add-int/lit8 v3, v3, 0x2

    const v5, 0xfc00

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0xa

    and-int/lit16 v4, v4, 0x3ff

    .line 222
    invoke-virtual {p1, v4}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v3, v4

    if-nez v0, :cond_3

    .line 223
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v4

    .line 224
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "extHeaderType"

    aput-object v9, v8, v1

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    const-string v5, "value"

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v5, 0x3

    aput-object v6, v8, v5

    invoke-static {v4, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    iget-object v2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "parseExtHeader"

    invoke-static {v2, v3, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method private a(I[BLjava/lang/String;I)V
    .locals 34

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v14, p3

    const-string v15, "1"

    const-string v13, "send_fail"

    const-string v12, "accs"

    const-string v11, ""

    .line 26
    new-instance v1, Lcom/taobao/accs/utl/h;

    invoke-direct {v1, v9}, Lcom/taobao/accs/utl/h;-><init>([B)V

    .line 27
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v0

    int-to-long v5, v0

    .line 28
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v3, "flag:"

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-int v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 31
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v3, "target:"

    invoke-static {v3, v10}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 34
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v2, "source:"

    invoke-static {v2, v4}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1d

    .line 37
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v2, "dataId:"

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v13

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v0, v2, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object/from16 v16, v13

    .line 39
    :goto_0
    invoke-static {v4, v3}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 40
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v2, 0x2

    move-object/from16 v17, v4

    const/4 v4, 0x1

    if-lez v0, :cond_9

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 41
    invoke-direct {v7, v1}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/utl/h;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v2, 0x10

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x11

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-eqz v8, :cond_8

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    if-ne v8, v4, :cond_7

    .line 44
    invoke-direct {v7, v1}, Lcom/taobao/accs/data/d;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 45
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->c()[B

    move-result-object v4

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_3
    move/from16 v18, v2

    move-object v2, v0

    .line 46
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    const-string v1, "handleMessage"

    if-nez v4, :cond_a

    .line 47
    :try_start_1
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    move-object/from16 p4, v2

    const-string v2, "oriData is null"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v19, v15

    const/4 v15, 0x0

    :try_start_2
    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v0, v2, v15}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v11

    move-object v6, v12

    move-object v4, v15

    move-object/from16 v1, v16

    goto/16 :goto_26

    :cond_a
    move-object/from16 p4, v2

    move-object/from16 v19, v15

    .line 48
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1c

    if-eqz v0, :cond_b

    .line 49
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 50
    :catch_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binary "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_4
    iget-object v2, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1c

    move-object/from16 v20, v12

    :try_start_5
    const-string v12, "oriData:"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2, v0, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v20, v12

    :goto_6
    const/16 v0, 0xf

    shr-long v21, v5, v0

    const-wide/16 v23, 0x1

    move-object v15, v13

    and-long v12, v21, v23

    long-to-int v0, v12

    .line 52
    invoke-static {v0}, Lcom/taobao/accs/data/Message$c;->a(I)I

    move-result v12

    const/16 v0, 0xd

    shr-long v21, v5, v0

    const-wide/16 v25, 0x3

    and-long v13, v21, v25

    long-to-int v0, v13

    .line 53
    invoke-static {v0}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v13

    const/16 v0, 0xc

    shr-long v21, v5, v0

    move-object/from16 v25, v15

    and-long v14, v21, v23

    long-to-int v2, v14

    const/16 v0, 0xb

    shr-long v14, v5, v0

    and-long v14, v14, v23

    long-to-int v0, v14

    .line 54
    invoke-static {v0}, Lcom/taobao/accs/data/Message$b;->a(I)I

    move-result v14

    const/4 v0, 0x6

    shr-long v21, v5, v0

    move-wide/from16 v26, v5

    and-long v5, v21, v23

    long-to-int v0, v5

    const/4 v5, 0x1

    if-ne v0, v5, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    move v15, v0

    .line 55
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1b

    const-string v21, "target"

    const-string v6, "dataId"

    if-eqz v0, :cond_d

    .line 56
    :try_start_6
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v6, v5, v22
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1b

    const/16 v22, 0x1

    :try_start_7
    aput-object v3, v5, v22
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    const-string v22, "type"

    const/16 v23, 0x2

    aput-object v22, v5, v23

    .line 57
    invoke-static {v12}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    aput-object v22, v5, v23

    const-string v22, "reqType"

    const/16 v23, 0x4

    aput-object v22, v5, v23

    .line 58
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x5

    aput-object v22, v5, v23

    const-string v22, "resType"

    const/16 v23, 0x6

    aput-object v22, v5, v23

    const/16 v22, 0x7

    .line 59
    invoke-static {v14}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x8

    aput-object v21, v5, v22

    const/16 v22, 0x9

    aput-object v10, v5, v22

    .line 60
    invoke-static {v0, v1, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v11

    :goto_8
    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    goto/16 :goto_27

    :cond_d
    :goto_9
    const/4 v0, 0x1

    if-ne v12, v0, :cond_15

    .line 61
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    if-eq v13, v0, :cond_e

    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v13, v0, :cond_15

    .line 62
    :cond_e
    iget-object v0, v7, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Lcom/taobao/accs/data/Message$a;

    move-object/from16 v22, v6

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/taobao/accs/data/Message;

    if-eqz v6, :cond_14

    .line 63
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v5, "handleMessage reqMessage not null"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1b

    move-object/from16 v23, v3

    const/4 v3, 0x0

    :try_start_9
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_f
    move-object/from16 v23, v3

    .line 65
    :goto_a
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 66
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    .line 67
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    invoke-static {v0}, Lcom/taobao/accs/AccsErrorCode;->parseHttpCode(I)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v24, v14

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 69
    :try_start_b
    sget-object v3, Lcom/taobao/accs/AccsErrorCode;->RESPONSE_PARSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v14

    const-string v14, "data:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", tr:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 70
    :goto_b
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v3

    sget-object v5, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v5

    if-eq v3, v5, :cond_11

    .line 71
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v14, 0x0

    aput-object v2, v5, v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    const/4 v2, 0x1

    :try_start_c
    aput-object v0, v5, v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :try_start_d
    invoke-static {v3, v1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 p4, v1

    move-object/from16 v22, v11

    move-object/from16 v14, v23

    goto/16 :goto_f

    :cond_10
    move/from16 v24, v14

    :cond_11
    :goto_c
    move-object v3, v0

    .line 72
    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 73
    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onRecAck()V

    .line 74
    :cond_12
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    if-ne v13, v0, :cond_13

    move-object v14, v1

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object v2, v6

    move-object/from16 p4, v14

    move-object/from16 v14, v23

    move-object/from16 v23, v4

    move-object/from16 v33, v17

    move/from16 v17, v15

    move-object/from16 v15, v33

    move-object v4, v13

    move-wide/from16 v28, v26

    move-object/from16 v26, v5

    move-object/from16 v5, v23

    move-object/from16 v8, v22

    move-object/from16 v22, v11

    move-object v11, v6

    move-object/from16 v6, v26

    .line 75
    :try_start_e
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    move-object/from16 v5, v26

    goto :goto_d

    :cond_13
    move-object/from16 v5, p4

    move-object/from16 p4, v1

    move-object/from16 v8, v22

    move-object/from16 v14, v23

    move-wide/from16 v28, v26

    move-object/from16 v23, v4

    move-object/from16 v22, v11

    move-object v11, v6

    move-object/from16 v33, v17

    move/from16 v17, v15

    move-object/from16 v15, v33

    .line 76
    invoke-virtual {v7, v11, v3, v5}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Ljava/util/Map;)V

    .line 77
    :goto_d
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v2, v11, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v3

    array-length v1, v9

    move-object/from16 v26, v5

    int-to-long v5, v1

    move-object v1, v0

    move-object/from16 v4, p3

    move-object/from16 v11, v26

    invoke-direct/range {v1 .. v6}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v7, v0}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v11

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v3, v23

    goto/16 :goto_26

    :cond_14
    move-object/from16 v23, v4

    move/from16 v24, v14

    move-object/from16 v8, v22

    move-wide/from16 v28, v26

    move-object v14, v3

    move-object/from16 v22, v11

    move-object/from16 v11, p4

    move-object/from16 p4, v1

    move-object/from16 v33, v17

    move/from16 v17, v15

    move-object/from16 v15, v33

    .line 78
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v14, v10, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    const/4 v2, 0x1

    .line 80
    :try_start_f
    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 81
    :try_start_10
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "handleMessage data ack/res reqMessage is null"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    const/4 v3, 0x1

    :try_start_11
    aput-object v14, v2, v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    :try_start_12
    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :catch_5
    move-exception v0

    move v2, v3

    goto/16 :goto_f

    :catch_6
    move-exception v0

    goto/16 :goto_f

    :cond_15
    move-object/from16 v23, v4

    move-object v8, v6

    move-object/from16 v22, v11

    move/from16 v24, v14

    move-wide/from16 v28, v26

    move-object/from16 v11, p4

    move-object/from16 p4, v1

    move-object v14, v3

    move-object/from16 v33, v17

    move/from16 v17, v15

    move-object/from16 v15, v33

    :goto_e
    if-nez v12, :cond_18

    .line 82
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v13, v0, :cond_18

    .line 83
    iget-object v0, v7, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/accs/data/Message$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v14}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_16

    move-object/from16 v5, p3

    move-object/from16 v4, v23

    .line 84
    invoke-direct {v7, v0, v4, v9, v5}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V

    return-void

    :cond_16
    move-object/from16 v5, p3

    move-object/from16 v4, v23

    const-string v0, "4|sal|st"

    .line 85
    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 86
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v14, v10, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    const/4 v2, 0x1

    .line 88
    :try_start_13
    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 89
    :cond_17
    :try_start_14
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "handleMessage contorl ACK reqMessage is null"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    const/4 v3, 0x1

    :try_start_15
    aput-object v14, v2, v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    :try_start_16
    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 91
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "handleMessage not handled"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "body"

    const/4 v6, 0x0

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    const/4 v6, 0x1

    :try_start_17
    aput-object v3, v2, v6
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    :try_start_18
    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :catch_7
    move-exception v0

    move v2, v6

    :goto_f
    move-object/from16 v31, p4

    move-object v3, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v5, v22

    goto/16 :goto_28

    :catch_8
    move-exception v0

    move-object/from16 v31, p4

    move-object v3, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v5, v22

    goto/16 :goto_26

    :cond_18
    move-object/from16 v5, p3

    move-object/from16 v4, v23

    :cond_19
    :goto_10
    const/4 v0, 0x1

    if-ne v12, v0, :cond_2b

    .line 92
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v13, v0, :cond_2b

    if-nez v10, :cond_1a

    .line 93
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    const/4 v2, 0x1

    move-object/from16 v12, v22

    :try_start_19
    invoke-static {v14, v12, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    return-void

    :catch_9
    move-exception v0

    move-object/from16 v31, p4

    move-object v5, v12

    move-object v3, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    goto/16 :goto_23

    :cond_1a
    move-object/from16 v12, v22

    :try_start_1a
    const-string v0, "\\|"

    .line 94
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1b

    .line 96
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    const/4 v2, 0x1

    :try_start_1b
    invoke-static {v14, v12, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    return-void

    .line 97
    :cond_1b
    :try_start_1c
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 98
    iget-object v1, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v2, "handleMessage onPush"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "isBurstData"

    const/4 v13, 0x0

    aput-object v6, v3, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1a

    const/4 v13, 0x1

    :try_start_1d
    aput-object v6, v3, v13
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a

    :try_start_1e
    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :catch_a
    move-exception v0

    move-object/from16 v31, p4

    :goto_11
    move-object v5, v12

    move-object v3, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    goto/16 :goto_24

    .line 99
    :cond_1c
    :goto_12
    iget-object v1, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    if-eqz v1, :cond_1d

    .line 100
    iget-object v1, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    invoke-virtual {v1}, Lcom/taobao/accs/ut/a/d;->a()V

    .line 101
    :cond_1d
    new-instance v1, Lcom/taobao/accs/ut/a/d;

    invoke-direct {v1}, Lcom/taobao/accs/ut/a/d;-><init>()V

    iput-object v1, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/accs/ut/a/d;->c:Ljava/lang/String;

    .line 103
    iget-object v1, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1a

    const/4 v2, 0x1

    :try_start_1f
    aget-object v2, v0, v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9

    :try_start_20
    invoke-static {v1, v2}, Lcom/taobao/accs/utl/UtilityImpl;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 104
    array-length v1, v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_19

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1e

    const/4 v1, 0x2

    :try_start_21
    aget-object v1, v0, v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1a

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    :goto_13
    move-object v13, v1

    .line 105
    :try_start_22
    iget-object v1, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iput-object v13, v1, Lcom/taobao/accs/ut/a/d;->e:Ljava/lang/String;

    move-object/from16 v1, v25

    .line 106
    invoke-direct {v7, v1}, Lcom/taobao/accs/data/d;->c(Ljava/lang/String;)Z

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_19

    if-eqz v2, :cond_1f

    .line 107
    :try_start_23
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v14, v13, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1a

    const/4 v3, 0x1

    :try_start_24
    invoke-virtual {v0, v1, v3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    .line 108
    :try_start_25
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "handleMessage msg duplicate"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1a

    const/4 v3, 0x1

    :try_start_26
    aput-object v14, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iput-boolean v3, v0, Lcom/taobao/accs/ut/a/d;->h:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_b

    const/4 v0, 0x1

    move-object/from16 v22, v12

    move/from16 v18, v17

    move-object/from16 v12, v20

    move/from16 v1, v24

    move-object/from16 v17, v8

    move-wide/from16 v8, v28

    goto/16 :goto_1b

    :catch_b
    move-exception v0

    move-object/from16 v31, p4

    move/from16 v22, v3

    move-object v5, v12

    move-object v3, v14

    goto/16 :goto_8

    :catch_c
    move-exception v0

    move-object/from16 v31, p4

    move v13, v3

    goto/16 :goto_11

    :cond_1f
    if-eqz v18, :cond_22

    .line 110
    :try_start_27
    invoke-direct {v7, v1, v11, v4}, Lcom/taobao/accs/data/d;->a(Ljava/lang/String;Ljava/util/Map;[B)[B

    move-result-object v4

    if-nez v4, :cond_20

    .line 111
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1a

    const/4 v2, 0x1

    :try_start_28
    invoke-static {v14, v13, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_d

    return-void

    :catch_d
    move-exception v0

    move-object/from16 v31, p4

    move v13, v2

    goto/16 :goto_11

    :cond_20
    const/4 v2, 0x1

    move/from16 v3, p1

    if-ne v3, v2, :cond_22

    .line 112
    :try_start_29
    new-instance v2, Lcom/taobao/accs/utl/h;

    invoke-direct {v2, v4}, Lcom/taobao/accs/utl/h;-><init>([B)V

    .line 113
    invoke-direct {v7, v2}, Lcom/taobao/accs/data/d;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 114
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 115
    iget-object v4, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v6, "handleMessage gzip completeOriData"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1a

    const/4 v9, 0x4

    :try_start_2a
    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v9, v18
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f

    const/16 v18, 0x1

    :try_start_2b
    aput-object v1, v9, v18
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_e

    :try_start_2c
    const-string v18, "length"

    const/16 v22, 0x2

    aput-object v18, v9, v22
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_f

    move-object/from16 v22, v12

    :try_start_2d
    array-length v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v18, 0x3

    aput-object v12, v9, v18

    invoke-static {v4, v6, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :catch_e
    move-exception v0

    move-object/from16 v22, v12

    move-object/from16 v31, p4

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v5, v22

    move/from16 v22, v18

    goto/16 :goto_22

    :catch_f
    move-exception v0

    move-object/from16 v31, p4

    move-object v5, v12

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    goto/16 :goto_20

    :cond_21
    move-object/from16 v22, v12

    .line 116
    :goto_14
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_15

    :cond_22
    move-object/from16 v22, v12

    move-object v3, v4

    .line 117
    :goto_15
    invoke-direct {v7, v1}, Lcom/taobao/accs/data/d;->d(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_17

    move-object/from16 v12, v20

    .line 118
    :try_start_2e
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_16

    const-string v2, "handleMessage try deliverMsg"

    const-string v4, "serviceId"

    if-eqz v1, :cond_23

    .line 119
    :try_start_2f
    iget-object v1, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v6, v9
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_16

    const/4 v9, 0x1

    :try_start_30
    aput-object v14, v6, v9

    const/16 v18, 0x2

    aput-object v21, v6, v18

    aget-object v9, v0, v9
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_15

    const/16 v18, 0x3

    :try_start_31
    aput-object v9, v6, v18

    const/4 v9, 0x4

    aput-object v4, v6, v9

    const/4 v9, 0x5

    aput-object v13, v6, v9

    invoke-static {v1, v2, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 120
    :cond_23
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 121
    iget-object v1, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v6, v9
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_16

    const/4 v9, 0x1

    :try_start_32
    aput-object v14, v6, v9

    const/16 v18, 0x2

    aput-object v21, v6, v18

    aget-object v9, v0, v9
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_15

    const/16 v18, 0x3

    :try_start_33
    aput-object v9, v6, v18

    const/4 v9, 0x4

    aput-object v4, v6, v9

    const/4 v9, 0x5

    aput-object v13, v6, v9

    invoke-static {v1, v2, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :goto_16
    move-object/from16 v31, p4

    move-object v6, v12

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v22

    goto/16 :goto_1e

    .line 122
    :cond_24
    :goto_17
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_16

    const/4 v9, 0x1

    .line 123
    :try_start_34
    aget-object v2, v0, v9
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_15

    :try_start_35
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "command"

    const/16 v6, 0x65

    .line 124
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    array-length v2, v0

    const/4 v6, 0x3

    if-lt v2, v6, :cond_25

    const/4 v2, 0x2

    .line 126
    aget-object v2, v0, v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :cond_25
    array-length v2, v0

    const/4 v4, 0x4

    if-lt v2, v4, :cond_26

    const/4 v2, 0x3

    .line 128
    aget-object v0, v0, v2

    const-string v2, "userInfo"

    .line 129
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_18

    :cond_26
    move-object/from16 v0, v22

    :goto_18
    const-string v2, "data"

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 131
    invoke-virtual {v1, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "packageName"

    .line 132
    iget-object v4, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "host"

    .line 133
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "conn_type"

    .line 134
    iget v4, v7, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "bizAck"

    move/from16 v9, v17

    .line 135
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "appKey"

    .line 136
    iget-object v4, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v4}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "configTag"

    .line 137
    iget-object v4, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v4, v4, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    new-instance v2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    const/4 v4, 0x4

    .line 139
    invoke-virtual {v2, v4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setMsgType(I)V

    .line 140
    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onReceiveData()V

    const-string v4, "monitor"

    .line 141
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    invoke-direct {v7, v11, v1}, Lcom/taobao/accs/data/d;->a(Ljava/util/Map;Landroid/content/Intent;)V

    if-eqz v9, :cond_27

    move-object/from16 v17, v8

    move/from16 v18, v9

    move-wide/from16 v8, v28

    long-to-int v2, v8

    int-to-short v2, v2

    .line 143
    invoke-direct {v7, v1, v15, v10, v2}, Lcom/taobao/accs/data/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_19

    :cond_27
    move-object/from16 v17, v8

    move/from16 v18, v9

    move-wide/from16 v8, v28

    .line 144
    :goto_19
    iget-object v2, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    iget-object v4, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-static {v2, v4, v1}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V

    .line 145
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v25

    const v26, 0x101d1

    const-string v27, "MsgToBussPush"

    const-string v28, "commandId=101"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dataId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v25 .. v30}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "to_buss"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1commandId=101serviceId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v12, v1, v2, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 147
    iget-object v1, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iput-object v14, v1, Lcom/taobao/accs/ut/a/d;->b:Ljava/lang/String;

    .line 148
    iget-object v1, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iput-object v0, v1, Lcom/taobao/accs/ut/a/d;->i:Ljava/lang/String;

    .line 149
    iget-object v0, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_28

    const/4 v2, 0x0

    goto :goto_1a

    :cond_28
    array-length v2, v3

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_16

    move-object/from16 v5, v22

    :try_start_36
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/d;->f:Ljava/lang/String;

    .line 150
    iget-object v0, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/d;->a:Ljava/lang/String;

    .line 151
    iget-object v0, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/d;->d:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v3

    move-object/from16 v1, p2

    array-length v1, v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_14

    int-to-long v1, v1

    move-wide/from16 v20, v1

    move-object v1, v0

    move-object v2, v13

    move-object/from16 v4, p3

    move-object/from16 v22, v5

    move-wide/from16 v5, v20

    :try_start_37
    invoke-direct/range {v1 .. v6}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v7, v0}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    const/4 v0, 0x1

    move/from16 v1, v24

    :goto_1b
    if-ne v1, v0, :cond_2b

    .line 153
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_13

    const-string v1, "handleMessage try sendAck dataId"

    if-eqz v0, :cond_29

    .line 154
    :try_start_38
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v17, v2, v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_13

    const/4 v3, 0x1

    :try_start_39
    aput-object v14, v2, v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_10

    :try_start_3a
    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    move v3, v0

    goto :goto_1d

    :catch_10
    move-exception v0

    :goto_1c
    move-object/from16 v31, p4

    move-object v6, v12

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v22

    goto/16 :goto_21

    .line 155
    :cond_29
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v17, v2, v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_13

    const/4 v3, 0x1

    :try_start_3b
    aput-object v14, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :goto_1d
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_12

    const/4 v1, 0x0

    long-to-int v2, v8

    int-to-short v2, v2

    const/4 v3, 0x1

    move-object v8, v0

    move/from16 v4, v18

    move-object v9, v10

    move-object v10, v15

    move-object v6, v11

    move-object/from16 v5, v22

    move-object v11, v14

    move-object v15, v12

    move v12, v1

    move-object v0, v13

    move-object/from16 v1, v16

    move v13, v2

    move-object/from16 v31, p4

    move-object v2, v14

    move-object/from16 v14, p3

    move/from16 v16, v4

    move-object/from16 v32, v15

    move-object/from16 v4, v19

    move-object v15, v6

    :try_start_3c
    invoke-static/range {v8 .. v15}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v6

    .line 157
    iget-object v8, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v8, v6, v3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 158
    iget-object v6, v6, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-direct {v7, v6, v0}, Lcom/taobao/accs/data/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_2b

    const-string v0, "ack"
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_11

    const-wide/16 v8, 0x0

    move-object/from16 v6, v32

    .line 159
    :try_start_3d
    invoke-static {v6, v0, v5, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_29

    :catch_11
    move-exception v0

    move-object/from16 v6, v32

    goto/16 :goto_21

    :catch_12
    move-exception v0

    goto :goto_1c

    :catch_13
    move-exception v0

    move-object/from16 v31, p4

    move-object v6, v12

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    goto :goto_1f

    :catch_14
    move-exception v0

    move-object/from16 v31, p4

    move-object v6, v12

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    goto :goto_20

    :catch_15
    move-exception v0

    goto/16 :goto_16

    :goto_1e
    move/from16 v22, v9

    goto :goto_22

    :catch_16
    move-exception v0

    move-object/from16 v31, p4

    move-object v6, v12

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    :goto_1f
    move-object/from16 v5, v22

    goto :goto_20

    :catch_17
    move-exception v0

    move-object/from16 v31, p4

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    goto :goto_1f

    :goto_20
    move-object v3, v2

    goto/16 :goto_26

    :cond_2a
    move-object/from16 v31, p4

    move-object v5, v12

    move-object v2, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    const/4 v3, 0x1

    .line 160
    iget-object v8, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v9, "handleMessage not exist, unbind it"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "package"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    aget-object v11, v0, v3

    aput-object v11, v10, v3

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v8, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v9, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v2, v5, v9, v10}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 162
    iget-object v8, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v9, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    aget-object v0, v0, v3

    invoke-static {v9, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    invoke-virtual {v8, v0, v3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_18

    goto/16 :goto_29

    :catch_18
    move-exception v0

    :goto_21
    move/from16 v22, v3

    :goto_22
    move-object v3, v2

    goto :goto_27

    :catch_19
    move-exception v0

    move-object/from16 v31, p4

    move-object v5, v12

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object v3, v14

    goto :goto_26

    :goto_23
    move v13, v2

    :goto_24
    move/from16 v22, v13

    goto :goto_27

    :catch_1a
    move-exception v0

    move-object/from16 v31, p4

    move-object v5, v12

    move-object v3, v14

    :goto_25
    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    goto :goto_26

    :catch_1b
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v11

    goto :goto_25

    :catch_1c
    move-exception v0

    move-object/from16 v31, v1

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    :goto_26
    const/16 v22, 0x1

    :goto_27
    move/from16 v2, v22

    .line 163
    :goto_28
    iget-object v8, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v10, v31

    invoke-static {v8, v10, v0, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 164
    iget-object v8, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v3, v5, v9, v10}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v5, v4, v0}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_29
    return-void

    :catch_1d
    move-exception v0

    move-object v5, v11

    move-object v6, v12

    move-object v2, v13

    move-object v4, v15

    .line 166
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v8, "dataId read error "

    invoke-static {v8}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "data id read error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v5, v4, v0}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1

    if-eqz p1, :cond_2

    .line 323
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "source"

    .line 324
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "target"

    .line 326
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p2, "flags"

    .line 327
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method private a(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 183
    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x0

    .line 184
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v5, p2

    :try_start_1
    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "json"

    const-string v6, "handleControlMessage parse"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 186
    :try_start_2
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v4, v11, v2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v0, v6, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_0
    iget-object v0, v8, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v11, 0x64

    if-ne v0, v11, :cond_1

    .line 188
    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v0, "code"

    .line 189
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-static {v0}, Lcom/taobao/accs/AccsErrorCode;->parseHttpCode(I)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    goto :goto_0

    .line 191
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v12, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v12

    if-ne v0, v12, :cond_6

    .line 192
    iget-object v0, v8, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_4

    if-eq v0, v9, :cond_3

    if-eq v0, v11, :cond_2

    goto/16 :goto_4

    .line 193
    :cond_2
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    instance-of v0, v0, Lcom/taobao/accs/net/j;

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const-string v11, "4|sal|st"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 194
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    check-cast v0, Lcom/taobao/accs/net/j;

    .line 195
    invoke-virtual {v0, v3}, Lcom/taobao/accs/net/j;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 196
    :cond_3
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v0

    iget-object v11, v8, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/taobao/accs/client/c;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 197
    :cond_4
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v0

    iget-object v11, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v11, v11, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    const-string v12, "bfc"

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v11, v12, v13}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "EMAS_ACCS_SDK"

    .line 198
    iget-object v11, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/taobao/accs/utl/UtilityImpl;->saveUtdid(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    :try_start_3
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v0

    iget-object v11, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/taobao/accs/client/c;->a(Ljava/lang/String;)V

    const-string v0, "data"

    .line 200
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v11, "accsToken"

    const/4 v12, 0x0

    .line 201
    invoke-static {v0, v11, v12}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/taobao/accs/data/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v11, "packageNames"

    .line 202
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    move v11, v2

    .line 203
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 204
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 205
    iget-object v13, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v13, v12}, Lcom/taobao/accs/utl/UtilityImpl;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 206
    iget-object v12, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v12}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v12

    iget-object v13, v8, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/taobao/accs/client/c;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 207
    :cond_5
    iget-object v13, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v14, "unbind app"

    new-array v15, v9, [Ljava/lang/Object;

    const-string v16, "pkg"

    aput-object v16, v15, v2

    aput-object v12, v15, v10

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v13, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v14, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-static {v14, v12}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v12

    invoke-virtual {v13, v12, v10}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 209
    :try_start_4
    iget-object v11, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v12, "no token/invalid app"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v0, v13, v2

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 210
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v11, Lcom/taobao/accs/AccsErrorCode;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v11

    if-ne v0, v11, :cond_7

    .line 211
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v0

    iget-object v11, v8, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/taobao/accs/client/c;->b(Ljava/lang/String;)V

    .line 212
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v11, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v11

    if-eq v0, v11, :cond_8

    .line 213
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-static {v0, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v5, p2

    .line 214
    :goto_5
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "handleControlMessage"

    invoke-static {v3, v4, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "accs"

    const-string v3, "send_fail"

    const-string v6, ""

    invoke-static {v2, v3, v4, v6, v0}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    .line 216
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 217
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v9, v8, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v10

    move-object/from16 v1, p3

    array-length v1, v1

    int-to-long v12, v1

    move-object v8, v0

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v7, v0}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 328
    new-instance v0, Lcom/taobao/accs/ut/a/e;

    invoke-direct {v0}, Lcom/taobao/accs/ut/a/e;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/e;->a:Ljava/lang/String;

    .line 330
    iput-object p1, v0, Lcom/taobao/accs/ut/a/e;->c:Ljava/lang/String;

    const-string p1, ""

    .line 331
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/e;->d:Ljava/lang/String;

    .line 332
    iput-object p1, v0, Lcom/taobao/accs/ut/a/e;->f:Ljava/lang/String;

    .line 333
    iput-object p2, v0, Lcom/taobao/accs/ut/a/e;->e:Ljava/lang/String;

    .line 334
    iput-object p1, v0, Lcom/taobao/accs/ut/a/e;->b:Ljava/lang/String;

    .line 335
    invoke-virtual {v0}, Lcom/taobao/accs/ut/a/e;->a()V

    return-void
.end method

.method private a(Ljava/util/Map;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 322
    check-cast p1, Ljava/util/HashMap;

    const-string v0, "ext_header"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 169
    :cond_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 170
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    const/4 v3, 0x0

    :try_start_0
    new-array v2, v2, [B

    .line 171
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 172
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 175
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 176
    :try_start_2
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncompress data error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "accs"

    const-string v4, "send_fail"

    const-string v5, ""

    const-string v6, "1"

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uncompress data error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v6, v2}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 179
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v0

    .line 180
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 181
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 182
    :catch_3
    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;[B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;[B)[B"
        }
    .end annotation

    const-string v0, "putBurstMessage"

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 303
    :try_start_0
    array-length v2, p3

    if-eqz v2, :cond_5

    const/16 v2, 0x11

    .line 304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x10

    .line 305
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    const/4 v5, 0x2

    if-ltz v2, :cond_3

    if-ge v2, v3, :cond_3

    const/16 v6, 0x12

    .line 306
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v7, 0x0

    const/16 v9, 0xf

    .line 307
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 308
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 309
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 310
    :try_start_2
    iget-object v9, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, p2, v10}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 311
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/taobao/accs/data/d;->n:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/accs/data/a;

    if-nez p2, :cond_2

    .line 312
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 313
    iget-object p2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "dataId"

    aput-object v10, v9, v1

    aput-object p1, v9, v4

    const-string v4, "burstLength"

    aput-object v4, v9, v5

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {p2, v0, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_1
    new-instance p2, Lcom/taobao/accs/data/a;

    invoke-direct {p2, p1, v3, v6}, Lcom/taobao/accs/data/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    invoke-virtual {p2, v7, v8}, Lcom/taobao/accs/data/a;->a(J)V

    .line 316
    iget-object v4, p0, Lcom/taobao/accs/data/d;->n:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_2
    invoke-virtual {p2, v2, v3, p3}, Lcom/taobao/accs/data/a;->a(II[B)[B

    move-result-object p1

    return-object p1

    .line 318
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "burstNums:%s burstIndex:%s"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "burstNums <= 1"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "burstLength == 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 321
    iget-object p2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, p3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v2

    sget-object v3, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 38
    :goto_0
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    new-instance v3, Lcom/taobao/accs/ut/a/b;

    invoke-direct {v3}, Lcom/taobao/accs/ut/a/b;-><init>()V

    .line 40
    iput-object v0, v3, Lcom/taobao/accs/ut/a/b;->a:Ljava/lang/String;

    .line 41
    iput-object v1, v3, Lcom/taobao/accs/ut/a/b;->b:Ljava/lang/String;

    .line 42
    iput-boolean v2, v3, Lcom/taobao/accs/ut/a/b;->c:Z

    .line 43
    iget-object p1, p1, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    iput-object p1, v3, Lcom/taobao/accs/ut/a/b;->e:Ljava/lang/String;

    .line 44
    invoke-virtual {v3, p2}, Lcom/taobao/accs/ut/a/b;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 45
    invoke-virtual {v3}, Lcom/taobao/accs/ut/a/b;->a()V

    goto :goto_1

    .line 46
    :cond_3
    new-instance p1, Lcom/taobao/accs/ut/a/a;

    invoke-direct {p1}, Lcom/taobao/accs/ut/a/a;-><init>()V

    .line 47
    iput-object v0, p1, Lcom/taobao/accs/ut/a/a;->a:Ljava/lang/String;

    .line 48
    iput-object v1, p1, Lcom/taobao/accs/ut/a/a;->b:Ljava/lang/String;

    .line 49
    iput-boolean v2, p1, Lcom/taobao/accs/ut/a/a;->c:Z

    .line 50
    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/a/a;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 51
    invoke-virtual {p1}, Lcom/taobao/accs/ut/a/a;->a()V

    :goto_1
    return-void
.end method

.method private b(Lcom/alibaba/sdk/android/error/ErrorCode;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->SPDY_CONNECTION_DISCONNECTED_WHEN_SEND_DATA:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->SPDY_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->INAPP_CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->SPDY_PING_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result p1

    sget-object v0, Lcom/taobao/accs/AccsErrorCode;->NETWORK_INAPP_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

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

.method private c(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;
    .locals 3

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string v2, "serviceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    const-string v2, "userInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 10
    iget-object p1, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/taobao/accs/data/d;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    const-string v2, "emas_accs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v4}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "message file not exist"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    const-string v3, "emas_accs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v4}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/accs/data/Message$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "onSendPing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const-class v0, Lcom/taobao/accs/data/d;

    monitor-enter v0

    const/4 v1, 0x1

    .line 287
    :try_start_0
    iput-boolean v1, p0, Lcom/taobao/accs/data/d;->g:Z

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .locals 5

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/taobao/accs/data/d;->g:Z

    .line 296
    iget-object v1, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Lcom/taobao/accs/data/Message$a;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/taobao/accs/data/Message$a;

    .line 297
    array-length v2, v1

    if-lez v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "onNetworkFail"

    invoke-static {v2, v4, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 300
    iget-object v4, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/data/Message;

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {p0, v3, p1}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;)V
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/taobao/accs/data/d;->j:Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/d;->j:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "SEND_REPEAT"

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->d()Lcom/taobao/accs/data/Message$a;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "Lcom/alibaba/sdk/android/error/ErrorCode;",
            "Lcom/taobao/accs/data/Message$ReqType;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 230
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-ltz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto/16 :goto_6

    .line 231
    :cond_0
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 232
    iget-object v5, v0, Lcom/taobao/accs/data/d;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    iget-object v2, v0, Lcom/taobao/accs/data/d;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    move-object/from16 v6, p5

    invoke-virtual {v2, v6, v5}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x3

    if-eqz v2, :cond_4

    if-ne v2, v4, :cond_2

    .line 234
    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_0

    :cond_2
    if-ne v2, v5, :cond_3

    .line 235
    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_0

    .line 236
    :cond_3
    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SERVIER_LOW_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v2, p2

    move-object/from16 v7, p4

    move-object v8, v6

    move-object/from16 v6, p3

    .line 237
    :goto_1
    sget-object v9, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v9}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v9

    const-string v10, "command"

    const-string v11, "onResult"

    const/4 v12, 0x1

    if-eqz v9, :cond_5

    .line 238
    iget-object v9, v0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v10, v13, v3

    iget-object v14, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v14, v13, v12

    const-string v14, "erorcode"

    aput-object v14, v13, v4

    aput-object v2, v13, v5

    invoke-static {v9, v11, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_5
    iget-object v9, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v13, 0x66

    if-ne v9, v13, :cond_6

    return-void

    .line 240
    :cond_6
    iget-object v9, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v12, :cond_7

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v9

    sget-object v13, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v13}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v13

    if-ne v9, v13, :cond_8

    .line 241
    :cond_7
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v9

    sget-object v13, Lcom/taobao/accs/AccsErrorCode;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v13}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v13

    if-ne v9, v13, :cond_9

    .line 242
    :cond_8
    iget-object v9, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v9}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v9

    iget-object v13, v1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/taobao/accs/client/c;->b(Ljava/lang/String;)V

    .line 243
    :cond_9
    iget-boolean v9, v1, Lcom/taobao/accs/data/Message;->e:Z

    const-wide/16 v13, 0x0

    const-string v15, "accs"

    if-nez v9, :cond_e

    .line 244
    invoke-direct {v0, v2}, Lcom/taobao/accs/data/d;->b(Lcom/alibaba/sdk/android/error/ErrorCode;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 245
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x64

    if-eq v9, v10, :cond_a

    iget v9, v1, Lcom/taobao/accs/data/Message;->R:I

    sget v10, Lcom/taobao/accs/data/Message;->a:I

    if-gt v9, v10, :cond_a

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/taobao/accs/data/Message;->T:J

    .line 247
    iget v5, v1, Lcom/taobao/accs/data/Message;->R:I

    add-int/2addr v5, v12

    iput v5, v1, Lcom/taobao/accs/data/Message;->R:I

    .line 248
    iget-object v6, v0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "retryTimes"

    aput-object v7, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v6, v11, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v4, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v4, v1, v12}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto/16 :goto_2

    .line 250
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/taobao/accs/data/d;->c(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;

    move-result-object v4

    const-string v9, "errorObj"

    .line 251
    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 252
    iget-short v9, v1, Lcom/taobao/accs/data/Message;->k:S

    shr-int/lit8 v9, v9, 0xd

    and-int/2addr v5, v9

    invoke-static {v5}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v5

    .line 253
    sget-object v9, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-eq v6, v9, :cond_b

    sget-object v6, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v5, v6, :cond_c

    :cond_b
    const-string v5, "send_type"

    const-string v6, "res"

    .line 254
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    :cond_c
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v5

    sget-object v6, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    if-ne v5, v6, :cond_d

    const-string v5, "data"

    .line 256
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 257
    :cond_d
    iget-object v5, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v5, v5, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    const-string v6, "appKey"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v5, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v5, v5, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    const-string v6, "configTag"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-direct {v0, v8, v4}, Lcom/taobao/accs/data/d;->a(Ljava/util/Map;Landroid/content/Intent;)V

    .line 260
    iget-object v5, v0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    iget-object v6, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-static {v5, v6, v4}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V

    .line 261
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 262
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v5

    const v6, 0x101d1

    const-string v4, "commandId="

    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v4, "serviceId="

    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " errorCode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " dataId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v7, 0xdd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v7, "MsgToBuss0"

    invoke-virtual/range {v5 .. v10}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1commandId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "to_buss"

    invoke-static {v15, v5, v4, v13, v14}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_2

    .line 264
    :cond_e
    iget-object v5, v0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v10, v4, v3

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v6, v4, v12

    const-string v6, "onResult message is cancel"

    invoke-static {v5, v6, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :cond_f
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 266
    invoke-virtual {v4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToBizDate()V

    .line 267
    iget-object v5, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v5, :cond_10

    const/4 v5, 0x0

    goto :goto_3

    :cond_10
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    :goto_3
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    sget-object v7, Lcom/taobao/accs/AccsErrorCode;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v7

    const-string v8, "Request_Success_Rate"

    const-string v9, "resend"

    if-ne v6, v7, :cond_12

    .line 269
    invoke-virtual {v4, v12}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 270
    iget v3, v1, Lcom/taobao/accs/data/Message;->R:I

    if-lez v3, :cond_11

    const-string v3, "succ"

    .line 271
    invoke-static {v15, v9, v3, v13, v14}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "succ_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/taobao/accs/data/Message;->R:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v9, v3, v13, v14}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_5

    .line 273
    :cond_11
    invoke-static {v15, v8, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 274
    :cond_12
    iget v6, v1, Lcom/taobao/accs/data/Message;->R:I

    if-lez v6, :cond_13

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail\uff3f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v9, v5, v13, v14}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const-string v5, "fail"

    .line 276
    invoke-static {v15, v9, v5, v13, v14}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_4

    .line 277
    :cond_13
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    sget-object v7, Lcom/taobao/accs/AccsErrorCode;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v7

    if-eq v6, v7, :cond_14

    .line 278
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    invoke-static {v6}, Lcom/taobao/accs/utl/UtilityImpl;->a(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/taobao/accs/data/Message;->S:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 279
    invoke-static {v15, v8, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_14
    :goto_4
    invoke-virtual {v4, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 281
    invoke-virtual {v4, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 282
    :goto_5
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-interface {v3, v4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 283
    :cond_15
    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/data/d;->b(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    .line 284
    :cond_16
    :goto_6
    iget-object v1, v0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "onError, skip ping/ack"

    invoke-static {v1, v3, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "Lcom/alibaba/sdk/android/error/ErrorCode;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 229
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 3

    .line 336
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/data/e;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/data/e;-><init>(Lcom/taobao/accs/data/d;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 337
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "addTrafficsInfo"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/data/d;->a([BLjava/lang/String;)V

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 11

    const-string v0, ""

    .line 2
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "host"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "onMessage"

    invoke-static {v1, v4, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    new-instance v1, Lcom/taobao/accs/utl/h;

    invoke-direct {v1, p1}, Lcom/taobao/accs/utl/h;-><init>([B)V

    .line 5
    :try_start_0
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result p1

    and-int/lit16 v3, p1, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 6
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 p1, p1, 0xf

    .line 8
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    .line 11
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v4

    .line 12
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    iget-object v5, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "totalLen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_6

    .line 14
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v6

    add-int/lit8 v5, v5, 0x2

    if-lez v6, :cond_5

    .line 15
    new-array v7, v6, [B

    .line 16
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 17
    sget-object v8, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v8}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 18
    iget-object v8, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buf len:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    add-int/2addr v5, v6

    .line 19
    invoke-direct {p0, p1, v7, p2, v3}, Lcom/taobao/accs/data/d;->a(I[BLjava/lang/String;I)V

    goto :goto_0

    .line 20
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "data format error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "accs"

    const-string v3, "send_fail"

    const-string v4, "1"

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v3, v0, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 24
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 25
    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/accs/data/Message$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "onRcvPing"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    const-class v0, Lcom/taobao/accs/data/d;

    monitor-enter v0

    .line 14
    :try_start_0
    iput-boolean v2, p0, Lcom/taobao/accs/data/d;->g:Z

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/taobao/accs/data/Message;)V
    .locals 7

    .line 16
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message$a;

    .line 18
    iget-object v2, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 19
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21
    iget-object v4, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 22
    :pswitch_0
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 24
    :cond_1
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_1

    .line 25
    :pswitch_1
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 27
    :cond_2
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_1

    .line 28
    :pswitch_2
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_3

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 30
    :cond_3
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    .line 31
    iget-boolean v4, v1, Lcom/taobao/accs/data/Message;->e:Z

    if-eqz v4, :cond_0

    .line 32
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "command"

    aput-object v6, v2, v5

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v1, v2, v3

    const-string v1, "cancelControlMessage"

    invoke-static {v4, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/taobao/accs/data/d;->g:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/taobao/accs/data/Message$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/taobao/accs/ut/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    return-object v0
.end method

.method public h()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/d;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "restoreTraffics"

    invoke-static {v1, v3, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
