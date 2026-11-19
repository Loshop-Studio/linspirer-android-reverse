.class public Lcom/huawei/hem/w5;
.super Ljava/lang/Object;
.source "ImageCompressUtil.java"


# static fields
.field public static a:Lcom/huawei/hem/w5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/huawei/hem/w5;
    .locals 0

    .line 1
    sget-object p0, Lcom/huawei/hem/w5;->a:Lcom/huawei/hem/w5;

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/huawei/hem/w5;

    invoke-direct {p0}, Lcom/huawei/hem/w5;-><init>()V

    sput-object p0, Lcom/huawei/hem/w5;->a:Lcom/huawei/hem/w5;

    .line 3
    :cond_0
    sget-object p0, Lcom/huawei/hem/w5;->a:Lcom/huawei/hem/w5;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v3, v4, :cond_0

    if-le v3, p2, :cond_0

    .line 7
    div-int/2addr v3, p2

    goto :goto_0

    :cond_0
    if-ge v3, v4, :cond_1

    if-le v4, p3, :cond_1

    .line 8
    div-int v3, v4, p3

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-gtz v3, :cond_2

    move v3, v1

    .line 9
    :cond_2
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 10
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "read bitmap is null:"

    .line 11
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p1, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v0, 0x5a

    .line 14
    :goto_2
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    div-int/lit16 v1, v1, 0x400

    const/16 v2, 0x12c

    if-le v1, v2, :cond_5

    .line 15
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 16
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v0, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v0, v0, -0xa

    goto :goto_2

    .line 17
    :cond_5
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 18
    invoke-static {p1, p2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_3
    return-object p2
.end method
