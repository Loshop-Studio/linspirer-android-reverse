.class public Lcom/alibaba/sdk/android/emas/g;
.super Ljava/lang/Object;
.source "EmasSingleLog.java"


# instance fields
.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/g;->i:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/alibaba/sdk/android/emas/g;->h:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/alibaba/sdk/android/emas/g;->timestamp:J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/emas/g;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "eventId"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rawLog"

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp"

    .line 7
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Lcom/alibaba/sdk/android/emas/g;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/emas/g;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventId"

    .line 2
    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rawLog"

    .line 3
    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 4
    iget-wide v2, p0, Lcom/alibaba/sdk/android/emas/g;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/g;->h:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method
