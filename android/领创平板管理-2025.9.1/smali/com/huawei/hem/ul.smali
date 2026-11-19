.class public final Lcom/huawei/hem/ul;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.java"

# interfaces
.implements Lcom/huawei/hem/nl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/ul$g;,
        Lcom/huawei/hem/ul$d;,
        Lcom/huawei/hem/ul$e;,
        Lcom/huawei/hem/ul$b;,
        Lcom/huawei/hem/ul$c;,
        Lcom/huawei/hem/ul$f;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/dk;

.field public final b:Lcom/huawei/hem/fl;

.field public final c:Lcom/huawei/hem/jn;

.field public final d:Lcom/huawei/hem/in;

.field public e:I

.field public f:J

.field public g:Lcom/huawei/hem/yj;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/fl;Lcom/huawei/hem/jn;Lcom/huawei/hem/in;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/huawei/hem/ul;->e:I

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, Lcom/huawei/hem/ul;->f:J

    .line 4
    iput-object p1, p0, Lcom/huawei/hem/ul;->a:Lcom/huawei/hem/dk;

    .line 5
    iput-object p2, p0, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    .line 6
    iput-object p3, p0, Lcom/huawei/hem/ul;->c:Lcom/huawei/hem/jn;

    .line 7
    iput-object p4, p0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    return-void
.end method

