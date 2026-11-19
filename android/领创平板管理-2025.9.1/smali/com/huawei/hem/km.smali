.class public final Lcom/huawei/hem/km;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/km$b;,
        Lcom/huawei/hem/km$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lcom/huawei/hem/jn;

.field public final b:Lcom/huawei/hem/km$a;

.field public final c:Z

.field public final d:Lcom/huawei/hem/yl$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hem/zl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/km;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/jn;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    .line 3
    iput-boolean p2, p0, Lcom/huawei/hem/km;->c:Z

    .line 4
    new-instance p2, Lcom/huawei/hem/km$a;

    invoke-direct {p2, p1}, Lcom/huawei/hem/km$a;-><init>(Lcom/huawei/hem/jn;)V

    iput-object p2, p0, Lcom/huawei/hem/km;->b:Lcom/huawei/hem/km$a;

    .line 5
    new-instance p1, Lcom/huawei/hem/yl$a;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lcom/huawei/hem/yl$a;-><init>(ILcom/huawei/hem/ao;)V

    iput-object p1, p0, Lcom/huawei/hem/km;->d:Lcom/huawei/hem/yl$a;

    return-void
.end method

.method public static a(IBS)I
    .locals 1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static h(Lcom/huawei/hem/jn;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/huawei/hem/jn;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 2
    invoke-interface {p0}, Lcom/huawei/hem/jn;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-interface {p0}, Lcom/huawei/hem/jn;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public c(ZLcom/huawei/hem/km$b;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lcom/huawei/hem/jn;->G(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v3, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-static {v3}, Lcom/huawei/hem/km;->h(Lcom/huawei/hem/jn;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_38

    const/16 v6, 0x4000

    if-gt v3, v6, :cond_38

    .line 3
    iget-object v7, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v7}, Lcom/huawei/hem/jn;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x4

    if-eqz p1, :cond_1

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected a SETTINGS frame but was %s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    .line 5
    :cond_1
    :goto_0
    iget-object v9, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v9}, Lcom/huawei/hem/jn;->readByte()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 6
    iget-object v10, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v10}, Lcom/huawei/hem/jn;->readInt()I

    move-result v10

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    .line 7
    sget-object v11, Lcom/huawei/hem/km;->e:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/huawei/hem/km;->e:Ljava/util/logging/Logger;

    invoke-static {v4, v10, v3, v7, v9}, Lcom/huawei/hem/zl;->a(ZIIBB)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    const/4 v11, 0x5

    const/4 v15, 0x2

    packed-switch v7, :pswitch_data_0

    .line 8
    iget-object v0, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    int-to-long v2, v3

    invoke-interface {v0, v2, v3}, Lcom/huawei/hem/jn;->skip(J)V

    goto/16 :goto_e

    .line 9
    :pswitch_0
    invoke-virtual {v1, v0, v3, v10}, Lcom/huawei/hem/km;->l(Lcom/huawei/hem/km$b;II)V

    goto/16 :goto_e

    .line 10
    :pswitch_1
    invoke-virtual {v1, v0, v3, v10}, Lcom/huawei/hem/km;->f(Lcom/huawei/hem/km$b;II)V

    goto/16 :goto_e

    .line 11
    :pswitch_2
    invoke-virtual {v1, v0, v3, v9, v10}, Lcom/huawei/hem/km;->i(Lcom/huawei/hem/km$b;IBI)V

    goto/16 :goto_e

    .line 12
    :pswitch_3
    invoke-virtual {v1, v0, v3, v9, v10}, Lcom/huawei/hem/km;->k(Lcom/huawei/hem/km$b;IBI)V

    goto/16 :goto_e

    :pswitch_4
    if-nez v10, :cond_11

    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_5

    if-nez v3, :cond_4

    .line 13
    check-cast v0, Lcom/huawei/hem/am$g;

    if-eqz v0, :cond_3

    goto/16 :goto_e

    .line 14
    :cond_3
    throw v5

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 15
    invoke-static {v2, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    .line 16
    :cond_5
    rem-int/lit8 v7, v3, 0x6

    if-nez v7, :cond_10

    .line 17
    new-instance v7, Lcom/huawei/hem/pm;

    invoke-direct {v7}, Lcom/huawei/hem/pm;-><init>()V

    move v9, v2

    :goto_1
    if-ge v9, v3, :cond_e

    .line 18
    iget-object v10, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v10}, Lcom/huawei/hem/jn;->readShort()S

    move-result v10

    const v12, 0xffff

    and-int/2addr v10, v12

    .line 19
    iget-object v12, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v12}, Lcom/huawei/hem/jn;->readInt()I

    move-result v12

    if-eq v10, v15, :cond_b

    const/4 v13, 0x3

    if-eq v10, v13, :cond_a

    if-eq v10, v8, :cond_8

    if-eq v10, v11, :cond_6

    goto :goto_2

    :cond_6
    if-lt v12, v6, :cond_7

    const v13, 0xffffff

    if-gt v12, v13, :cond_7

    goto :goto_2

    :cond_7
    new-array v0, v4, [Ljava/lang/Object;

    .line 20
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v2, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_8
    const/4 v10, 0x7

    if-ltz v12, :cond_9

    goto :goto_2

    :cond_9
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 21
    invoke-static {v2, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_a
    move v10, v8

    goto :goto_2

    :cond_b
    if-eqz v12, :cond_d

    if-ne v12, v4, :cond_c

    goto :goto_2

    :cond_c
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 22
    invoke-static {v2, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    .line 23
    :cond_d
    :goto_2
    invoke-virtual {v7, v10, v12}, Lcom/huawei/hem/pm;->b(II)Lcom/huawei/hem/pm;

    add-int/lit8 v9, v9, 0x6

    goto :goto_1

    :cond_e
    const/16 v20, 0x0

    .line 24
    check-cast v0, Lcom/huawei/hem/am$g;

    if-eqz v0, :cond_f

    .line 25
    :try_start_1
    iget-object v3, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 26
    iget-object v3, v3, Lcom/huawei/hem/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    new-instance v5, Lcom/huawei/hem/hm;

    const-string v18, "OkHttp %s ACK Settings"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v8, v8, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v8, v6, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lcom/huawei/hem/hm;-><init>(Lcom/huawei/hem/am$g;Ljava/lang/String;[Ljava/lang/Object;ZLcom/huawei/hem/pm;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_e

    .line 28
    :cond_f
    throw v5

    :cond_10
    new-array v0, v4, [Ljava/lang/Object;

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v2, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_11
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    .line 30
    invoke-static {v2, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_5
    if-ne v3, v8, :cond_16

    if-eqz v10, :cond_15

    .line 31
    iget-object v3, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v3}, Lcom/huawei/hem/jn;->readInt()I

    move-result v3

    .line 32
    invoke-static {v3}, Lcom/huawei/hem/wl;->fromHttp2(I)Lcom/huawei/hem/wl;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 33
    check-cast v0, Lcom/huawei/hem/am$g;

    .line 34
    iget-object v3, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {v3, v10}, Lcom/huawei/hem/am;->g(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 35
    iget-object v0, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 36
    new-instance v3, Lcom/huawei/hem/fm;

    new-array v15, v15, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v5, v15, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v4

    const-string v14, "OkHttp %s Push Reset[%s]"

    move-object v12, v3

    move-object v13, v0

    move/from16 v16, v10

    move-object/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Lcom/huawei/hem/fm;-><init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;ILcom/huawei/hem/wl;)V

    invoke-virtual {v0, v3}, Lcom/huawei/hem/am;->f(Lcom/huawei/hem/sk;)V

    goto/16 :goto_e

    .line 37
    :cond_12
    iget-object v0, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {v0, v10}, Lcom/huawei/hem/am;->h(I)Lcom/huawei/hem/lm;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 38
    monitor-enter v2

    .line 39
    :try_start_2
    iget-object v0, v2, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    if-nez v0, :cond_13

    .line 40
    iput-object v6, v2, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :cond_13
    monitor-exit v2

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_14
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_15
    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {v0, v2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_16
    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v4, v4, [Ljava/lang/Object;

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_6
    if-ne v3, v11, :cond_18

    if-eqz v10, :cond_17

    .line 46
    invoke-virtual {v1, v0, v10}, Lcom/huawei/hem/km;->j(Lcom/huawei/hem/km$b;I)V

    goto/16 :goto_e

    :cond_17
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    .line 47
    invoke-static {v2, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_18
    new-array v0, v4, [Ljava/lang/Object;

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v2, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_7
    if-eqz v10, :cond_22

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_19

    move v6, v4

    goto :goto_3

    :cond_19
    move v6, v2

    :goto_3
    and-int/lit8 v7, v9, 0x8

    if-eqz v7, :cond_1a

    .line 49
    iget-object v7, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v7}, Lcom/huawei/hem/jn;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    goto :goto_4

    :cond_1a
    move v7, v2

    :goto_4
    and-int/lit8 v8, v9, 0x20

    if-eqz v8, :cond_1b

    .line 50
    invoke-virtual {v1, v0, v10}, Lcom/huawei/hem/km;->j(Lcom/huawei/hem/km$b;I)V

    add-int/lit8 v3, v3, -0x5

    .line 51
    :cond_1b
    invoke-static {v3, v9, v7}, Lcom/huawei/hem/km;->a(IBS)I

    move-result v3

    .line 52
    invoke-virtual {v1, v3, v7, v9, v10}, Lcom/huawei/hem/km;->g(ISBI)Ljava/util/List;

    move-result-object v17

    .line 53
    check-cast v0, Lcom/huawei/hem/am$g;

    .line 54
    iget-object v3, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {v3, v10}, Lcom/huawei/hem/am;->g(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 55
    iget-object v0, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    if-eqz v0, :cond_1c

    .line 56
    :try_start_3
    new-instance v3, Lcom/huawei/hem/dm;

    const-string v14, "OkHttp %s Push Headers[%s]"

    new-array v15, v15, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v5, v15, v2

    .line 57
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v4

    move-object v12, v3

    move-object v13, v0

    move/from16 v16, v10

    move/from16 v18, v6

    invoke-direct/range {v12 .. v18}, Lcom/huawei/hem/dm;-><init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    .line 58
    invoke-virtual {v0, v3}, Lcom/huawei/hem/am;->f(Lcom/huawei/hem/sk;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_e

    .line 59
    :cond_1c
    throw v5

    .line 60
    :cond_1d
    iget-object v3, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    monitor-enter v3

    .line 61
    :try_start_4
    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {v5, v10}, Lcom/huawei/hem/am;->c(I)Lcom/huawei/hem/lm;

    move-result-object v5

    if-nez v5, :cond_21

    .line 62
    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 63
    iget-boolean v5, v5, Lcom/huawei/hem/am;->g:Z

    if-eqz v5, :cond_1e

    .line 64
    monitor-exit v3

    goto/16 :goto_e

    .line 65
    :cond_1e
    iget-object v5, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget v5, v5, Lcom/huawei/hem/am;->e:I

    if-gt v10, v5, :cond_1f

    monitor-exit v3

    goto/16 :goto_e

    .line 66
    :cond_1f
    rem-int/lit8 v5, v10, 0x2

    iget-object v7, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget v7, v7, Lcom/huawei/hem/am;->f:I

    rem-int/2addr v7, v15

    if-ne v5, v7, :cond_20

    monitor-exit v3

    goto/16 :goto_e

    .line 67
    :cond_20
    invoke-static/range {v17 .. v17}, Lcom/huawei/hem/tk;->B(Ljava/util/List;)Lcom/huawei/hem/yj;

    move-result-object v17

    .line 68
    new-instance v5, Lcom/huawei/hem/lm;

    iget-object v14, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    const/4 v7, 0x0

    move-object v12, v5

    move v13, v10

    move v8, v15

    move v15, v7

    move/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Lcom/huawei/hem/lm;-><init>(ILcom/huawei/hem/am;ZZLcom/huawei/hem/yj;)V

    .line 69
    iget-object v6, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iput v10, v6, Lcom/huawei/hem/am;->e:I

    .line 70
    iget-object v6, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v6, v6, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v6, Lcom/huawei/hem/am;->y:Ljava/util/concurrent/ExecutorService;

    .line 72
    new-instance v7, Lcom/huawei/hem/gm;

    const-string v9, "OkHttp %s stream %d"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v11, v11, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v11, v8, v2

    .line 73
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-direct {v7, v0, v9, v8, v5}, Lcom/huawei/hem/gm;-><init>(Lcom/huawei/hem/am$g;Ljava/lang/String;[Ljava/lang/Object;Lcom/huawei/hem/lm;)V

    .line 74
    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 75
    monitor-exit v3

    goto/16 :goto_e

    .line 76
    :cond_21
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    invoke-static/range {v17 .. v17}, Lcom/huawei/hem/tk;->B(Ljava/util/List;)Lcom/huawei/hem/yj;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lcom/huawei/hem/lm;->i(Lcom/huawei/hem/yj;Z)V

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    .line 78
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_22
    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    invoke-static {v0, v2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_8
    move v8, v15

    if-eqz v10, :cond_36

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_23

    move/from16 v19, v4

    goto :goto_5

    :cond_23
    move/from16 v19, v2

    :goto_5
    and-int/lit8 v6, v9, 0x20

    if-eqz v6, :cond_24

    move v6, v4

    goto :goto_6

    :cond_24
    move v6, v2

    :goto_6
    if-nez v6, :cond_35

    and-int/lit8 v6, v9, 0x8

    if-eqz v6, :cond_25

    .line 80
    iget-object v6, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v6}, Lcom/huawei/hem/jn;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    goto :goto_7

    :cond_25
    move v6, v2

    .line 81
    :goto_7
    invoke-static {v3, v9, v6}, Lcom/huawei/hem/km;->a(IBS)I

    move-result v3

    .line 82
    iget-object v7, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    check-cast v0, Lcom/huawei/hem/am$g;

    .line 83
    iget-object v9, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {v9, v10}, Lcom/huawei/hem/am;->g(I)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 84
    iget-object v0, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    if-eqz v0, :cond_27

    .line 85
    new-instance v5, Lcom/huawei/hem/hn;

    invoke-direct {v5}, Lcom/huawei/hem/hn;-><init>()V

    int-to-long v11, v3

    .line 86
    invoke-interface {v7, v11, v12}, Lcom/huawei/hem/jn;->G(J)V

    .line 87
    invoke-interface {v7, v5, v11, v12}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    .line 88
    iget-wide v13, v5, Lcom/huawei/hem/hn;->b:J

    cmp-long v7, v13, v11

    if-nez v7, :cond_26

    .line 89
    new-instance v7, Lcom/huawei/hem/em;

    new-array v15, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object v8, v15, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v4

    const-string v14, "OkHttp %s Push Data[%s]"

    move-object v12, v7

    move-object v13, v0

    move/from16 v16, v10

    move-object/from16 v17, v5

    move/from16 v18, v3

    invoke-direct/range {v12 .. v19}, Lcom/huawei/hem/em;-><init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;ILcom/huawei/hem/hn;IZ)V

    invoke-virtual {v0, v7}, Lcom/huawei/hem/am;->f(Lcom/huawei/hem/sk;)V

    goto/16 :goto_d

    .line 90
    :cond_26
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    iget-wide v4, v5, Lcom/huawei/hem/hn;->b:J

    .line 92
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_27
    throw v5

    .line 94
    :cond_28
    iget-object v8, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {v8, v10}, Lcom/huawei/hem/am;->c(I)Lcom/huawei/hem/lm;

    move-result-object v8

    if-nez v8, :cond_29

    .line 95
    iget-object v2, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    sget-object v5, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {v2, v10, v5}, Lcom/huawei/hem/am;->N(ILcom/huawei/hem/wl;)V

    .line 96
    iget-object v0, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hem/am;->j(J)V

    .line 97
    invoke-interface {v7, v2, v3}, Lcom/huawei/hem/jn;->skip(J)V

    goto/16 :goto_d

    .line 98
    :cond_29
    iget-object v0, v8, Lcom/huawei/hem/lm;->g:Lcom/huawei/hem/lm$b;

    int-to-long v9, v3

    if-eqz v0, :cond_34

    :cond_2a
    :goto_8
    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-lez v3, :cond_32

    .line 99
    iget-object v3, v0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    monitor-enter v3

    .line 100
    :try_start_6
    iget-boolean v5, v0, Lcom/huawei/hem/lm$b;->f:Z

    .line 101
    iget-object v13, v0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    .line 102
    iget-wide v13, v13, Lcom/huawei/hem/hn;->b:J

    add-long/2addr v13, v9

    .line 103
    iget-wide v11, v0, Lcom/huawei/hem/lm$b;->c:J

    cmp-long v11, v13, v11

    if-lez v11, :cond_2b

    move v11, v4

    goto :goto_9

    :cond_2b
    move v11, v2

    .line 104
    :goto_9
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v11, :cond_2c

    .line 105
    invoke-interface {v7, v9, v10}, Lcom/huawei/hem/jn;->skip(J)V

    .line 106
    iget-object v0, v0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    sget-object v2, Lcom/huawei/hem/wl;->FLOW_CONTROL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/lm;->e(Lcom/huawei/hem/wl;)V

    goto :goto_c

    :cond_2c
    if-eqz v5, :cond_2d

    .line 107
    invoke-interface {v7, v9, v10}, Lcom/huawei/hem/jn;->skip(J)V

    goto :goto_c

    .line 108
    :cond_2d
    iget-object v3, v0, Lcom/huawei/hem/lm$b;->a:Lcom/huawei/hem/hn;

    invoke-interface {v7, v3, v9, v10}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v3, v11, v13

    if-eqz v3, :cond_31

    sub-long/2addr v9, v11

    .line 109
    iget-object v3, v0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    monitor-enter v3

    .line 110
    :try_start_7
    iget-boolean v5, v0, Lcom/huawei/hem/lm$b;->e:Z

    if-eqz v5, :cond_2e

    .line 111
    iget-object v5, v0, Lcom/huawei/hem/lm$b;->a:Lcom/huawei/hem/hn;

    .line 112
    iget-wide v11, v5, Lcom/huawei/hem/hn;->b:J

    .line 113
    iget-object v5, v0, Lcom/huawei/hem/lm$b;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v5}, Lcom/huawei/hem/hn;->a()V

    goto :goto_b

    .line 114
    :cond_2e
    iget-object v5, v0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    .line 115
    iget-wide v11, v5, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-nez v5, :cond_2f

    move v5, v4

    goto :goto_a

    :cond_2f
    move v5, v2

    .line 116
    :goto_a
    iget-object v11, v0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    iget-object v12, v0, Lcom/huawei/hem/lm$b;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v11, v12}, Lcom/huawei/hem/hn;->q(Lcom/huawei/hem/ao;)J

    if-eqz v5, :cond_30

    .line 117
    iget-object v5, v0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    :cond_30
    const-wide/16 v11, 0x0

    .line 118
    :goto_b
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-lez v3, :cond_2a

    .line 119
    invoke-virtual {v0, v11, v12}, Lcom/huawei/hem/lm$b;->a(J)V

    goto :goto_8

    :catchall_2
    move-exception v0

    .line 120
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 121
    :cond_31
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_3
    move-exception v0

    .line 122
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :cond_32
    :goto_c
    if-eqz v19, :cond_33

    .line 123
    sget-object v0, Lcom/huawei/hem/tk;->c:Lcom/huawei/hem/yj;

    invoke-virtual {v8, v0, v4}, Lcom/huawei/hem/lm;->i(Lcom/huawei/hem/yj;Z)V

    .line 124
    :cond_33
    :goto_d
    iget-object v0, v1, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    int-to-long v2, v6

    invoke-interface {v0, v2, v3}, Lcom/huawei/hem/jn;->skip(J)V

    goto :goto_e

    .line 125
    :cond_34
    throw v5

    :cond_35
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v2, v2, [Ljava/lang/Object;

    .line 126
    invoke-static {v0, v2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_36
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 127
    invoke-static {v0, v2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :catch_0
    :cond_37
    :goto_e
    return v4

    :cond_38
    const-string v0, "FRAME_SIZE_ERROR: %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :catch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v0}, Lcom/huawei/hem/ao;->close()V

    return-void
.end method

.method public d(Lcom/huawei/hem/km$b;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/km;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v3, p1}, Lcom/huawei/hem/km;->c(ZLcom/huawei/hem/km$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    sget-object v0, Lcom/huawei/hem/zl;->a:Lcom/huawei/hem/kn;

    invoke-virtual {v0}, Lcom/huawei/hem/kn;->size()I

    move-result v0

    int-to-long v4, v0

    invoke-interface {p1, v4, v5}, Lcom/huawei/hem/jn;->b(J)Lcom/huawei/hem/kn;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/huawei/hem/km;->e:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/hem/km;->e:Ljava/util/logging/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/hem/kn;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Lcom/huawei/hem/tk;->k(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    :cond_2
    sget-object v0, Lcom/huawei/hem/zl;->a:Lcom/huawei/hem/kn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/kn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hem/kn;->utf8()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method public final f(Lcom/huawei/hem/km$b;II)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p2, v0, :cond_7

    if-nez p3, :cond_6

    .line 1
    iget-object p3, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {p3}, Lcom/huawei/hem/jn;->readInt()I

    move-result p3

    .line 2
    iget-object v4, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v4}, Lcom/huawei/hem/jn;->readInt()I

    move-result v4

    sub-int/2addr p2, v0

    .line 3
    invoke-static {v4}, Lcom/huawei/hem/wl;->fromHttp2(I)Lcom/huawei/hem/wl;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    sget-object v0, Lcom/huawei/hem/kn;->EMPTY:Lcom/huawei/hem/kn;

    if-lez p2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    int-to-long v4, p2

    invoke-interface {v0, v4, v5}, Lcom/huawei/hem/jn;->b(J)Lcom/huawei/hem/kn;

    move-result-object v0

    .line 6
    :cond_0
    check-cast p1, Lcom/huawei/hem/am$g;

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hem/kn;->size()I

    .line 8
    iget-object p2, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    monitor-enter p2

    .line 9
    :try_start_0
    iget-object v0, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v0, v0, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v1, v1, Lcom/huawei/hem/am;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/hem/lm;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hem/lm;

    .line 10
    iget-object v1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 11
    iput-boolean v3, v1, Lcom/huawei/hem/am;->g:Z

    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    array-length p2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v1, v0, v2

    .line 14
    iget v3, v1, Lcom/huawei/hem/lm;->c:I

    if-le v3, p3, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/huawei/hem/lm;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    sget-object v3, Lcom/huawei/hem/wl;->REFUSED_STREAM:Lcom/huawei/hem/wl;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iget-object v4, v1, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    if-nez v4, :cond_1

    .line 19
    iput-object v3, v1, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_1
    monitor-exit v1

    .line 22
    iget-object v3, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 23
    iget v1, v1, Lcom/huawei/hem/lm;->c:I

    .line 24
    invoke-virtual {v3, v1}, Lcom/huawei/hem/am;->h(I)Lcom/huawei/hem/lm;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v1

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 27
    :cond_4
    throw v1

    :cond_5
    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    new-array p2, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_6
    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {p1, p2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_7
    const-string p1, "TYPE_GOAWAY length < 8: %s"

    new-array p3, v3, [Ljava/lang/Object;

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method public final g(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/huawei/hem/xl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/km;->b:Lcom/huawei/hem/km$a;

    iput p1, v0, Lcom/huawei/hem/km$a;->e:I

    iput p1, v0, Lcom/huawei/hem/km$a;->b:I

    .line 2
    iput-short p2, v0, Lcom/huawei/hem/km$a;->f:S

    .line 3
    iput-byte p3, v0, Lcom/huawei/hem/km$a;->c:B

    .line 4
    iput p4, v0, Lcom/huawei/hem/km$a;->d:I

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/km;->d:Lcom/huawei/hem/yl$a;

    .line 6
    :cond_0
    :goto_0
    iget-object p2, p1, Lcom/huawei/hem/yl$a;->b:Lcom/huawei/hem/jn;

    invoke-interface {p2}, Lcom/huawei/hem/jn;->y()Z

    move-result p2

    if-nez p2, :cond_d

    .line 7
    iget-object p2, p1, Lcom/huawei/hem/yl$a;->b:Lcom/huawei/hem/jn;

    invoke-interface {p2}, Lcom/huawei/hem/jn;->readByte()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-eq p2, p3, :cond_c

    and-int/lit16 p4, p2, 0x80

    const/4 v0, 0x1

    if-ne p4, p3, :cond_4

    const/16 p3, 0x7f

    .line 8
    invoke-virtual {p1, p2, p3}, Lcom/huawei/hem/yl$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    if-ltz p2, :cond_1

    .line 9
    sget-object p3, Lcom/huawei/hem/yl;->a:[Lcom/huawei/hem/xl;

    array-length p3, p3

    sub-int/2addr p3, v0

    if-gt p2, p3, :cond_1

    move p3, v0

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 10
    sget-object p3, Lcom/huawei/hem/yl;->a:[Lcom/huawei/hem/xl;

    aget-object p2, p3, p2

    .line 11
    iget-object p3, p1, Lcom/huawei/hem/yl$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    sget-object p3, Lcom/huawei/hem/yl;->a:[Lcom/huawei/hem/xl;

    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lcom/huawei/hem/yl$a;->b(I)I

    move-result p3

    if-ltz p3, :cond_3

    .line 13
    iget-object p4, p1, Lcom/huawei/hem/yl$a;->e:[Lcom/huawei/hem/xl;

    array-length v1, p4

    if-ge p3, v1, :cond_3

    .line 14
    iget-object p2, p1, Lcom/huawei/hem/yl$a;->a:Ljava/util/List;

    aget-object p3, p4, p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Header index too large "

    invoke-static {p3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/2addr p2, v0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, -0x1

    const/16 p4, 0x40

    if-ne p2, p4, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/huawei/hem/yl$a;->f()Lcom/huawei/hem/kn;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/yl;->a(Lcom/huawei/hem/kn;)Lcom/huawei/hem/kn;

    .line 17
    invoke-virtual {p1}, Lcom/huawei/hem/yl$a;->f()Lcom/huawei/hem/kn;

    move-result-object p4

    .line 18
    new-instance v0, Lcom/huawei/hem/xl;

    invoke-direct {v0, p2, p4}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/kn;)V

    invoke-virtual {p1, p3, v0}, Lcom/huawei/hem/yl$a;->e(ILcom/huawei/hem/xl;)V

    goto :goto_0

    :cond_5
    and-int/lit8 v1, p2, 0x40

    if-ne v1, p4, :cond_6

    const/16 p4, 0x3f

    .line 19
    invoke-virtual {p1, p2, p4}, Lcom/huawei/hem/yl$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 20
    invoke-virtual {p1, p2}, Lcom/huawei/hem/yl$a;->d(I)Lcom/huawei/hem/kn;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Lcom/huawei/hem/yl$a;->f()Lcom/huawei/hem/kn;

    move-result-object p4

    .line 22
    new-instance v0, Lcom/huawei/hem/xl;

    invoke-direct {v0, p2, p4}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/kn;)V

    invoke-virtual {p1, p3, v0}, Lcom/huawei/hem/yl$a;->e(ILcom/huawei/hem/xl;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_9

    const/16 p3, 0x1f

    .line 23
    invoke-virtual {p1, p2, p3}, Lcom/huawei/hem/yl$a;->g(II)I

    move-result p2

    iput p2, p1, Lcom/huawei/hem/yl$a;->d:I

    if-ltz p2, :cond_8

    .line 24
    iget p3, p1, Lcom/huawei/hem/yl$a;->c:I

    if-gt p2, p3, :cond_8

    .line 25
    iget p3, p1, Lcom/huawei/hem/yl$a;->h:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/huawei/hem/yl$a;->a()V

    goto/16 :goto_0

    :cond_7
    sub-int/2addr p3, p2

    .line 27
    invoke-virtual {p1, p3}, Lcom/huawei/hem/yl$a;->c(I)I

    goto/16 :goto_0

    .line 28
    :cond_8
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid dynamic table size update "

    invoke-static {p3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Lcom/huawei/hem/yl$a;->d:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/16 p3, 0x10

    if-eq p2, p3, :cond_b

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    const/16 p3, 0xf

    .line 29
    invoke-virtual {p1, p2, p3}, Lcom/huawei/hem/yl$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 30
    invoke-virtual {p1, p2}, Lcom/huawei/hem/yl$a;->d(I)Lcom/huawei/hem/kn;

    move-result-object p2

    .line 31
    invoke-virtual {p1}, Lcom/huawei/hem/yl$a;->f()Lcom/huawei/hem/kn;

    move-result-object p3

    .line 32
    iget-object p4, p1, Lcom/huawei/hem/yl$a;->a:Ljava/util/List;

    new-instance v0, Lcom/huawei/hem/xl;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/kn;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/huawei/hem/yl$a;->f()Lcom/huawei/hem/kn;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/yl;->a(Lcom/huawei/hem/kn;)Lcom/huawei/hem/kn;

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hem/yl$a;->f()Lcom/huawei/hem/kn;

    move-result-object p3

    .line 35
    iget-object p4, p1, Lcom/huawei/hem/yl$a;->a:Ljava/util/List;

    new-instance v0, Lcom/huawei/hem/xl;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/kn;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 36
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_d
    iget-object p1, p0, Lcom/huawei/hem/km;->d:Lcom/huawei/hem/yl$a;

    if-eqz p1, :cond_e

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Lcom/huawei/hem/yl$a;->a:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    iget-object p1, p1, Lcom/huawei/hem/yl$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2

    :cond_e
    const/4 p1, 0x0

    .line 40
    throw p1
.end method

.method public final i(Lcom/huawei/hem/km$b;IBI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p2, v3, :cond_7

    if-nez p4, :cond_6

    .line 1
    iget-object p2, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {p2}, Lcom/huawei/hem/jn;->readInt()I

    move-result p2

    .line 2
    iget-object p4, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {p4}, Lcom/huawei/hem/jn;->readInt()I

    move-result p4

    and-int/2addr p3, v2

    if-eqz p3, :cond_0

    move v1, v2

    .line 3
    :cond_0
    check-cast p1, Lcom/huawei/hem/am$g;

    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    .line 4
    iget-object p3, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    monitor-enter p3

    const-wide/16 v0, 0x1

    if-ne p2, v2, :cond_1

    .line 5
    :try_start_0
    iget-object p1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 6
    iget-wide v2, p1, Lcom/huawei/hem/am;->l:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/huawei/hem/am;->l:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p4, 0x2

    if-ne p2, p4, :cond_2

    .line 7
    iget-object p1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 8
    iget-wide v2, p1, Lcom/huawei/hem/am;->n:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/huawei/hem/am;->n:J

    goto :goto_0

    :cond_2
    const/4 p4, 0x3

    if-ne p2, p4, :cond_3

    .line 9
    iget-object p2, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 10
    iget-wide v2, p2, Lcom/huawei/hem/am;->o:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/huawei/hem/am;->o:J

    .line 11
    iget-object p1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 12
    :cond_3
    :goto_0
    monitor-exit p3

    goto :goto_2

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_4
    :try_start_1
    iget-object p3, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 14
    iget-object p3, p3, Lcom/huawei/hem/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    new-instance v0, Lcom/huawei/hem/am$f;

    iget-object p1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-direct {v0, p1, v2, p2, p4}, Lcom/huawei/hem/am$f;-><init>(Lcom/huawei/hem/am;ZII)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    return-void

    .line 16
    :cond_5
    throw v0

    :cond_6
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1, p2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_7
    const-string p1, "TYPE_PING length != 8: %s"

    new-array p3, v2, [Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public final j(Lcom/huawei/hem/km$b;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {p2}, Lcom/huawei/hem/jn;->readInt()I

    move-result p2

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    .line 2
    iget-object p2, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {p2}, Lcom/huawei/hem/jn;->readByte()B

    .line 3
    check-cast p1, Lcom/huawei/hem/am$g;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final k(Lcom/huawei/hem/km$b;IBI)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v1}, Lcom/huawei/hem/jn;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {v2}, Lcom/huawei/hem/jn;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int v8, v2, v3

    add-int/lit8 p2, p2, -0x4

    .line 3
    invoke-static {p2, p3, v1}, Lcom/huawei/hem/km;->a(IBS)I

    move-result p2

    .line 4
    invoke-virtual {p0, p2, v1, p3, p4}, Lcom/huawei/hem/km;->g(ISBI)Ljava/util/List;

    move-result-object v9

    .line 5
    check-cast p1, Lcom/huawei/hem/am$g;

    .line 6
    iget-object p1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, p1, Lcom/huawei/hem/am;->x:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    sget-object p2, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {p1, v8, p2}, Lcom/huawei/hem/am;->N(ILcom/huawei/hem/wl;)V

    .line 10
    monitor-exit p1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/huawei/hem/am;->x:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance p2, Lcom/huawei/hem/cm;

    const-string v6, "OkHttp %s Push Request[%s]"

    const/4 p3, 0x2

    new-array v7, p3, [Ljava/lang/Object;

    iget-object p3, p1, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    aput-object p3, v7, v0

    const/4 p3, 0x1

    .line 14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v7, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/huawei/hem/cm;-><init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    .line 15
    invoke-virtual {p1, p2}, Lcom/huawei/hem/am;->f(Lcom/huawei/hem/sk;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    return-void

    :catchall_0
    move-exception p2

    .line 16
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_2
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {p1, p2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method public final l(Lcom/huawei/hem/km$b;II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_4

    .line 1
    iget-object p2, p0, Lcom/huawei/hem/km;->a:Lcom/huawei/hem/jn;

    invoke-interface {p2}, Lcom/huawei/hem/jn;->readInt()I

    move-result p2

    int-to-long v3, p2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_3

    .line 2
    check-cast p1, Lcom/huawei/hem/am$g;

    if-nez p3, :cond_0

    .line 3
    iget-object v0, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p2, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-wide v1, p2, Lcom/huawei/hem/am;->r:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/huawei/hem/am;->r:J

    .line 5
    iget-object p1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {p1, p3}, Lcom/huawei/hem/am;->c(I)Lcom/huawei/hem/lm;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    monitor-enter p1

    .line 9
    :try_start_1
    iget-wide v0, p1, Lcom/huawei/hem/lm;->b:J

    add-long/2addr v0, v3

    iput-wide v0, p1, Lcom/huawei/hem/lm;->b:J

    if-lez p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "windowSizeIncrement was 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_4
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p3, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lcom/huawei/hem/zl;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method
