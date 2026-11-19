.class public Lcom/huawei/hem/ul$d;
.super Lcom/huawei/hem/ul$b;
.source "Http1ExchangeCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final d:Lcom/huawei/hem/zj;

.field public e:J

.field public f:Z

.field public final synthetic g:Lcom/huawei/hem/ul;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ul;Lcom/huawei/hem/zj;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/ul$d;->g:Lcom/huawei/hem/ul;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hem/ul$b;-><init>(Lcom/huawei/hem/ul;Lcom/huawei/hem/ul$a;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/huawei/hem/ul$d;->e:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/huawei/hem/ul$d;->f:Z

    .line 4
    iput-object p2, p0, Lcom/huawei/hem/ul$d;->d:Lcom/huawei/hem/zj;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/ul$b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hem/ul$d;->f:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/huawei/hem/tk;->j(Lcom/huawei/hem/ao;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/ul$d;->g:Lcom/huawei/hem/ul;

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/fl;->i()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/ul$b;->a()V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/huawei/hem/ul$b;->b:Z

    return-void
.end method

.method public e(Lcom/huawei/hem/hn;J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 1
    iget-boolean v2, p0, Lcom/huawei/hem/ul$b;->b:Z

    if-nez v2, :cond_8

    .line 2
    iget-boolean v2, p0, Lcom/huawei/hem/ul$d;->f:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 3
    :cond_0
    iget-wide v5, p0, Lcom/huawei/hem/ul$d;->e:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_1

    cmp-long v2, v5, v3

    if-nez v2, :cond_5

    .line 4
    :cond_1
    iget-wide v5, p0, Lcom/huawei/hem/ul$d;->e:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/huawei/hem/ul$d;->g:Lcom/huawei/hem/ul;

    .line 6
    iget-object v2, v2, Lcom/huawei/hem/ul;->c:Lcom/huawei/hem/jn;

    .line 7
    invoke-interface {v2}, Lcom/huawei/hem/jn;->u()Ljava/lang/String;

    .line 8
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/ul$d;->g:Lcom/huawei/hem/ul;

    .line 9
    iget-object v2, v2, Lcom/huawei/hem/ul;->c:Lcom/huawei/hem/jn;

    .line 10
    invoke-interface {v2}, Lcom/huawei/hem/jn;->K()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/huawei/hem/ul$d;->e:J

    .line 11
    iget-object v2, p0, Lcom/huawei/hem/ul$d;->g:Lcom/huawei/hem/ul;

    .line 12
    iget-object v2, v2, Lcom/huawei/hem/ul;->c:Lcom/huawei/hem/jn;

    .line 13
    invoke-interface {v2}, Lcom/huawei/hem/jn;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-wide v5, p0, Lcom/huawei/hem/ul$d;->e:J

    cmp-long v5, v5, v0

    if-ltz v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_7

    .line 15
    :cond_3
    iget-wide v5, p0, Lcom/huawei/hem/ul$d;->e:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/huawei/hem/ul$d;->f:Z

    .line 17
    iget-object v0, p0, Lcom/huawei/hem/ul$d;->g:Lcom/huawei/hem/ul;

    .line 18
    invoke-virtual {v0}, Lcom/huawei/hem/ul;->l()Lcom/huawei/hem/yj;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/huawei/hem/ul;->g:Lcom/huawei/hem/yj;

    .line 20
    iget-object v0, p0, Lcom/huawei/hem/ul$d;->g:Lcom/huawei/hem/ul;

    .line 21
    iget-object v1, v0, Lcom/huawei/hem/ul;->a:Lcom/huawei/hem/dk;

    .line 22
    iget-object v1, v1, Lcom/huawei/hem/dk;->i:Lcom/huawei/hem/rj;

    .line 23
    iget-object v2, p0, Lcom/huawei/hem/ul$d;->d:Lcom/huawei/hem/zj;

    .line 24
    iget-object v0, v0, Lcom/huawei/hem/ul;->g:Lcom/huawei/hem/yj;

    .line 25
    invoke-static {v1, v2, v0}, Lcom/huawei/hem/pl;->d(Lcom/huawei/hem/rj;Lcom/huawei/hem/zj;Lcom/huawei/hem/yj;)V

    .line 26
    invoke-virtual {p0}, Lcom/huawei/hem/ul$b;->a()V

    .line 27
    :cond_4
    iget-boolean v0, p0, Lcom/huawei/hem/ul$d;->f:Z

    if-nez v0, :cond_5

    return-wide v3

    .line 28
    :cond_5
    iget-wide v0, p0, Lcom/huawei/hem/ul$d;->e:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lcom/huawei/hem/ul$b;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_6

    .line 29
    iget-wide v0, p0, Lcom/huawei/hem/ul$d;->e:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/hem/ul$d;->e:J

    return-wide p1

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/huawei/hem/ul$d;->g:Lcom/huawei/hem/ul;

    .line 31
    iget-object p1, p1, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hem/fl;->i()V

    .line 33
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/huawei/hem/ul$b;->a()V

    .line 35
    throw p1

    .line 36
    :cond_7
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected chunk size and optional extensions but was \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/huawei/hem/ul$d;->e:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 37
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {v0, p2, p3}, Lcom/huawei/hem/f6;->M(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
