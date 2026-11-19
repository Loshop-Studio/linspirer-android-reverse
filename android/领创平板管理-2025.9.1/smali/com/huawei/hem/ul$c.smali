.class public final Lcom/huawei/hem/ul$c;
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
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/nn;

.field public b:Z

.field public final synthetic c:Lcom/huawei/hem/ul;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ul;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/huawei/hem/nn;

    iget-object v0, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    .line 4
    invoke-interface {v0}, Lcom/huawei/hem/zn;->n()Lcom/huawei/hem/bo;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/huawei/hem/nn;-><init>(Lcom/huawei/hem/bo;)V

    iput-object p1, p0, Lcom/huawei/hem/ul$c;->a:Lcom/huawei/hem/nn;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/ul$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lcom/huawei/hem/ul$c;->b:Z

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    const-string v1, "0\r\n\r\n"

    .line 5
    invoke-interface {v0, v1}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    iget-object v1, p0, Lcom/huawei/hem/ul$c;->a:Lcom/huawei/hem/nn;

    invoke-static {v0, v1}, Lcom/huawei/hem/ul;->i(Lcom/huawei/hem/ul;Lcom/huawei/hem/nn;)V

    .line 7
    iget-object v0, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    const/4 v1, 0x3

    .line 8
    iput v1, v0, Lcom/huawei/hem/ul;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/ul$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    .line 4
    invoke-interface {v0}, Lcom/huawei/hem/in;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ul$c;->a:Lcom/huawei/hem/nn;

    return-object v0
.end method

.method public p(Lcom/huawei/hem/hn;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/ul$c;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    .line 4
    invoke-interface {v0, p2, p3}, Lcom/huawei/hem/in;->r(J)Lcom/huawei/hem/in;

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    .line 6
    iget-object v0, v0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    const-string v1, "\r\n"

    .line 7
    invoke-interface {v0, v1}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    .line 8
    iget-object v0, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    .line 9
    iget-object v0, v0, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V

    .line 11
    iget-object p1, p0, Lcom/huawei/hem/ul$c;->c:Lcom/huawei/hem/ul;

    .line 12
    iget-object p1, p1, Lcom/huawei/hem/ul;->d:Lcom/huawei/hem/in;

    .line 13
    invoke-interface {p1, v1}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
