.class public final Lcom/huawei/hem/dl$a;
.super Lcom/huawei/hem/ln;
.source "Exchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public c:J

.field public d:J

.field public e:Z

.field public final synthetic f:Lcom/huawei/hem/dl;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/dl;Lcom/huawei/hem/zn;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/dl$a;->f:Lcom/huawei/hem/dl;

    .line 2
    invoke-direct {p0, p2}, Lcom/huawei/hem/ln;-><init>(Lcom/huawei/hem/zn;)V

    .line 3
    iput-wide p3, p0, Lcom/huawei/hem/dl$a;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 7
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/dl$a;->b:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/dl$a;->b:Z

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/dl$a;->f:Lcom/huawei/hem/dl;

    iget-wide v2, p0, Lcom/huawei/hem/dl$a;->d:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/hem/dl;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/dl$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/dl$a;->e:Z

    .line 3
    iget-wide v0, p0, Lcom/huawei/hem/dl$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/huawei/hem/dl$a;->d:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/ln;->a:Lcom/huawei/hem/zn;

    invoke-interface {v0}, Lcom/huawei/hem/zn;->close()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/huawei/hem/dl$a;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/huawei/hem/dl$a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/ln;->a:Lcom/huawei/hem/zn;

    invoke-interface {v0}, Lcom/huawei/hem/zn;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/huawei/hem/dl$a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public p(Lcom/huawei/hem/hn;J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/dl$a;->e:Z

    if-nez v0, :cond_2

    .line 2
    iget-wide v0, p0, Lcom/huawei/hem/dl$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/huawei/hem/dl$a;->d:J

    add-long/2addr v2, p2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected "

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/huawei/hem/dl$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/hem/dl$a;->d:J

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/ln;->a:Lcom/huawei/hem/zn;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V

    .line 5
    iget-wide v0, p0, Lcom/huawei/hem/dl$a;->d:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/huawei/hem/dl$a;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/huawei/hem/dl$a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
