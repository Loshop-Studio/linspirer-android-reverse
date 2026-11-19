.class public Lcom/huawei/hem/m9;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcom/huawei/hem/m9;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lcom/huawei/hem/m9;
    .locals 2

    sget-object v0, Lcom/huawei/hem/m9;->c:Lcom/huawei/hem/m9;

    if-nez v0, :cond_1

    .line 1
    const-class v0, Lcom/huawei/hem/m9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/m9;->c:Lcom/huawei/hem/m9;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hem/m9;

    invoke-direct {v1}, Lcom/huawei/hem/m9;-><init>()V

    sput-object v1, Lcom/huawei/hem/m9;->c:Lcom/huawei/hem/m9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hem/m9;->c:Lcom/huawei/hem/m9;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/huawei/hem/m9;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Privacy_MY"

    const-string v2, "PrivacyData"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/l9;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hem/m9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/hem/m9;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v1, "analytics_keystore"

    .line 2
    invoke-static {v1, v0}, Lcom/huawei/hem/db;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "hmsSdk"

    const-string v3, "deCrypt work key first"

    invoke-static {v1, v3}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/hem/m9;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/o9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/huawei/hem/m9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/hem/m9;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/huawei/hem/j9;->f()Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3
    :goto_0
    iput-object v0, p0, Lcom/huawei/hem/m9;->a:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/huawei/hem/m9;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "analytics_keystore"

    invoke-static {v0, p1}, Lcom/huawei/hem/db;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "hmsSdk"

    const-string v1, "refresh sp aes key"

    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "refreshLocalKey(): encrypted key is empty"

    invoke-static {v0, p1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Privacy_MY"

    const-string v2, "PrivacyData"

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hem/l9;->D(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "flashKeyTime"

    invoke-static {p1, v1, v0, v2, v3}, Lcom/huawei/hem/l9;->C(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final d()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/huawei/hem/m9;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/huawei/hem/j9;

    invoke-direct {v0}, Lcom/huawei/hem/j9;-><init>()V

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-string v4, "Privacy_MY"

    const-string v5, "assemblyFlash"

    invoke-static {v1, v4, v5, v2, v3}, Lcom/huawei/hem/l9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v1, v2, v6

    const/4 v2, 0x0

    const-string v3, "hmsSdk"

    if-nez v1, :cond_0

    const-string v1, "First init components"

    invoke-static {v3, v1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide v6, 0x757b12c00L

    cmp-long v1, v8, v6

    if-lez v1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v6, "maywnj"

    const-string v7, "marfil"

    const-string v8, "febdoc"

    const-string v9, "aprpap"

    if-eqz v1, :cond_2

    const-string v1, "refresh components"

    .line 2
    invoke-static {v3, v1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x80

    invoke-static {v1}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lcom/huawei/hem/j9;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/huawei/hem/j9;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/huawei/hem/j9;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/huawei/hem/j9;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/huawei/hem/l9;->C(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v9}, Lcom/huawei/hem/j9;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8}, Lcom/huawei/hem/j9;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7}, Lcom/huawei/hem/j9;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6}, Lcom/huawei/hem/j9;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_2
    invoke-static {v3}, Lcom/huawei/hem/l9;->L(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v9}, Lcom/huawei/hem/l9;->L(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v8}, Lcom/huawei/hem/l9;->L(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "f6040d0e807aaec325ecf44823765544e92905158169f694b282bf17388632cf95a83bae7d2d235c1f039b0df1dcca5fda619b6f7f459f2ff8d70ddb7b601592fe29fcae58c028f319b3b12495e67aa5390942a997a8cb572c8030b2df5c2b622608bea02b0c3e5d4dff3f72c9e3204049a45c0760cd3604af8d57f0e0c693cc"

    invoke-static {v5}, Lcom/huawei/hem/l9;->L(Ljava/lang/String;)[B

    move-result-object v5

    array-length v6, v0

    array-length v7, v3

    if-le v6, v7, :cond_3

    array-length v6, v3

    :cond_3
    array-length v7, v4

    if-le v6, v7, :cond_4

    array-length v6, v4

    :cond_4
    array-length v7, v5

    if-le v6, v7, :cond_5

    array-length v6, v5

    :cond_5
    new-array v7, v6, [C

    :goto_3
    if-ge v2, v6, :cond_6

    aget-byte v8, v0, v2

    aget-byte v9, v3, v2

    xor-int/2addr v8, v9

    aget-byte v9, v4, v2

    xor-int/2addr v8, v9

    aget-byte v9, v5, v2

    xor-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4
    :cond_6
    invoke-static {v1}, Lcom/huawei/hem/l9;->L(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x2710

    const/16 v2, 0x10

    invoke-static {v7, v0, v1, v2}, Lcom/huawei/hem/bb;->a([C[BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/l9;->F([B)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/huawei/hem/m9;->b:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/huawei/hem/m9;->b:Ljava/lang/String;

    return-object v0
.end method
