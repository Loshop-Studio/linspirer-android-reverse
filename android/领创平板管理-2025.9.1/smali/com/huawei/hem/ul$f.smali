.class public final Lcom/huawei/hem/ul$f;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.java"

# interfaces
.implements Lcom/huawei/hem/zn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/nn;

.field public b:Z

.field public final synthetic c:Lcom/huawei/hem/ul;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ul;Lcom/huawei/hem/ul$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/ul$f;->c:Lcom/huawei/hem/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/huawei/hem/nn;

    iget-object p2, p0, Lcom/huawei/hem/ul$f;->c:Lcom/huawei/hem/ul;

    .line 3
    iget-object p2, p2, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    .line 4
    invoke-interface {p2}, Lcom/huawei/hem/zn;->n()Lcom/huawei/hem/bo;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/huawei/hem/nn;-><init>(Lcom/huawei/hem/bo;)V

    iput-object p1, p0, Lcom/huawei/hem/ul$f;->a:Lcom/huawei/hem/nn;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/ul$f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/ul$f;->b:Z

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/ul$f;->c:Lcom/huawei/hem/ul;

    iget-object v1, p0, Lcom/huawei/hem/ul$f;->a:Lcom/huawei/hem/nn;

    invoke-static {v0, v1}, Lcom/huawei/hem/ul;->i(Lcom/huawei/hem/ul;Lcom/huawei/hem/nn;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/ul$f;->c:Lcom/huawei/hem/ul;

    const/4 v1, 0x3

    .line 5
    iput v1, v0, Lcom/huawei/hem/ul;->e:I

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/ul$f;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/ul$f;->c:Lcom/huawei/hem/ul;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    .line 4
    invoke-interface {v0}, Lcom/huawei/hem/in;->flush()V

    return-void
.end method

.method public n()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul$f;->a:Lcom/huawei/hem/nn;

    return-object v0
.end method

.method public p(Lcom/huawei/hem/hn;J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/ul$f;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-wide v1, p1, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/huawei/hem/tk;->c(JJJ)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/ul$f;->c:Lcom/huawei/hem/ul;

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
