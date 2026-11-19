.class public final Lcom/huawei/hem/un;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lcom/huawei/hem/in;


# instance fields
.field public final a:Lcom/huawei/hem/hn;

.field public final b:Lcom/huawei/hem/zn;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/zn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/hn;

    invoke-direct {v0}, Lcom/huawei/hem/hn;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/un;->b:Lcom/huawei/hem/zn;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public B([B)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->P([B)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(Lcom/huawei/hem/kn;)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->O(Lcom/huawei/hem/kn;)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E()Lcom/huawei/hem/in;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    .line 3
    iget-wide v1, v0, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/huawei/hem/hn;->a:Lcom/huawei/hem/wn;

    iget-object v0, v0, Lcom/huawei/hem/wn;->g:Lcom/huawei/hem/wn;

    .line 5
    iget v5, v0, Lcom/huawei/hem/wn;->c:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_1

    iget-boolean v6, v0, Lcom/huawei/hem/wn;->e:Z

    if-eqz v6, :cond_1

    .line 6
    iget v0, v0, Lcom/huawei/hem/wn;->b:I

    sub-int/2addr v5, v0

    int-to-long v5, v5

    sub-long/2addr v1, v5

    :cond_1
    :goto_0
    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/huawei/hem/un;->b:Lcom/huawei/hem/zn;

    iget-object v3, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-interface {v0, v3, v1, v2}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V

    :cond_2
    return-object p0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H(Ljava/lang/String;)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->W(Ljava/lang/String;)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I(J)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/hn;->S(J)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    iget-wide v1, v1, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/un;->b:Lcom/huawei/hem/zn;

    iget-object v2, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    iget-object v3, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    iget-wide v3, v3, Lcom/huawei/hem/hn;->b:J

    invoke-interface {v1, v2, v3, v4}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/huawei/hem/un;->b:Lcom/huawei/hem/zn;

    invoke-interface {v2}, Lcom/huawei/hem/zn;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {v1}, Lcom/huawei/hem/co;->e(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    iget-wide v1, v0, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/huawei/hem/un;->b:Lcom/huawei/hem/zn;

    invoke-interface {v3, v0, v1, v2}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/un;->b:Lcom/huawei/hem/zn;

    invoke-interface {v0}, Lcom/huawei/hem/zn;->flush()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m()Lcom/huawei/hem/hn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    return-object v0
.end method

.method public n()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/un;->b:Lcom/huawei/hem/zn;

    invoke-interface {v0}, Lcom/huawei/hem/zn;->n()Lcom/huawei/hem/bo;

    move-result-object v0

    return-object v0
.end method

.method public o([BII)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hem/hn;->Q([BII)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Lcom/huawei/hem/hn;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hem/hn;->p(Lcom/huawei/hem/hn;J)V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lcom/huawei/hem/ao;)J
    .locals 6

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    const-wide/16 v3, 0x2000

    move-object v5, p1

    check-cast v5, Lcom/huawei/hem/rn$a;

    invoke-virtual {v5, v2, v3, v4}, Lcom/huawei/hem/rn$a;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public r(J)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/hn;->T(J)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(I)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->V(I)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(I)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->U(I)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/un;->b:Lcom/huawei/hem/zn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/un;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/un;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/hn;->R(I)Lcom/huawei/hem/hn;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/un;->E()Lcom/huawei/hem/in;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
