.class public final Lcom/loc/am;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/am$a;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/loc/am;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/huawei/hem/f1;->G()V

    return-void
.end method

.method public static a(Lcom/loc/ar;J)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/loc/am;->d(Lcom/loc/ar;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    :goto_0
    invoke-virtual {p0}, Lcom/loc/ar;->m()I

    move-result p1

    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object p2

    sget-object v2, Lcom/loc/ar$a;->d:Lcom/loc/ar$a;

    if-eq p2, v2, :cond_4

    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object p2

    sget-object v2, Lcom/loc/ar$a;->e:Lcom/loc/ar$a;

    if-ne p2, v2, :cond_1

    goto :goto_2

    :cond_1
    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_3

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    long-to-int p0, p1

    return p0

    :cond_3
    :goto_1
    const/16 p1, 0x3e8

    invoke-virtual {p0}, Lcom/loc/ar;->m()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_4
    :goto_2
    return p1

    :catchall_0
    const/16 p0, 0x1388

    return p0
.end method

.method public static a()Lcom/loc/am;
    .locals 1

    sget-object v0, Lcom/loc/am;->f:Lcom/loc/am;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/am;

    invoke-direct {v0}, Lcom/loc/am;-><init>()V

    sput-object v0, Lcom/loc/am;->f:Lcom/loc/am;

    :cond_0
    sget-object v0, Lcom/loc/am;->f:Lcom/loc/am;

    return-object v0
.end method

.method public static a(Lcom/loc/ar;)Lcom/loc/as;
    .locals 1

    invoke-virtual {p0}, Lcom/loc/ar;->s()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/loc/am;->a(Lcom/loc/ar;Z)Lcom/loc/as;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/loc/ar;Lcom/loc/ar$b;I)Lcom/loc/as;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/loc/am;->d(Lcom/loc/ar;)V

    invoke-virtual {p0, p1}, Lcom/loc/ar;->a(Lcom/loc/ar$b;)V

    invoke-virtual {p0, p2}, Lcom/loc/ar;->c(I)V

    new-instance p1, Lcom/loc/ap;

    invoke-direct {p1}, Lcom/loc/ap;-><init>()V

    invoke-virtual {p1, p0}, Lcom/loc/ap;->a(Lcom/loc/ar;)Lcom/loc/as;

    move-result-object p0
    :try_end_0
    .catch Lcom/huawei/hem/d1; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/huawei/hem/d1;

    const-string p1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/huawei/hem/d1;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method public static a(Lcom/loc/ar;Z)Lcom/loc/as;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/loc/am;->d(Lcom/loc/ar;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/loc/ar$c;->b:Lcom/loc/ar$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/loc/ar$c;->a:Lcom/loc/ar$c;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/loc/ar;->a(Lcom/loc/ar$c;)V

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/loc/am;->b(Lcom/loc/ar;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/loc/am;->c(Lcom/loc/ar;)Z

    move-result v3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, v3}, Lcom/loc/am;->b(Lcom/loc/ar;Z)Lcom/loc/ar$b;

    move-result-object v4

    invoke-static {p0, v3}, Lcom/loc/am;->d(Lcom/loc/ar;Z)I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/loc/am;->a(Lcom/loc/ar;Lcom/loc/ar$b;I)Lcom/loc/as;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/hem/d1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/huawei/hem/d1;->f()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object v5

    sget-object v6, Lcom/loc/ar$a;->b:Lcom/loc/ar$a;

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    throw v2

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    throw v2

    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/loc/as;->a:[B

    if-eqz v3, :cond_6

    array-length v3, v3

    if-gtz v3, :cond_5

    goto :goto_3

    :cond_5
    return-object p1

    :cond_6
    :goto_3
    :try_start_1
    invoke-static {p0, v2}, Lcom/loc/am;->c(Lcom/loc/ar;Z)Lcom/loc/ar$b;

    move-result-object p1

    invoke-static {p0, v0, v1}, Lcom/loc/am;->a(Lcom/loc/ar;J)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/loc/am;->a(Lcom/loc/ar;Lcom/loc/ar$b;I)Lcom/loc/as;

    move-result-object p0
    :try_end_1
    .catch Lcom/huawei/hem/d1; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static b(Lcom/loc/ar;Z)Lcom/loc/ar$b;
    .locals 2

    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object v0

    sget-object v1, Lcom/loc/ar$a;->d:Lcom/loc/ar$a;

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/loc/ar$b;->e:Lcom/loc/ar$b;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object p0

    sget-object v0, Lcom/loc/ar$a;->e:Lcom/loc/ar$a;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/loc/ar$b;->b:Lcom/loc/ar$b;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lcom/loc/ar$b;->a:Lcom/loc/ar$b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/loc/ar$b;->b:Lcom/loc/ar$b;

    return-object p0
.end method

.method public static b(Lcom/loc/ar;)Z
    .locals 2

    invoke-static {p0}, Lcom/loc/am;->d(Lcom/loc/ar;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loc/ar;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/loc/ar;->g()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/huawei/hem/f1;->F(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Lcom/loc/ar;Z)Lcom/loc/ar$b;
    .locals 1

    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object p0

    sget-object v0, Lcom/loc/ar$a;->d:Lcom/loc/ar$a;

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/loc/ar$b;->f:Lcom/loc/ar$b;

    return-object p0

    :cond_0
    sget-object p0, Lcom/loc/ar$b;->g:Lcom/loc/ar$b;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lcom/loc/ar$b;->c:Lcom/loc/ar$b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/loc/ar$b;->d:Lcom/loc/ar$b;

    return-object p0
.end method

.method public static c(Lcom/loc/ar;)Z
    .locals 3

    invoke-static {p0}, Lcom/loc/am;->d(Lcom/loc/ar;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/loc/am;->b(Lcom/loc/ar;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/loc/ar;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/loc/ar;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object p0

    sget-object v1, Lcom/loc/ar$a;->e:Lcom/loc/ar$a;

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    sget-boolean p0, Lcom/huawei/hem/f1;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    return v2

    :catchall_0
    :cond_3
    return v0
.end method

.method public static d(Lcom/loc/ar;Z)I
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/am;->d(Lcom/loc/ar;)V

    invoke-virtual {p0}, Lcom/loc/ar;->m()I

    move-result v0

    sget v1, Lcom/huawei/hem/f1;->n:I

    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object v2

    sget-object v3, Lcom/loc/ar$a;->d:Lcom/loc/ar$a;

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/loc/ar;->p()Lcom/loc/ar$a;

    move-result-object p0

    sget-object v2, Lcom/loc/ar$a;->e:Lcom/loc/ar$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0

    :catchall_0
    const/16 p0, 0x1388

    return p0
.end method

.method public static d(Lcom/loc/ar;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/loc/ar;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loc/ar;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/huawei/hem/d1;

    const-string v0, "request url is empty"

    invoke-direct {p0, v0}, Lcom/huawei/hem/d1;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/huawei/hem/d1;

    const-string v0, "requeust is null"

    invoke-direct {p0, v0}, Lcom/huawei/hem/d1;-><init>(Ljava/lang/String;)V

    throw p0
.end method
