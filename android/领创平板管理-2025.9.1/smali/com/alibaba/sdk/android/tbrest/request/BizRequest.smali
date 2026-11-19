.class public Lcom/alibaba/sdk/android/tbrest/request/BizRequest;
.super Ljava/lang/Object;
.source "BizRequest.java"


# static fields
.field public static final FLAGS_GET_CONFIG:B = 0x20t

.field public static final FLAGS_GZIP:B = 0x1t

.field public static final FLAGS_GZIP_FLUSH_DIC:B = 0x2t

.field public static final FLAGS_KEEP_ALIVE:B = 0x8t

.field public static final FLAGS_NO_GZIP:B = 0x0t

.field public static final FLAGS_REAL_TIME_DEBUG:B = 0x10t

.field public static final HEAD_LENGTH:I = 0x8

.field public static final PAYLOAD_MAX_LENGTH:I = 0x1000000

.field public static mReceivedDataLen:J = 0x0L

.field public static mResponseAdditionalData:Ljava/lang/String; = null

.field public static needConfigByResponse:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHead(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 5
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "Unknown"

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    .line 7
    :goto_1
    invoke-static {p2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x6

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const/4 p1, 0x1

    aput-object v0, p2, p1

    const/4 p1, 0x2

    aput-object v3, p2, p1

    const/4 p1, 0x3

    aput-object v1, p2, p1

    const/4 p1, 0x4

    aput-object p0, p2, p1

    const/4 p0, 0x5

    const-string p1, "6.5.1.3"

    aput-object p1, p2, p0

    const-string p0, "ak=%s&av=%s&avsys=%s&c=%s&d=%s&sv=%s"

    .line 8
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "send url :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPackRequest(Landroid/content/Context;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v0, p0, p2, v1}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPayload(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/GzipUtils;->gzip([B)[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    array-length p1, p0

    const/high16 p2, 0x1000000

    if-lt p1, p2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 8
    array-length p2, p0

    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes3(I)[B

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 10
    invoke-virtual {p1, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p2, 0x9

    int-to-byte p2, p2

    .line 11
    sget-boolean p3, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->needConfigByResponse:Z

    if-eqz p3, :cond_1

    or-int/lit8 p2, p2, 0x20

    int-to-byte p2, p2

    .line 12
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 14
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 15
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 16
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackRequestByRealtime(Landroid/content/Context;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    const/4 v1, 0x2

    .line 2
    invoke-static {p1, v0, p0, p2, v1}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPackRequestByRealtime(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x2

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPayload(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-static {p0, p1, p2}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getHead(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes2(I)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes2(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_0
    if-eqz p3, :cond_2

    .line 7
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 8
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 11
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 13
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 18
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public static parseResult([B)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p0, :cond_6

    .line 1
    array-length v1, p0

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    array-length v1, p0

    int-to-long v3, v1

    sput-wide v3, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mReceivedDataLen:J

    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 3
    invoke-static {p0, v3, v1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->bytesToInt([BII)I

    move-result v1

    const/16 v4, 0x8

    add-int/2addr v1, v4

    .line 4
    array-length v5, p0

    if-eq v1, v5, :cond_1

    const-string p0, "recv len error"

    .line 5
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const/4 v0, 0x5

    .line 6
    aget-byte v0, p0, v0

    and-int/2addr v0, v3

    const/4 v1, 0x0

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const/4 v0, 0x4

    .line 7
    invoke-static {p0, v4, v0}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->bytesToInt([BII)I

    move-result v0

    .line 8
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ltz v4, :cond_3

    array-length v4, p0

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-lez v4, :cond_5

    if-eqz v3, :cond_4

    .line 9
    new-array v3, v4, [B

    .line 10
    invoke-static {p0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/GzipUtils;->unGzip([B)[B

    move-result-object p0

    .line 12
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    invoke-direct {v2, p0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    sput-object v2, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_3

    .line 13
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    sput-object v1, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    .line 14
    sput-object p0, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_3

    :cond_6
    :goto_2
    const-string p0, "recv errCode UNKNOWN_ERROR"

    .line 15
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 16
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errCode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method
