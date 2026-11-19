.class public final Lcom/huawei/hem/vn;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/huawei/hem/jn;


# instance fields
.field public final a:Lcom/huawei/hem/hn;

.field public final b:Lcom/huawei/hem/ao;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ao;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/hn;

    invoke-direct {v0}, Lcom/huawei/hem/hn;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/vn;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/hn;->A(J)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public D()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/vn;->G(J)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->D()S

    move-result v0

    return v0
.end method

.method public F(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    add-long v5, p1, v3

    :goto_0
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object v7, p0

    move-wide v11, v5

    .line 1
    invoke-virtual/range {v7 .. v12}, Lcom/huawei/hem/vn;->a(BJJ)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {p1, v7, v8}, Lcom/huawei/hem/hn;->k(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, v5, v0

    if-gez v0, :cond_2

    .line 3
    invoke-virtual {p0, v5, v6}, Lcom/huawei/hem/vn;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    sub-long v1, v5, v3

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/hn;->d(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-long/2addr v3, v5

    .line 4
    invoke-virtual {p0, v3, v4}, Lcom/huawei/hem/vn;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, v5, v6}, Lcom/huawei/hem/hn;->d(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {p1, v5, v6}, Lcom/huawei/hem/hn;->k(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    new-instance v6, Lcom/huawei/hem/hn;

    invoke-direct {v6}, Lcom/huawei/hem/hn;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    .line 8
    iget-wide v7, v0, Lcom/huawei/hem/hn;->b:J

    .line 9
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hem/hn;->c(Lcom/huawei/hem/hn;JJ)Lcom/huawei/hem/hn;

    .line 10
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    .line 11
    iget-wide v2, v2, Lcom/huawei/hem/hn;->b:J

    .line 12
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v6}, Lcom/huawei/hem/hn;->g()Lcom/huawei/hem/kn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/kn;->hex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit < 0: "

    invoke-static {v1, p1, p2}, Lcom/huawei/hem/f6;->M(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public G(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/vn;->d(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public J(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hem/vn;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public K()J
    .locals 6

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/vn;->G(J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 2
    invoke-virtual {p0, v3, v4}, Lcom/huawei/hem/vn;->d(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3
    iget-object v3, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/huawei/hem/hn;->d(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 6
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->K()J

    move-result-wide v0

    return-wide v0
.end method

.method public L(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-object v1, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/hn;->q(Lcom/huawei/hem/ao;)J

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-wide v1, v0, Lcom/huawei/hem/hn;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/huawei/hem/hn;->i(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M(Lcom/huawei/hem/tn;)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/vn;->c:Z

    if-nez v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hem/hn;->l(Lcom/huawei/hem/tn;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    iget-object v2, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_2
    iget-object p1, p1, Lcom/huawei/hem/tn;->a:[Lcom/huawei/hem/kn;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/huawei/hem/kn;->size()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hem/hn;->skip(J)V

    return v0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(BJJ)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/vn;->c:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/hem/hn;->f(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-wide v1, v0, Lcom/huawei/hem/hn;->b:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(J)Lcom/huawei/hem/kn;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/vn;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/hn;->b(J)Lcom/huawei/hem/kn;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public c([B)V
    .locals 7

    .line 1
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/vn;->G(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->h([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-wide v3, v2, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    long-to-int v3, v3

    .line 4
    invoke-virtual {v2, p1, v1, v3}, Lcom/huawei/hem/hn;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/vn;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/vn;->c:Z

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    invoke-interface {v0}, Lcom/huawei/hem/ao;->close()V

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->a()V

    return-void
.end method

.method public d(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/vn;->c:Z

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-wide v1, v0, Lcom/huawei/hem/hn;->b:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount < 0: "

    invoke-static {v1, p1, p2}, Lcom/huawei/hem/f6;->M(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Lcom/huawei/hem/hn;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1
    iget-boolean v2, p0, Lcom/huawei/hem/vn;->c:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-wide v3, v2, Lcom/huawei/hem/hn;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-wide v0, v0, Lcom/huawei/hem/hn;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hem/hn;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {v0, p2, p3}, Lcom/huawei/hem/f6;->M(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/vn;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m()Lcom/huawei/hem/hn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    return-object v0
.end method

.method public n()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    invoke-interface {v0}, Lcom/huawei/hem/ao;->n()Lcom/huawei/hem/bo;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-wide v1, v0, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/vn;->G(J)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->readByte()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/vn;->G(J)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/vn;->G(J)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->readShort()S

    move-result v0

    return v0
.end method

.method public skip(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/vn;->c:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-wide v3, v2, Lcom/huawei/hem/hn;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    .line 5
    iget-wide v0, v0, Lcom/huawei/hem/hn;->b:J

    .line 6
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/hem/hn;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/vn;->F(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    iget-object v1, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/hn;->q(Lcom/huawei/hem/ao;)J

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->v()[B

    move-result-object v0

    return-object v0
.end method

.method public w()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/vn;->G(J)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->w()I

    move-result v0

    return v0
.end method

.method public x()Lcom/huawei/hem/hn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    return-object v0
.end method

.method public y()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/vn;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0}, Lcom/huawei/hem/hn;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/vn;->b:Lcom/huawei/hem/ao;

    iget-object v1, p0, Lcom/huawei/hem/vn;->a:Lcom/huawei/hem/hn;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
