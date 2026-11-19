.class public Lcom/huawei/hem/r8;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:[B

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Ljava/lang/Exception;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Map;[BJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[BJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hem/r8;->c:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/huawei/hem/r8;->h:I

    const/16 v2, 0x2329

    iput v2, p0, Lcom/huawei/hem/r8;->i:I

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/hem/r8;->j:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/huawei/hem/r8;->k:J

    iput p1, p0, Lcom/huawei/hem/r8;->c:I

    iput-object p2, p0, Lcom/huawei/hem/r8;->a:Ljava/util/Map;

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/r8;->b:[B

    iput-wide p4, p0, Lcom/huawei/hem/r8;->d:J

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/r8;->d()Z

    move-result p1

    const-string p2, "f"

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hem/r8;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    const/16 p3, 0x10

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    iget-object p3, p0, Lcom/huawei/hem/r8;->a:Ljava/util/Map;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    if-gtz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/huawei/hem/r8;->a:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    const-string p3, "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}"

    invoke-static {p2, p3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hem/r8;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p1}, Lcom/huawei/hem/r8;->a(Ljava/util/Map;)V

    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hem/r8;->c()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, p1}, Lcom/huawei/hem/r8;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p3, "parseHeader catch JSONException"

    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    const-string p1, "errorDesc"

    const-string p3, "errorList"

    const-string p4, "errorCode"

    const-string p5, "isSuccess"

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/r8;->d()Z

    move-result v3

    if-nez v3, :cond_6

    const-string p1, "GRSSDK parse server body all failed."

    invoke-static {p2, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/huawei/hem/r8;->b:[B

    invoke-static {v3}, Lcom/huawei/hms/framework/common/StringUtils;->byte2Str([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-virtual {v4, p5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "resultCode"

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    :try_start_2
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_8

    move-object p5, v7

    :goto_3
    invoke-virtual {v4, p5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_8
    const-string p5, "sth. wrong because server errorcode\'s key."

    :try_start_3
    invoke-static {p2, p5}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :goto_4
    iput v5, p0, Lcom/huawei/hem/r8;->h:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 p5, 0x1

    const-string v6, "services"

    if-nez v5, :cond_9

    .line 6
    :try_start_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, p5

    :cond_9
    if-eq v5, p5, :cond_c

    if-eqz v0, :cond_a

    goto :goto_5

    .line 7
    :cond_a
    iput v1, p0, Lcom/huawei/hem/r8;->h:I

    .line 8
    invoke-virtual {v4, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {v4, p4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 9
    :cond_b
    iput v2, p0, Lcom/huawei/hem/r8;->i:I

    .line 10
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :cond_c
    :goto_5
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/huawei/hem/r8;->g:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 12
    invoke-virtual {v4, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v4, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    const-string p3, "GrsResponse GrsResponse(String result) JSONException"

    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_6
    iput v1, p0, Lcom/huawei/hem/r8;->h:I

    :cond_d
    :goto_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hem/r8;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/hem/r8;->h:I

    const/16 v0, 0x2329

    iput v0, p0, Lcom/huawei/hem/r8;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hem/r8;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hem/r8;->k:J

    iput-object p1, p0, Lcom/huawei/hem/r8;->l:Ljava/lang/Exception;

    iput-wide p2, p0, Lcom/huawei/hem/r8;->d:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "f"

    if-gtz v0, :cond_0

    const-string p1, "getExpireTime {headers == null} or {headers.size() <= 0}"

    .line 1
    invoke-static {v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "Cache-Control"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "max-age="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "Cache-Control value{%s}"

    :try_start_1
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v1, p1, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-wide v9, v5

    :goto_0
    const-string v0, "getExpireTime addHeadersToResult NumberFormatException"

    invoke-static {v1, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    const-string v9, "expires is{%s}"

    invoke-static {v1, v9, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "EEE, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v2, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v9, 0x0

    const-string v10, "Date"

    invoke-interface {p1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    :cond_2
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    div-long/2addr v9, v3
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    const-string v0, "getExpireTime ParseException."

    invoke-static {v1, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    const-string p1, "response headers neither contains Cache-Control nor Expires."

    invoke-static {v1, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    move-wide v9, v5

    :goto_3
    cmp-long p1, v9, v5

    if-lez p1, :cond_6

    const-wide/32 v5, 0x278d00

    cmp-long p1, v9, v5

    if-lez p1, :cond_7

    :cond_6
    const-wide/32 v9, 0x15180

    :cond_7
    mul-long/2addr v9, v3

    new-array p1, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v7

    const-string v0, "convert expireTime{%s}"

    invoke-static {v1, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/r8;->j:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "f"

    if-gtz v0, :cond_0

    const-string p1, "getExpireTime {headers == null} or {headers.size() <= 0}"

    .line 1
    invoke-static {v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    const-string v0, "Retry-After"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "getRetryAfter addHeadersToResult NumberFormatException"

    invoke-static {v1, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, p1, v4

    const-string v0, "convert retry-afterTime{%s}"

    invoke-static {v1, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-wide v2, p0, Lcom/huawei/hem/r8;->k:J

    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/huawei/hem/r8;->c:I

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/huawei/hem/r8;->c:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
