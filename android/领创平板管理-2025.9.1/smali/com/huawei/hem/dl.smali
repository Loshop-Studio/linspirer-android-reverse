.class public final Lcom/huawei/hem/dl;
.super Ljava/lang/Object;
.source "Exchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/dl$b;,
        Lcom/huawei/hem/dl$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/kl;

.field public final b:Lcom/huawei/hem/kj;

.field public final c:Lcom/huawei/hem/vj;

.field public final d:Lcom/huawei/hem/el;

.field public final e:Lcom/huawei/hem/nl;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/kl;Lcom/huawei/hem/kj;Lcom/huawei/hem/vj;Lcom/huawei/hem/el;Lcom/huawei/hem/nl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/dl;->a:Lcom/huawei/hem/kl;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/dl;->b:Lcom/huawei/hem/kj;

    .line 4
    iput-object p3, p0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    .line 5
    iput-object p4, p0, Lcom/huawei/hem/dl;->d:Lcom/huawei/hem/el;

    .line 6
    iput-object p5, p0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    return-void
.end method


# virtual methods
.method public a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p5    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0, p5}, Lcom/huawei/hem/dl;->e(Ljava/io/IOException;)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p4, :cond_4

    if-eqz p5, :cond_2

    .line 2
    iget-object p2, p0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    throw p1

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz p2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    throw p1

    :cond_4
    :goto_0
    if-eqz p3, :cond_8

    if-eqz p5, :cond_6

    .line 6
    iget-object p2, p0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz p2, :cond_5

    goto :goto_1

    .line 7
    :cond_5
    throw p1

    .line 8
    :cond_6
    iget-object p2, p0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz p2, :cond_7

    goto :goto_1

    .line 9
    :cond_7
    throw p1

    .line 10
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/huawei/hem/dl;->a:Lcom/huawei/hem/kl;

    invoke-virtual {p1, p0, p4, p3, p5}, Lcom/huawei/hem/kl;->d(Lcom/huawei/hem/dl;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/huawei/hem/fl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v0}, Lcom/huawei/hem/nl;->h()Lcom/huawei/hem/fl;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/huawei/hem/gk;Z)Lcom/huawei/hem/zn;
    .locals 2

    .line 1
    iput-boolean p2, p0, Lcom/huawei/hem/dl;->f:Z

    .line 2
    iget-object p2, p1, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    .line 3
    invoke-virtual {p2}, Lcom/huawei/hem/jk;->a()J

    move-result-wide v0

    .line 4
    iget-object p2, p0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {p2, p1, v0, v1}, Lcom/huawei/hem/nl;->f(Lcom/huawei/hem/gk;J)Lcom/huawei/hem/zn;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/huawei/hem/dl$a;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/huawei/hem/dl$a;-><init>(Lcom/huawei/hem/dl;Lcom/huawei/hem/zn;J)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public d(Z)Lcom/huawei/hem/kk$a;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v1, p1}, Lcom/huawei/hem/nl;->g(Z)Lcom/huawei/hem/kk$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/huawei/hem/rk;->a:Lcom/huawei/hem/rk;

    check-cast v1, Lcom/huawei/hem/dk$a;

    if-eqz v1, :cond_0

    .line 3
    iput-object p0, p1, Lcom/huawei/hem/kk$a;->m:Lcom/huawei/hem/dl;

    goto :goto_0

    :cond_0
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    iget-object v1, p0, Lcom/huawei/hem/dl;->c:Lcom/huawei/hem/vj;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/huawei/hem/dl;->e(Ljava/io/IOException;)V

    .line 6
    throw p1

    .line 7
    :cond_2
    throw v0
.end method

.method public e(Ljava/io/IOException;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/dl;->d:Lcom/huawei/hem/el;

    invoke-virtual {v0}, Lcom/huawei/hem/el;->e()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/dl;->e:Lcom/huawei/hem/nl;

    invoke-interface {v0}, Lcom/huawei/hem/nl;->h()Lcom/huawei/hem/fl;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/fl;->b:Lcom/huawei/hem/gl;

    monitor-enter v1

    .line 4
    :try_start_0
    instance-of v2, p1, Lcom/huawei/hem/qm;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    check-cast p1, Lcom/huawei/hem/qm;

    iget-object p1, p1, Lcom/huawei/hem/qm;->errorCode:Lcom/huawei/hem/wl;

    .line 6
    sget-object v2, Lcom/huawei/hem/wl;->REFUSED_STREAM:Lcom/huawei/hem/wl;

    if-ne p1, v2, :cond_0

    .line 7
    iget p1, v0, Lcom/huawei/hem/fl;->n:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/huawei/hem/fl;->n:I

    if-le p1, v3, :cond_3

    .line 8
    iput-boolean v3, v0, Lcom/huawei/hem/fl;->k:Z

    .line 9
    iget p1, v0, Lcom/huawei/hem/fl;->l:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/huawei/hem/fl;->l:I

    goto :goto_0

    .line 10
    :cond_0
    sget-object v2, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    if-eq p1, v2, :cond_3

    .line 11
    iput-boolean v3, v0, Lcom/huawei/hem/fl;->k:Z

    .line 12
    iget p1, v0, Lcom/huawei/hem/fl;->l:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/huawei/hem/fl;->l:I

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hem/fl;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/huawei/hem/vl;

    if-eqz v2, :cond_3

    .line 14
    :cond_2
    iput-boolean v3, v0, Lcom/huawei/hem/fl;->k:Z

    .line 15
    iget v2, v0, Lcom/huawei/hem/fl;->m:I

    if-nez v2, :cond_3

    .line 16
    iget-object v2, v0, Lcom/huawei/hem/fl;->b:Lcom/huawei/hem/gl;

    iget-object v4, v0, Lcom/huawei/hem/fl;->c:Lcom/huawei/hem/nk;

    invoke-virtual {v2, v4, p1}, Lcom/huawei/hem/gl;->b(Lcom/huawei/hem/nk;Ljava/io/IOException;)V

    .line 17
    iget p1, v0, Lcom/huawei/hem/fl;->l:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/huawei/hem/fl;->l:I

    .line 18
    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
