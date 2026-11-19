.class public Lcom/huawei/hem/da;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/huawei/hem/ea;

.field public b:Lcom/huawei/hem/ea;

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/da;->c:Landroid/content/Context;

    :cond_0
    new-instance p1, Lcom/huawei/hem/ea;

    invoke-direct {p1}, Lcom/huawei/hem/ea;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/da;->a:Lcom/huawei/hem/ea;

    new-instance p1, Lcom/huawei/hem/ea;

    invoke-direct {p1}, Lcom/huawei/hem/ea;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/da;->b:Lcom/huawei/hem/ea;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/huawei/hem/da;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder.setCollectURL(int type,String collectURL) is execute.TYPE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/huawei/hem/y9;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    sget-object v0, Lcom/huawei/hem/oa;->a:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_e

    aget-object v5, v0, v4

    const/4 v6, 0x2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "url is null"

    if-eqz v7, :cond_1

    invoke-static {v1, v8}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, p2

    goto :goto_3

    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "http:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    :goto_1
    const-string v7, "url don\'t starts with https"

    invoke-static {v1, v7}, Lcom/huawei/hem/xa;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v9, "getHostByURI error : "

    invoke-static {v9}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/huawei/hem/xa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v7, 0x0

    .line 3
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_9

    .line 4
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "."

    if-nez v9, :cond_7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    if-ge v9, v6, :cond_5

    move-object v6, v2

    goto :goto_5

    :cond_5
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    array-length v11, v8

    sub-int/2addr v11, v6

    aget-object v11, v8, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v11, 0x1

    :goto_4
    if-ge v11, v6, :cond_6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v12, v8

    sub-int/2addr v12, v6

    add-int/2addr v12, v11

    aget-object v12, v8, v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_7
    invoke-static {v1, v8}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 5
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v5, "get urlLastNStr is null"

    const/4 v6, 0x0

    goto :goto_a

    :cond_8
    invoke-static {v7}, Lcom/huawei/hem/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v5, 0x1

    goto :goto_c

    :cond_9
    invoke-static {v6}, Lcom/huawei/hem/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_b

    :cond_a
    const-string v7, "^[A-Za-z0-9.-]+$"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :catch_1
    move-exception v5

    goto :goto_6

    :catch_2
    move-exception v5

    goto :goto_7

    :catch_3
    move-exception v5

    const/4 v6, 0x0

    :goto_6
    const-string v7, "Exception : "

    invoke-static {v7}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :catch_4
    move-exception v5

    const/4 v6, 0x0

    :goto_7
    const-string v7, "IndexOutOfBoundsException"

    invoke-static {v7}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    :goto_8
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    :cond_c
    :goto_9
    const/4 v6, 0x0

    const-string v5, "url or whitelistHash is null"

    :goto_a
    invoke-static {v1, v5}, Lcom/huawei/hem/xa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    move v5, v6

    :goto_c
    if-eqz v5, :cond_d

    :goto_d
    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_f

    move-object p2, v2

    :cond_f
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const-string p1, "Builder.setCollectURL(int type,String collectURL): invalid type!"

    .line 6
    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_10
    iget-object p1, p0, Lcom/huawei/hem/da;->b:Lcom/huawei/hem/ea;

    goto :goto_f

    :cond_11
    iget-object p1, p0, Lcom/huawei/hem/da;->a:Lcom/huawei/hem/ea;

    .line 7
    :goto_f
    iput-object p2, p1, Lcom/huawei/hem/ea;->d:Ljava/lang/String;

    :goto_10
    return-object p0
.end method
