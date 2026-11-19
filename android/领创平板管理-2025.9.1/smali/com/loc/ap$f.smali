.class public final Lcom/loc/ap$f;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Lcom/loc/ap$c;

.field public d:Lcom/loc/ap$a;

.field public e:Lcom/loc/ap$c;

.field public f:Ljava/lang/String;

.field public g:Ljava/net/URL;

.field public final synthetic h:Lcom/loc/ap;


# direct methods
.method public constructor <init>(Lcom/loc/ap;)V
    .locals 2

    iput-object p1, p0, Lcom/loc/ap$f;->h:Lcom/loc/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ap$f;->a:J

    iput-wide v0, p0, Lcom/loc/ap$f;->b:J

    new-instance p1, Lcom/loc/ap$c;

    invoke-direct {p1}, Lcom/loc/ap$c;-><init>()V

    iput-object p1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/loc/ap$f;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/loc/ap$c;->h:J

    return-void
.end method

.method public final a(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "----errorcode-----"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/loc/ap;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/loc/ap$f;->a:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/loc/ap$c;->f:J

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iput p1, v0, Lcom/loc/ap$c;->m:I

    iget-object p1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object p1, p1, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {p1}, Lcom/loc/ar$b;->e()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object p1, p1, Lcom/loc/ap$c;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huawei/hem/f1;->m(ZLjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/loc/ap$f;->h:Lcom/loc/ap;

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v1, v1, Lcom/loc/ap$c;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/loc/ap;->a(Lcom/loc/ap;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/loc/ap$f;->h:Lcom/loc/ap;

    invoke-static {v1}, Lcom/loc/ap;->b(Lcom/loc/ap;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/ap$f;->h:Lcom/loc/ap;

    invoke-static {v1}, Lcom/loc/ap;->a(Lcom/loc/ap;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v1, v1, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {v1}, Lcom/loc/ar$b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/huawei/hem/f1;->D()V

    :cond_1
    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v1, v1, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {v1}, Lcom/loc/ar$b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v1, v1, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {v1}, Lcom/loc/ar$b;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v2, v2, Lcom/loc/ap$c;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hem/f1;->m(ZLjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/loc/ap$f;->e:Lcom/loc/ap$c;

    invoke-static {v1}, Lcom/huawei/hem/f1;->B(Lcom/loc/ap$c;)V

    iget-object v1, p0, Lcom/loc/ap$f;->d:Lcom/loc/ap$a;

    invoke-static {v0, v1}, Lcom/huawei/hem/f1;->l(ZLcom/loc/ap$a;)V

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-static {v0}, Lcom/huawei/hem/f1;->u(Lcom/loc/ap$c;)V

    :cond_3
    iget-object v0, p0, Lcom/loc/ap$f;->g:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v1, v1, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {v1}, Lcom/loc/ar$b;->c()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hem/f1;->k(Ljava/lang/String;ZZZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "!!!error-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-virtual {v0}, Lcom/loc/ap$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/ap;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/loc/ap$c;->l:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/loc/ar;Ljava/net/URL;)V
    .locals 3

    iput-object p2, p0, Lcom/loc/ap$f;->g:Ljava/net/URL;

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/ap$c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/loc/ap$c;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/loc/ap$f;->h:Lcom/loc/ap;

    invoke-static {p2}, Lcom/loc/ap;->a(Lcom/loc/ap;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/loc/ar;->u()Lcom/loc/ar$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/loc/ar$b;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v0, p2, Lcom/loc/ap$c;->e:Ljava/lang/String;

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/loc/ap$c;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v0, p0, Lcom/loc/ap$f;->h:Lcom/loc/ap;

    invoke-static {v0}, Lcom/loc/ap;->a(Lcom/loc/ap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/loc/ap$c;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/loc/ar;->u()Lcom/loc/ar$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/loc/ar$b;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object p2, p2, Lcom/loc/ap$c;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/loc/ar;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/loc/ar;->u()Lcom/loc/ar$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/loc/ar$b;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/loc/ar;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/loc/ap$f;->f:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final a(Lcom/loc/as;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/loc/ap$f;->a:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/loc/ap$c;->f:J

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v0, v0, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {v0}, Lcom/loc/ar$b;->c()Z

    move-result v0

    iput-boolean v0, p1, Lcom/loc/as;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object p1, p1, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {p1}, Lcom/loc/ar$b;->b()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-wide v1, p1, Lcom/loc/ap$c;->f:J

    const-wide/16 v3, 0x2710

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object p1, p1, Lcom/loc/ap$c;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huawei/hem/f1;->m(ZLjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object p1, p1, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {p1}, Lcom/loc/ar$b;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/loc/ap$f;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huawei/hem/f1;->m(ZLjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/loc/ap$f;->h:Lcom/loc/ap;

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v1, v1, Lcom/loc/ap$c;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/loc/ap;->a(Lcom/loc/ap;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-static {v1}, Lcom/huawei/hem/f1;->B(Lcom/loc/ap$c;)V

    iget-object v1, p0, Lcom/loc/ap$f;->d:Lcom/loc/ap$a;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/huawei/hem/f1;->l(ZLcom/loc/ap$a;)V

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-wide v3, v1, Lcom/loc/ap$c;->f:J

    sget v1, Lcom/huawei/hem/f1;->n:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-virtual {v1}, Lcom/loc/ap$c;->a()Lcom/loc/ap$c;

    move-result-object v1

    if-eqz v1, :cond_3

    iput v2, v1, Lcom/loc/ap$c;->m:I

    invoke-static {v1}, Lcom/huawei/hem/f1;->u(Lcom/loc/ap$c;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!!!finish&error-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/loc/ap$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/ap;->a()V

    :cond_3
    iget-object v1, p0, Lcom/loc/ap$f;->g:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-object v2, v2, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {v2}, Lcom/loc/ar$b;->c()Z

    move-result v2

    invoke-static {v1, v2, v0, p1}, Lcom/huawei/hem/f1;->k(Ljava/lang/String;ZZZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "!!!finish-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-virtual {v0}, Lcom/loc/ap$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/ap;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/loc/ap$f;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/loc/ap$c;->i:J

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iput p1, v0, Lcom/loc/ap$c;->n:I

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/loc/ap$f;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/loc/ap$c;->j:J

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    invoke-virtual {v0}, Lcom/loc/ap$c;->a()Lcom/loc/ap$c;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ap$f;->c:Lcom/loc/ap$c;

    iget-wide v1, v1, Lcom/loc/ap$c;->f:J

    sget v3, Lcom/huawei/hem/f1;->n:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Lcom/loc/ap$c;->m:I

    :cond_0
    if-eqz v0, :cond_3

    .line 1
    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lcom/loc/ap$c;->c:Ljava/lang/String;

    const-string v3, "serverip"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/loc/ap$c;->e:Ljava/lang/String;

    const-string v3, "hostname"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/loc/ap$c;->d:Ljava/lang/String;

    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/loc/ap$c;->a:Ljava/lang/String;

    const-string v3, "csid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/loc/ap$c;->b:Lcom/loc/ar$b;

    invoke-virtual {v2}, Lcom/loc/ar$b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "degrade"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/loc/ap$c;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorcode"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/loc/ap$c;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorsubcode"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/loc/ap$c;->h:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "connecttime"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/loc/ap$c;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writetime"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/loc/ap$c;->j:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "readtime"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/loc/ap$c;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "datasize"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/loc/ap$c;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "totaltime"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "--\u57cb\u70b9--"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/loc/ap;->a()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lcom/loc/ax;

    sget-object v2, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const-string v3, "core"

    const-string v4, "2.0"

    const-string v5, "O008"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/loc/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/loc/ax;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/ay;->a(Lcom/loc/ax;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/huawei/hem/d1; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
