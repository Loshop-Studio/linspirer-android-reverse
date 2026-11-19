.class public Lcom/huawei/hem/t5;
.super Ljava/lang/Object;
.source "DataCleanUtil.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static i:[I

.field public static j:[Ljava/lang/String;

.field public static k:[Ljava/lang/String;

.field public static l:[Ljava/lang/String;

.field public static m:[Ljava/lang/String;

.field public static n:[Ljava/lang/String;

.field public static o:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hem/t5;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hem/t5;->c:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hem/t5;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hem/t5;->e:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hem/t5;->f:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hem/t5;->g:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hem/t5;->h:Ljava/util/List;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hem/t5;->i:[I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    const-string v3, "Download/"

    invoke-static {v1, v2, v3}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    const-string v4, "Downloads/"

    invoke-static {v1, v3, v4}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    const-string v5, "ETPlayer/"

    invoke-static {v1, v4, v5}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/hem/t5;->j:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    const-string v6, "DCIM/.thumbnails/"

    invoke-static {v1, v5, v6}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    const-string v6, "DCIM/Camera/cache/"

    invoke-static {v1, v5, v6}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/hem/t5;->k:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    const-string v5, "DCIM/Camera/"

    invoke-static {v1, v4, v5}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    const-string v4, "DCIM/Video/"

    invoke-static {v1, v2, v4}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/hem/t5;->l:[Ljava/lang/String;

    const-string v4, "com.datedu.ebook/files"

    const-string v5, "GuardSecure"

    const-string v6, "AppStore"

    const-string v7, "com.friday.cloudsnote"

    const-string v8, "Evaluation"

    const-string v9, "Dialogue"

    .line 13
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/t5;->m:[Ljava/lang/String;

    const-string v1, "jpg"

    const-string v2, "png"

    const-string v3, "bmp"

    const-string v4, "psd"

    const-string v5, "jpeg"

    const-string v6, "gif"

    const-string v7, "tif"

    const-string v8, "wmf"

    .line 14
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/t5;->n:[Ljava/lang/String;

    const-string v1, "mp4"

    const-string v2, "avi"

    const-string v3, "mov"

    const-string v4, "rmvb"

    const-string v5, "rm"

    const-string v6, "flv"

    const-string v7, "3gb"

    .line 15
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/t5;->o:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f0c0119
        0x7f0c00b5
        0x7f0c0046
        0x7f0c003e
        0x7f0c0166
        0x7f0c003d
        0x7f0c00b6
    .end array-data
.end method

.method public static a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/huawei/hem/t5;->b:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/huawei/hem/t5;->g:Ljava/util/List;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lcom/huawei/hem/t5;->f:Ljava/util/List;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 4
    sget-object p0, Lcom/huawei/hem/t5;->c:Ljava/util/List;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 5
    sget-object p0, Lcom/huawei/hem/t5;->d:Ljava/util/List;

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 6
    sget-object p0, Lcom/huawei/hem/t5;->e:Ljava/util/List;

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 7
    sget-object p0, Lcom/huawei/hem/t5;->h:Ljava/util/List;

    return-object p0

    .line 8
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".hwbk"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/hem/t5;->n:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/io/File;Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_12

    .line 3
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1c

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v6, Lcom/huawei/hem/t5;->m:[Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    array-length v8, v6

    if-nez v8, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    array-length v8, v6

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v6, v9

    .line 7
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v5, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    if-nez v5, :cond_1b

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    invoke-static {v4, p1}, Lcom/huawei/hem/t5;->c(Ljava/io/File;Landroid/content/Context;)V

    goto/16 :goto_11

    .line 10
    :cond_4
    new-instance v5, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/model/RubbishFileInfo;-><init>(Ljava/lang/String;Z)V

    move v6, v2

    .line 11
    :goto_4
    sget-object v8, Lcom/huawei/hem/t5;->j:[Ljava/lang/String;

    array-length v8, v8

    if-ge v6, v8, :cond_6

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/huawei/hem/t5;->j:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v6, v7

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_5
    if-eqz v6, :cond_7

    .line 13
    sget-object v6, Lcom/huawei/hem/t5;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_7
    move v6, v2

    move v8, v6

    .line 14
    :goto_6
    sget-object v9, Lcom/huawei/hem/t5;->k:[Ljava/lang/String;

    array-length v9, v9

    if-ge v6, v9, :cond_9

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/huawei/hem/t5;->k:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v8, v7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    if-nez v8, :cond_b

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Android/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/cache/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v8, v7

    goto :goto_7

    :cond_a
    move v8, v2

    :cond_b
    :goto_7
    if-eqz v8, :cond_c

    .line 18
    sget-object v6, Lcom/huawei/hem/t5;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 19
    :cond_c
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, ".log"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, "log.txt"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    move v6, v2

    goto :goto_9

    :cond_e
    :goto_8
    move v6, v7

    :goto_9
    if-eqz v6, :cond_f

    .line 21
    sget-object v6, Lcom/huawei/hem/t5;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 22
    :cond_f
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "DCIM/Camera"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "DCIM/Video"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 23
    :cond_10
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, ".hwbk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v7

    goto :goto_a

    :cond_11
    move v6, v2

    :goto_a
    if-eqz v6, :cond_12

    .line 24
    sget-object v6, Lcom/huawei/hem/t5;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 25
    :cond_12
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, "."

    .line 27
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_14

    .line 28
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v7

    .line 29
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v6}, Lcom/huawei/hem/t5;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 31
    sget-object v8, Lcom/huawei/hem/t5;->o:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    move v6, v7

    goto :goto_b

    :cond_14
    move v6, v2

    :goto_b
    if-eqz v6, :cond_15

    .line 32
    sget-object v6, Lcom/huawei/hem/t5;->h:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_15
    :goto_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 34
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 35
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 36
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 37
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    .line 38
    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v6, v9, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 40
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 42
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 43
    :cond_16
    invoke-static {v9}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 44
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_e

    :cond_17
    move v6, v7

    goto :goto_f

    :cond_18
    :goto_e
    move v6, v2

    :goto_f
    if-eqz v6, :cond_19

    .line 45
    sget-object v6, Lcom/huawei/hem/t5;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    const-wide/32 v8, 0xa00000

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v4, v10, v8

    if-ltz v4, :cond_1a

    goto :goto_10

    :cond_1a
    move v7, v2

    :goto_10
    if-eqz v7, :cond_1b

    .line 47
    sget-object v4, Lcom/huawei/hem/t5;->f:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1c
    :goto_12
    return-void
.end method
