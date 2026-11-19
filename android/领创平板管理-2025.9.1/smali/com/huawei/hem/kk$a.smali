.class public Lcom/huawei/hem/kk$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/gk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Lcom/huawei/hem/ek;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lcom/huawei/hem/xj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public f:Lcom/huawei/hem/yj$a;

.field public g:Lcom/huawei/hem/mk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public h:Lcom/huawei/hem/kk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public i:Lcom/huawei/hem/kk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public j:Lcom/huawei/hem/kk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public k:J

.field public l:J

.field public m:Lcom/huawei/hem/dl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/huawei/hem/kk$a;->c:I

    .line 3
    new-instance v0, Lcom/huawei/hem/yj$a;

    invoke-direct {v0}, Lcom/huawei/hem/yj$a;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->f:Lcom/huawei/hem/yj$a;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/kk;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/huawei/hem/kk$a;->c:I

    .line 6
    iget-object v0, p1, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->a:Lcom/huawei/hem/gk;

    .line 7
    iget-object v0, p1, Lcom/huawei/hem/kk;->b:Lcom/huawei/hem/ek;

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->b:Lcom/huawei/hem/ek;

    .line 8
    iget v0, p1, Lcom/huawei/hem/kk;->c:I

    iput v0, p0, Lcom/huawei/hem/kk$a;->c:I

    .line 9
    iget-object v0, p1, Lcom/huawei/hem/kk;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/huawei/hem/kk;->e:Lcom/huawei/hem/xj;

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->e:Lcom/huawei/hem/xj;

    .line 11
    iget-object v0, p1, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    invoke-virtual {v0}, Lcom/huawei/hem/yj;->e()Lcom/huawei/hem/yj$a;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->f:Lcom/huawei/hem/yj$a;

    .line 12
    iget-object v0, p1, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->g:Lcom/huawei/hem/mk;

    .line 13
    iget-object v0, p1, Lcom/huawei/hem/kk;->h:Lcom/huawei/hem/kk;

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->h:Lcom/huawei/hem/kk;

    .line 14
    iget-object v0, p1, Lcom/huawei/hem/kk;->i:Lcom/huawei/hem/kk;

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->i:Lcom/huawei/hem/kk;

    .line 15
    iget-object v0, p1, Lcom/huawei/hem/kk;->j:Lcom/huawei/hem/kk;

    iput-object v0, p0, Lcom/huawei/hem/kk$a;->j:Lcom/huawei/hem/kk;

    .line 16
    iget-wide v0, p1, Lcom/huawei/hem/kk;->k:J

    iput-wide v0, p0, Lcom/huawei/hem/kk$a;->k:J

    .line 17
    iget-wide v0, p1, Lcom/huawei/hem/kk;->l:J

    iput-wide v0, p0, Lcom/huawei/hem/kk$a;->l:J

    .line 18
    iget-object p1, p1, Lcom/huawei/hem/kk;->m:Lcom/huawei/hem/dl;

    iput-object p1, p0, Lcom/huawei/hem/kk$a;->m:Lcom/huawei/hem/dl;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/kk$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kk$a;->f:Lcom/huawei/hem/yj$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/yj;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p2, p1}, Lcom/huawei/hem/yj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, v0, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public b()Lcom/huawei/hem/kk;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kk$a;->a:Lcom/huawei/hem/gk;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/kk$a;->b:Lcom/huawei/hem/ek;

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/huawei/hem/kk$a;->c:I

    if-ltz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/kk$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/huawei/hem/kk;

    invoke-direct {v0, p0}, Lcom/huawei/hem/kk;-><init>(Lcom/huawei/hem/kk$a;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "code < 0: "

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hem/kk$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/huawei/hem/kk;)Lcom/huawei/hem/kk$a;
    .locals 1
    .param p1    # Lcom/huawei/hem/kk;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/huawei/hem/kk$a;->d(Ljava/lang/String;Lcom/huawei/hem/kk;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/huawei/hem/kk$a;->i:Lcom/huawei/hem/kk;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Lcom/huawei/hem/kk;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p2, Lcom/huawei/hem/kk;->h:Lcom/huawei/hem/kk;

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p2, Lcom/huawei/hem/kk;->i:Lcom/huawei/hem/kk;

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p2, Lcom/huawei/hem/kk;->j:Lcom/huawei/hem/kk;

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".priorResponse != null"

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".cacheResponse != null"

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".networkResponse != null"

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".body != null"

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e(Lcom/huawei/hem/yj;)Lcom/huawei/hem/kk$a;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hem/yj;->e()Lcom/huawei/hem/yj$a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/kk$a;->f:Lcom/huawei/hem/yj$a;

    return-object p0
.end method
