.class public abstract Lcom/huawei/hem/ul$b;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.java"

# interfaces
.implements Lcom/huawei/hem/ao;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/nn;

.field public b:Z

.field public final synthetic c:Lcom/huawei/hem/ul;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ul;Lcom/huawei/hem/ul$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/ul$b;->c:Lcom/huawei/hem/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/huawei/hem/nn;

    iget-object p2, p0, Lcom/huawei/hem/ul$b;->c:Lcom/huawei/hem/ul;

    .line 3
    iget-object p2, p2, Lcom/huawei/hem/ul;->c:Lcom/huawei/hem/jn;

    .line 4
    invoke-interface {p2}, Lcom/huawei/hem/ao;->n()Lcom/huawei/hem/bo;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/huawei/hem/nn;-><init>(Lcom/huawei/hem/bo;)V

    iput-object p1, p0, Lcom/huawei/hem/ul$b;->a:Lcom/huawei/hem/nn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul$b;->c:Lcom/huawei/hem/ul;

    .line 2
    iget v1, v0, Lcom/huawei/hem/ul;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/ul$b;->a:Lcom/huawei/hem/nn;

    invoke-static {v0, v1}, Lcom/huawei/hem/ul;->i(Lcom/huawei/hem/ul;Lcom/huawei/hem/nn;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/ul$b;->c:Lcom/huawei/hem/ul;

    .line 5
    iput v2, v0, Lcom/huawei/hem/ul;->e:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state: "

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hem/ul$b;->c:Lcom/huawei/hem/ul;

    .line 7
    iget v2, v2, Lcom/huawei/hem/ul;->e:I

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Lcom/huawei/hem/hn;J)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/ul$b;->c:Lcom/huawei/hem/ul;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/ul;->c:Lcom/huawei/hem/jn;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lcom/huawei/hem/ul$b;->c:Lcom/huawei/hem/ul;

    .line 5
    iget-object p2, p2, Lcom/huawei/hem/ul;->b:Lcom/huawei/hem/fl;

    .line 6
    invoke-virtual {p2}, Lcom/huawei/hem/fl;->i()V

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hem/ul$b;->a()V

    .line 8
    throw p1
.end method

.method public n()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul$b;->a:Lcom/huawei/hem/nn;

    return-object v0
.end method
