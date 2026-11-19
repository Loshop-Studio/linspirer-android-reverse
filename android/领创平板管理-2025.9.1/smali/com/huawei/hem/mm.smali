.class public final Lcom/huawei/hem/mm;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lcom/huawei/hem/in;

.field public final b:Z

.field public final c:Lcom/huawei/hem/hn;

.field public d:I

.field public e:Z

.field public final f:Lcom/huawei/hem/yl$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hem/zl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/mm;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/in;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    .line 3
    iput-boolean p2, p0, Lcom/huawei/hem/mm;->b:Z

    .line 4
    new-instance p1, Lcom/huawei/hem/hn;

    invoke-direct {p1}, Lcom/huawei/hem/hn;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/mm;->c:Lcom/huawei/hem/hn;

    .line 5
    new-instance p2, Lcom/huawei/hem/yl$b;

    invoke-direct {p2, p1}, Lcom/huawei/hem/yl$b;-><init>(Lcom/huawei/hem/hn;)V

    iput-object p2, p0, Lcom/huawei/hem/mm;->f:Lcom/huawei/hem/yl$b;

    const/16 p1, 0x4000

    .line 6
    iput p1, p0, Lcom/huawei/hem/mm;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/huawei/hem/pm;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    if-nez v0, :cond_8

    .line 2
    iget v0, p0, Lcom/huawei/hem/mm;->d:I

    .line 3
    iget v1, p1, Lcom/huawei/hem/pm;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/huawei/hem/pm;->b:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    .line 4
    :cond_0
    iput v0, p0, Lcom/huawei/hem/mm;->d:I

    .line 5
    iget v0, p1, Lcom/huawei/hem/pm;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/huawei/hem/pm;->b:[I

    aget v0, v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_7

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/mm;->f:Lcom/huawei/hem/yl$b;

    .line 7
    iget v3, p1, Lcom/huawei/hem/pm;->a:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/huawei/hem/pm;->b:[I

    aget v1, p1, v2

    :cond_2
    if-eqz v0, :cond_6

    const/16 p1, 0x4000

    .line 8
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 9
    iget v1, v0, Lcom/huawei/hem/yl$b;->e:I

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    if-ge p1, v1, :cond_4

    .line 10
    iget v1, v0, Lcom/huawei/hem/yl$b;->c:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/huawei/hem/yl$b;->c:I

    .line 11
    :cond_4
    iput-boolean v2, v0, Lcom/huawei/hem/yl$b;->d:Z

    .line 12
    iput p1, v0, Lcom/huawei/hem/yl$b;->e:I

    .line 13
    iget v1, v0, Lcom/huawei/hem/yl$b;->i:I

    if-ge p1, v1, :cond_7

    if-nez p1, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/huawei/hem/yl$b;->a()V

    goto :goto_1

    :cond_5
    sub-int/2addr v1, p1

    .line 15
    invoke-virtual {v0, v1}, Lcom/huawei/hem/yl$b;->b(I)I

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_7
    :goto_1
    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0, p1, v2}, Lcom/huawei/hem/mm;->d(IIBB)V

    .line 18
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {p1}, Lcom/huawei/hem/in;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_8
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(ZILcom/huawei/hem/hn;I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    int-to-byte p1, p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p4, v0, p1}, Lcom/huawei/hem/mm;->d(IIBB)V

    if-lez p4, :cond_1

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {v0}, Lcom/huawei/hem/zn;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(IIBB)V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/mm;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hem/mm;->g:Ljava/util/logging/Logger;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/huawei/hem/zl;->a(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget v0, p0, Lcom/huawei/hem/mm;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 4
    invoke-interface {v0, v1}, Lcom/huawei/hem/in;->z(I)Lcom/huawei/hem/in;

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 5
    invoke-interface {v0, v1}, Lcom/huawei/hem/in;->z(I)Lcom/huawei/hem/in;

    and-int/lit16 p2, p2, 0xff

    .line 6
    invoke-interface {v0, p2}, Lcom/huawei/hem/in;->z(I)Lcom/huawei/hem/in;

    .line 7
    iget-object p2, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lcom/huawei/hem/in;->z(I)Lcom/huawei/hem/in;

    .line 8
    iget-object p2, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lcom/huawei/hem/in;->z(I)Lcom/huawei/hem/in;

    .line 9
    iget-object p2, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/huawei/hem/in;->t(I)Lcom/huawei/hem/in;

    return-void

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lcom/huawei/hem/zl;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v2

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lcom/huawei/hem/zl;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v2
.end method

.method public declared-synchronized f(ILcom/huawei/hem/wl;[B)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p2, Lcom/huawei/hem/wl;->httpCode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/huawei/hem/mm;->d(IIBB)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {v0, p1}, Lcom/huawei/hem/in;->t(I)Lcom/huawei/hem/in;

    .line 6
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    iget p2, p2, Lcom/huawei/hem/wl;->httpCode:I

    invoke-interface {p1, p2}, Lcom/huawei/hem/in;->t(I)Lcom/huawei/hem/in;

    .line 7
    array-length p1, p3

    if-lez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {p1, p3}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {p1}, Lcom/huawei/hem/in;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2}, Lcom/huawei/hem/zl;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_2
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {v0}, Lcom/huawei/hem/in;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/huawei/hem/xl;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/mm;->f:Lcom/huawei/hem/yl$b;

    invoke-virtual {v0, p3}, Lcom/huawei/hem/yl$b;->e(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Lcom/huawei/hem/mm;->c:Lcom/huawei/hem/hn;

    .line 4
    iget-wide v0, p3, Lcom/huawei/hem/hn;->b:J

    .line 5
    iget p3, p0, Lcom/huawei/hem/mm;->d:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p2, p3, p1, v5}, Lcom/huawei/hem/mm;->d(IIBB)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    iget-object p3, p0, Lcom/huawei/hem/mm;->c:Lcom/huawei/hem/hn;

    invoke-interface {p1, p3, v2, v3}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    .line 8
    invoke-virtual {p0, p2, v0, v1}, Lcom/huawei/hem/mm;->k(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(ZII)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 2
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/huawei/hem/mm;->d(IIBB)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {p1, p2}, Lcom/huawei/hem/in;->t(I)Lcom/huawei/hem/in;

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {p1, p3}, Lcom/huawei/hem/in;->t(I)Lcom/huawei/hem/in;

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {p1}, Lcom/huawei/hem/in;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(ILcom/huawei/hem/wl;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p2, Lcom/huawei/hem/wl;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/huawei/hem/mm;->d(IIBB)V

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    iget p2, p2, Lcom/huawei/hem/wl;->httpCode:I

    invoke-interface {p1, p2}, Lcom/huawei/hem/in;->t(I)Lcom/huawei/hem/in;

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {p1}, Lcom/huawei/hem/in;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(IJ)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/mm;->e:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    const/16 v2, 0x8

    .line 2
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/huawei/hem/mm;->d(IIBB)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/huawei/hem/in;->t(I)Lcom/huawei/hem/in;

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    invoke-interface {p1}, Lcom/huawei/hem/in;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    .line 7
    invoke-static {p1, v0}, Lcom/huawei/hem/zl;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k(IJ)V
    .locals 6

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1
    iget v2, p0, Lcom/huawei/hem/mm;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr p2, v3

    const/16 v5, 0x9

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/huawei/hem/mm;->d(IIBB)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/mm;->a:Lcom/huawei/hem/in;

    iget-object v1, p0, Lcom/huawei/hem/mm;->c:Lcom/huawei/hem/hn;

    invoke-interface {v0, v1, v3, v4}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V

    goto :goto_0

    :cond_1
    return-void
.end method