.method public static i(Lcom/huawei/hem/ul;Lcom/huawei/hem/nn;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p1, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    .line 2
    sget-object v0, Lcom/huawei/hem/bo;->d:Lcom/huawei/hem/bo;

    .line 3
    iput-object v0, p1, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/bo;->a()Lcom/huawei/hem/bo;

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/bo;->b()Lcom/huawei/hem/bo;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    invoke-interface {v0}, Lcom/huawei/hem/in;->flush()V

    return-void
.end method

.method public b(Lcom/huawei/hem/gk;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/nk;->b:Ljava/net/Proxy;

    .line 4
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v2, p1, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, p1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 10
    iget-object v2, v2, Lcom/huawei/hem/zj;->a:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 15
    invoke-static {v0}, Lcom/huawei/hem/uk;->b(Lcom/huawei/hem/zj;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object p1, p1, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hem/ul;->m(Lcom/huawei/hem/yj;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    invoke-interface {v0}, Lcom/huawei/hem/in;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/fl;->d:Ljava/net/Socket;

    invoke-static {v0}, Lcom/huawei/hem/tk;->e(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/huawei/hem/kk;)J
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/pl;->b(Lcom/huawei/hem/kk;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "chunked"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    .line 4
    :cond_2
    invoke-static {p1}, Lcom/huawei/hem/pl;->a(Lcom/huawei/hem/kk;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Lcom/huawei/hem/kk;)Lcom/huawei/hem/ao;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/pl;->b(Lcom/huawei/hem/kk;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/ul;->j(J)Lcom/huawei/hem/ao;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "chunked"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x5

    const-string v3, "state: "

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p1, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 6
    iget-object p1, p1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 7
    iget v0, p0, Lcom/huawei/hem/ul;->e:I

    if-ne v0, v4, :cond_2

    .line 8
    iput v2, p0, Lcom/huawei/hem/ul;->e:I

    .line 9
    new-instance v0, Lcom/huawei/hem/ul$d;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hem/ul$d;-><init>(Lcom/huawei/hem/ul;Lcom/huawei/hem/zj;)V

    return-object v0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/hem/ul;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    invoke-static {p1}, Lcom/huawei/hem/pl;->a(Lcom/huawei/hem/kk;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p0, v5, v6}, Lcom/huawei/hem/ul;->j(J)Lcom/huawei/hem/ao;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    iget p1, p0, Lcom/huawei/hem/ul;->e:I

    if-ne p1, v4, :cond_5

    .line 14
    iput v2, p0, Lcom/huawei/hem/ul;->e:I

    .line 15
    iget-object p1, p0, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    invoke-virtual {p1}, Lcom/huawei/hem/fl;->i()V

    .line 16
    new-instance p1, Lcom/huawei/hem/ul$g;

    invoke-direct {p1, p0, v1}, Lcom/huawei/hem/ul$g;-><init>(Lcom/huawei/hem/ul;Lcom/huawei/hem/ul$a;)V

    return-object p1

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/hem/ul;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lcom/huawei/hem/gk;J)Lcom/huawei/hem/zn;
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const-string v1, "state: "

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lcom/huawei/hem/ul;->e:I

    if-ne p1, v2, :cond_0

    .line 4
    iput v0, p0, Lcom/huawei/hem/ul;->e:I

    .line 5
    new-instance p1, Lcom/huawei/hem/ul$c;

    invoke-direct {p1, p0}, Lcom/huawei/hem/ul$c;-><init>(Lcom/huawei/hem/ul;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/huawei/hem/ul;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    .line 7
    iget p1, p0, Lcom/huawei/hem/ul;->e:I

    if-ne p1, v2, :cond_2

    .line 8
    iput v0, p0, Lcom/huawei/hem/ul;->e:I

    .line 9
    new-instance p1, Lcom/huawei/hem/ul$f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/huawei/hem/ul$f;-><init>(Lcom/huawei/hem/ul;Lcom/huawei/hem/ul$a;)V

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/huawei/hem/ul;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Z)Lcom/huawei/hem/kk$a;
    .locals 4

    .line 1
    iget v0, p0, Lcom/huawei/hem/ul;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "state: "

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/hem/ul;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hem/ul;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/tl;->a(Ljava/lang/String;)Lcom/huawei/hem/tl;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/huawei/hem/kk$a;

    invoke-direct {v2}, Lcom/huawei/hem/kk$a;-><init>()V

    iget-object v3, v0, Lcom/huawei/hem/tl;->a:Lcom/huawei/hem/ek;

    .line 5
    iput-object v3, v2, Lcom/huawei/hem/kk$a;->b:Lcom/huawei/hem/ek;

    .line 6
    iget v3, v0, Lcom/huawei/hem/tl;->b:I

    .line 7
    iput v3, v2, Lcom/huawei/hem/kk$a;->c:I

    .line 8
    iget-object v3, v0, Lcom/huawei/hem/tl;->c:Ljava/lang/String;

    .line 9
    iput-object v3, v2, Lcom/huawei/hem/kk$a;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hem/ul;->l()Lcom/huawei/hem/yj;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hem/kk$a;->e(Lcom/huawei/hem/yj;)Lcom/huawei/hem/kk$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 11
    iget p1, v0, Lcom/huawei/hem/tl;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_2
    iget p1, v0, Lcom/huawei/hem/tl;->b:I

    if-ne p1, v3, :cond_3

    .line 13
    iput v1, p0, Lcom/huawei/hem/ul;->e:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    .line 14
    iput p1, p0, Lcom/huawei/hem/ul;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    .line 17
    iget-object v0, v0, Lcom/huawei/hem/nk;->a:Lcom/huawei/hem/fj;

    .line 18
    iget-object v0, v0, Lcom/huawei/hem/fj;->a:Lcom/huawei/hem/zj;

    .line 19
    invoke-virtual {v0}, Lcom/huawei/hem/zj;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "unknown"

    .line 20
    :goto_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-static {v2, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()Lcom/huawei/hem/fl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    return-object v0
.end method

.method public final j(J)Lcom/huawei/hem/ao;
    .locals 2

    .line 1
    iget v0, p0, Lcom/huawei/hem/ul;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/huawei/hem/ul;->e:I

    .line 3
    new-instance v0, Lcom/huawei/hem/ul$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hem/ul$e;-><init>(Lcom/huawei/hem/ul;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/huawei/hem/ul;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul;->c:Lcom/huawei/hem/jn;

    iget-wide v1, p0, Lcom/huawei/hem/ul;->f:J

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/jn;->F(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/huawei/hem/ul;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/huawei/hem/ul;->f:J

    return-object v0
.end method

.method public final l()Lcom/huawei/hem/yj;
    .locals 6

    .line 1
    new-instance v0, Lcom/huawei/hem/yj$a;

    invoke-direct {v0}, Lcom/huawei/hem/yj$a;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hem/ul;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    sget-object v2, Lcom/huawei/hem/rk;->a:Lcom/huawei/hem/rk;

    check-cast v2, Lcom/huawei/hem/dk$a;

    if-eqz v2, :cond_2

    const-string v2, ":"

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hem/yj$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/yj$a;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, v0, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v0, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, v0, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 12
    throw v0

    .line 13
    :cond_3
    new-instance v1, Lcom/huawei/hem/yj;

    invoke-direct {v1, v0}, Lcom/huawei/hem/yj;-><init>(Lcom/huawei/hem/yj$a;)V

    return-object v1
.end method

.method public m(Lcom/huawei/hem/yj;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/huawei/hem/ul;->e:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    invoke-interface {v0, p2}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hem/yj;->g()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    invoke-virtual {p1, p2}, Lcom/huawei/hem/yj;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Lcom/huawei/hem/yj;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    invoke-interface {p1, v0}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/huawei/hem/ul;->e:I

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/huawei/hem/ul;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
