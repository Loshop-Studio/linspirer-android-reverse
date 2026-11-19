.class public final Lcom/huawei/hem/pl;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\"\\"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    const-string v0, "\t ,="

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    return-void
.end method

.method public static a(Lcom/huawei/hem/kk;)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    const-string v0, "Content-Length"

    .line 2
    invoke-virtual {p0, v0}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-wide v0
.end method

.method public static b(Lcom/huawei/hem/kk;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v0, p0, Lcom/huawei/hem/kk;->c:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/huawei/hem/pl;->a(Lcom/huawei/hem/kk;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 6
    iget-object p0, p0, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/huawei/hem/yj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    const-string v0, "chunked"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v3
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p0, p0

    return p0

    :catch_0
    return p1
.end method

.method public static d(Lcom/huawei/hem/rj;Lcom/huawei/hem/zj;Lcom/huawei/hem/yj;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/rj;->a:Lcom/huawei/hem/rj;

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hem/qj;->b(Lcom/huawei/hem/zj;Lcom/huawei/hem/yj;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    check-cast p0, Lcom/huawei/hem/rj$a;

    if-eqz p0, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static e(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method
