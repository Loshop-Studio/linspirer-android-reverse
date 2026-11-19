.class public final Lcom/amap/apis/utils/core/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/apis/utils/core/DeviceInfo$d;,
        Lcom/amap/apis/utils/core/DeviceInfo$NetworkChangeReceiver;,
        Lcom/amap/apis/utils/core/DeviceInfo$e;,
        Lcom/amap/apis/utils/core/DeviceInfo$c;
    }
.end annotation


# static fields
.field public static A:Z = false

.field public static B:J = 0x0L

.field public static C:I = 0x0

.field public static D:Ljava/lang/String; = null

.field public static E:Ljava/lang/String; = ""

.field public static F:Z = true

.field public static G:Z = false

.field public static H:Ljava/lang/String; = ""

.field public static I:Z = false

.field public static J:I = -0x1

.field public static K:Z = false

.field public static L:I = -0x1

.field public static M:Z = false

.field public static N:Lcom/amap/apis/utils/core/DeviceInfo$d; = null

.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String; = ""

.field public static volatile c:Z = true

.field public static d:Ljava/lang/String; = null

.field public static e:Lcom/amap/apis/utils/core/DeviceInfo$c; = null

.field public static volatile f:Z = false

.field public static g:Ljava/lang/String; = ""

.field public static h:Z = false

.field public static i:Z = false

.field public static j:Z = false

.field public static k:Ljava/lang/String; = ""

.field public static l:Ljava/lang/String; = ""

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Ljava/lang/String; = ""

.field public static p:Z = false

.field public static q:Ljava/lang/String; = ""

.field public static r:Z = false

.field public static s:Ljava/lang/String; = ""

.field public static t:Ljava/lang/String; = ""

.field public static u:Ljava/lang/String; = ""

.field public static v:I = -0x1

.field public static w:Ljava/lang/String; = ""

.field public static x:Z = false

.field public static y:Ljava/lang/String; = ""

.field public static z:Z = false


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/huawei/hem/l1;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v0, "utf-8"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v4, 0x1

    if-eq v4, v2, :cond_6

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p0

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_5

    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTDID2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "UTDID"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_3

    :catchall_1
    move-object v0, v3

    goto :goto_5

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    :catchall_2
    :goto_5
    if-eqz v0, :cond_8

    goto :goto_4

    :catchall_3
    :cond_8
    :goto_6
    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, "IeGlhb21p"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "oa"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "WY29tLmFuZHJvaWQuaWQuaW1wbC5JZFByb3ZpZGVySW1wbA"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "MZ2V0T0FJRA"

    invoke-static {v5}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "xm"

    invoke-static {p0, v2, v0}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/amap/apis/utils/core/DeviceInfo;->h:Z

    :cond_0
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "Idml2bw"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p0, "QY29udGVudDovL2NvbS52aXZvLnZtcy5JZFByb3ZpZGVyL0lkZW50aWZpZXJJZC9PQUlE"

    invoke-static {p0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_2

    const-string v5, "IdmFsdWU"

    invoke-static {v5}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    sput-boolean v3, Lcom/amap/apis/utils/core/DeviceInfo;->h:Z

    const-string v0, "vivo"

    invoke-static {p0, v2, v0}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    return-object p0

    :cond_6
    const-string v0, "IaHVhd2Vp"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "Mc2Ftc3VuZw"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "IT1BQTw"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "MT25lUGx1cw"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    sput-boolean v3, Lcom/amap/apis/utils/core/DeviceInfo;->h:Z

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    return-object p0

    :cond_a
    :goto_4
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p0, v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_4

    const-string v4, "0"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_7
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "a1"

    const-string v2, "open_common"

    sget-object v3, Lcom/amap/apis/utils/core/DeviceInfo;->y:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->y:Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0, v2, v1, v0}, Lcom/huawei/hem/o1;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "amap"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->y:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hem/l1;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    .line 1
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "sp"

    const-string v2, "ps"

    invoke-static {v0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->y:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 3
    :goto_1
    sget-boolean v5, Lcom/amap/apis/utils/core/DeviceInfo;->F:Z

    if-eq v5, v2, :cond_4

    if-ne v2, v3, :cond_3

    sput-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    sput-boolean v4, Lcom/amap/apis/utils/core/DeviceInfo;->G:Z

    :cond_3
    sput-boolean v2, Lcom/amap/apis/utils/core/DeviceInfo;->F:Z

    :cond_4
    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    return-object p0

    :cond_5
    sget-boolean v2, Lcom/amap/apis/utils/core/DeviceInfo;->G:Z

    if-eqz v2, :cond_6

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    return-object p0

    :cond_6
    sget-boolean v2, Lcom/amap/apis/utils/core/DeviceInfo;->F:Z

    if-nez v2, :cond_7

    return-object v1

    :cond_7
    const-string v2, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v2}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_9

    return-object v1

    .line 5
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Class;

    const-string v5, "UZ2V0U3Vic2NyaWJlcklk"

    invoke-static {v0, v5, v2}, Lcom/huawei/hem/l1;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_a

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    :cond_a
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    if-nez p0, :cond_b

    sput-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    :cond_b
    sput-boolean v3, Lcom/amap/apis/utils/core/DeviceInfo;->G:Z

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->I:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->H:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->k(Landroid/content/Context;)Lcom/amap/apis/utils/core/DeviceInfo$d;

    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->H:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_2

    .line 2
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->H:Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->H:Ljava/lang/String;

    :cond_3
    const/4 p0, 0x1

    sput-boolean p0, Lcom/amap/apis/utils/core/DeviceInfo;->I:Z

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->H:Ljava/lang/String;

    return-object p0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 1

    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->K:Z

    if-eqz v0, :cond_0

    sget p0, Lcom/amap/apis/utils/core/DeviceInfo;->J:I

    return p0

    :cond_0
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->k(Landroid/content/Context;)Lcom/amap/apis/utils/core/DeviceInfo$d;

    if-eqz p0, :cond_4

    const-string v0, "AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_2

    .line 2
    sget p0, Lcom/amap/apis/utils/core/DeviceInfo;->J:I

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_3

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->K:Z

    sget p0, Lcom/amap/apis/utils/core/DeviceInfo;->J:I

    return p0

    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    sput p0, Lcom/amap/apis/utils/core/DeviceInfo;->J:I

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->K:Z

    return p0

    :cond_4
    :goto_0
    sget p0, Lcom/amap/apis/utils/core/DeviceInfo;->J:I

    return p0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 1

    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->M:Z

    if-eqz v0, :cond_0

    sget p0, Lcom/amap/apis/utils/core/DeviceInfo;->L:I

    return p0

    :cond_0
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->k(Landroid/content/Context;)Lcom/amap/apis/utils/core/DeviceInfo$d;

    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget p0, Lcom/amap/apis/utils/core/DeviceInfo;->L:I

    return p0

    :cond_1
    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_2

    .line 2
    sget p0, Lcom/amap/apis/utils/core/DeviceInfo;->L:I

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    sput p0, Lcom/amap/apis/utils/core/DeviceInfo;->L:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->M:Z

    return p0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    sget-boolean v1, Lcom/amap/apis/utils/core/DeviceInfo;->c:Z

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v4, v2

    :goto_0
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    const-string v4, "SU2hhcmVkUHJlZmVyZW5jZUFkaXU"

    invoke-static {v4}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v4, "RYW1hcF9kZXZpY2VfYWRpdQ"

    invoke-static {v4}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2
    :catchall_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    sput-boolean v3, Lcom/amap/apis/utils/core/DeviceInfo;->c:Z

    return-object v2

    :cond_2
    :try_start_2
    const-string p0, "MAAAAAAAAAAAAAAAAAAAAAA"

    invoke-static {p0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v1}, Lcom/huawei/hem/h1;->e(Ljava/lang/String;)[B

    move-result-object v1

    const-string v4, "HYW1hcGFkaXVhbWFwYWRpdWFtYXBhZGl1YW1hcGFkaXU"

    invoke-static {v4}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v1, p0}, Lcom/huawei/hem/h1;->c([B[B[B)[B

    move-result-object p0

    invoke-direct {v5, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v5

    :catchall_2
    sput-boolean v3, Lcom/amap/apis/utils/core/DeviceInfo;->c:Z

    return-object v2
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-string v0, "SIw"

    const-string v1, "LYW1hcF9kZXZpY2VfYWRpdQ"

    invoke-static {v1}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "storage"

    .line 1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const-string v4, "SYW5kcm9pZC5vcy5zdG9yYWdlLlN0b3JhZ2VWb2x1bWU"

    invoke-static {v4}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "MZ2V0Vm9sdW1lTGlzdA"

    invoke-static {v6}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "FZ2V0UGF0aA"

    invoke-static {v6}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "DaXNSZW1vdmFibGU"

    invoke-static {v7}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move v7, v2

    :goto_0
    if-ge v7, v5, :cond_1

    invoke-static {p0, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    move-object v9, v3

    .line 2
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v4, ""

    if-eqz p0, :cond_2

    return-object v4

    :cond_2
    invoke-static {v9}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "KYmFja3Vwcw"

    invoke-static {v5}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/io/File;

    const-string v6, "MLmFkaXU"

    invoke-static {v6}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p0, v6, v8

    if-nez p0, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return-object v4

    :cond_4
    :try_start_1
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {p0, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/16 v5, 0x400

    :try_start_2
    new-array v5, v5, [B

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :goto_2
    :try_start_3
    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_5

    invoke-virtual {v6, v5, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-direct {v3, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v3, v0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    return-object v0

    :cond_6
    :try_start_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :try_start_7
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    goto :goto_4

    :catchall_4
    move-object v3, v6

    goto :goto_3

    :catchall_5
    move-object p0, v3

    :catchall_6
    :goto_3
    if-eqz v3, :cond_7

    :try_start_8
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    :cond_7
    if-eqz p0, :cond_8

    :try_start_9
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :catchall_8
    :cond_8
    :goto_4
    return-object v4
.end method

.method public static k(Landroid/content/Context;)Lcom/amap/apis/utils/core/DeviceInfo$d;
    .locals 3

    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->N:Lcom/amap/apis/utils/core/DeviceInfo$d;

    if-nez v0, :cond_3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/amap/apis/utils/core/DeviceInfo$d;

    invoke-direct {v0}, Lcom/amap/apis/utils/core/DeviceInfo$d;-><init>()V

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->N:Lcom/amap/apis/utils/core/DeviceInfo$d;

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo$d;->a:Lcom/amap/apis/utils/core/DeviceInfo$NetworkChangeReceiver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/amap/apis/utils/core/DeviceInfo$NetworkChangeReceiver;

    invoke-direct {v0}, Lcom/amap/apis/utils/core/DeviceInfo$NetworkChangeReceiver;-><init>()V

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo$d;->a:Lcom/amap/apis/utils/core/DeviceInfo$NetworkChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "WYW5kcm9pZC5uZXQuY29ubi5DT05ORUNUSVZJVFlfQ0hBTkdF"

    invoke-static {v1}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo$d;->a:Lcom/amap/apis/utils/core/DeviceInfo$NetworkChangeReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"

    invoke-static {v1}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p0, v1}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo$d;->b:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_3

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo$d;->b:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_3

    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo$d;->c:Landroid/net/NetworkRequest;

    new-instance p0, Lcom/huawei/hem/c1;

    invoke-direct {p0, v0}, Lcom/huawei/hem/c1;-><init>(Lcom/amap/apis/utils/core/DeviceInfo$d;)V

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo$d;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo$d;->b:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo$d;->c:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4
    :cond_3
    :goto_0
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->N:Lcom/amap/apis/utils/core/DeviceInfo$d;

    return-object p0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->b:Ljava/lang/String;

    return-object p0

    .line 1
    :cond_2
    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    if-nez v1, :cond_3

    return-object v0

    .line 2
    :cond_3
    sget-boolean v1, Lcom/amap/apis/utils/core/DeviceInfo;->f:Z

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/amap/apis/utils/core/DeviceInfo;->f:Z

    invoke-static {}, Lcom/loc/bp;->a()Lcom/loc/bp;

    move-result-object v1

    new-instance v2, Lcom/amap/apis/utils/core/DeviceInfo$a;

    invoke-direct {v2, p0}, Lcom/amap/apis/utils/core/DeviceInfo$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/loc/br;->b(Lcom/loc/bq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static m(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->h:Z

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v2, "YY29tLmhleXRhcC5vcGVuaWQ"

    invoke-static {v2}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SY29tLmhleXRhcC5vcGVuaWQuSWRlbnRpZnlTZXJ2aWNl"

    invoke-static {v3}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EYWN0aW9uLmNvbS5oZXl0YXAub3BlbmlkLk9QRU5fSURfU0VSVklDRQ"

    invoke-static {v2}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "WY29tLnNhbXN1bmcuYW5kcm9pZC5kZXZpY2VpZHNlcnZpY2U"

    invoke-static {v2}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QY29tLnNhbXN1bmcuYW5kcm9pZC5kZXZpY2VpZHNlcnZpY2UuRGV2aWNlSWRTZXJ2aWNl"

    invoke-static {v3}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "WY29tLnVvZGlzLm9wZW5kZXZpY2UuT1BFTklEU19TRVJWSUNF"

    invoke-static {v2}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UY29tLmh1YXdlaS5od2lk"

    invoke-static {v2}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    new-instance v2, Lcom/amap/apis/utils/core/DeviceInfo$e;

    invoke-direct {v2, p0, p1}, Lcom/amap/apis/utils/core/DeviceInfo$e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0x64

    if-ge v1, v3, :cond_3

    sget-object v3, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "oa"

    invoke-static {p0, v1, p1}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->h:Z

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->h:Z

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->i:Z

    if-eqz v0, :cond_2

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/loc/bp;->a()Lcom/loc/bp;

    move-result-object v0

    new-instance v1, Lcom/amap/apis/utils/core/DeviceInfo$b;

    invoke-direct {v1, p0}, Lcom/amap/apis/utils/core/DeviceInfo$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/loc/br;->b(Lcom/loc/bq;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->i:Z

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :goto_0
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static p()V
    .locals 2

    const/4 v0, -0x1

    sput v0, Lcom/amap/apis/utils/core/DeviceInfo;->J:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/amap/apis/utils/core/DeviceInfo;->K:Z

    sput v0, Lcom/amap/apis/utils/core/DeviceInfo;->L:I

    sput-boolean v1, Lcom/amap/apis/utils/core/DeviceInfo;->M:Z

    const-string v0, ""

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->H:Ljava/lang/String;

    sput-boolean v1, Lcom/amap/apis/utils/core/DeviceInfo;->I:Z

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->q:Ljava/lang/String;

    sput-boolean v1, Lcom/amap/apis/utils/core/DeviceInfo;->r:Z

    return-void
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->j:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v2, "WYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFVFRJTkdT"

    invoke-static {v2}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mqBRboGZkQPcAkyk"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    :cond_3
    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->j:Z

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_4
    :try_start_1
    const-string v2, "Alvin2"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v3, "UTDID2"

    .line 1
    invoke-static {p0, v2, v3, v1}, Lcom/huawei/hem/o1;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "UTDID"

    invoke-static {p0, v2, v3, v1}, Lcom/huawei/hem/o1;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-object v3, v1

    .line 2
    :cond_5
    :goto_0
    :try_start_3
    sput-object v3, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->j:Z

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object p0

    :catchall_2
    :cond_6
    :try_start_4
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->j:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->a:Ljava/lang/String;

    if-nez p0, :cond_7

    return-object v1

    :cond_7
    return-object p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->l:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->m:Z

    if-eqz v0, :cond_2

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->l:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    :try_start_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v2, 0x1

    if-lt p0, v0, :cond_4

    const-class p0, Landroid/os/Build;

    const-string v0, "MZ2V0U2VyaWFs"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {p0, v0, v4}, Lcom/huawei/hem/l1;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-class v0, Landroid/os/Build;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-boolean v2, Lcom/amap/apis/utils/core/DeviceInfo;->m:Z

    return-object p0

    :cond_4
    sget-object p0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->l:Ljava/lang/String;

    sput-boolean v2, Lcom/amap/apis/utils/core/DeviceInfo;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->l:Ljava/lang/String;

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    return-object p0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->k:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->n:Z

    if-eqz v0, :cond_1

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->k:Ljava/lang/String;

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/huawei/hem/m1;->c(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->k:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->n:Z

    if-nez p0, :cond_2

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p0

    :catchall_0
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_7

    :cond_0
    :try_start_0
    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->p:Z

    if-eqz v0, :cond_2

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    return-object p0

    :cond_3
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    const-string v0, "YMDI6MDA6MDA6MDA6MDA6MDA"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "YMDA6MDA6MDA6MDA6MDA6MDA"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    :cond_6
    const/4 p0, 0x1

    sput-boolean p0, Lcom/amap/apis/utils/core/DeviceInfo;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static u(Landroid/content/Context;)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->g(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x1

    return p0
.end method

.method public static v(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const-string v0, "AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"

    invoke-static {v1}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    const-string v0, ""

    :catchall_1
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1d

    const-string v2, ""

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->z:Z

    if-eqz v0, :cond_2

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    return-object p0

    :cond_3
    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_4

    return-object v2

    .line 2
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "QZ2V0RGV2aWNlSWQ"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v4}, Lcom/huawei/hem/l1;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "QZ2V0SW1laQ=="

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v4}, Lcom/huawei/hem/l1;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    :cond_6
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    if-nez p0, :cond_7

    sput-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    :cond_7
    const/4 p0, 0x1

    sput-boolean p0, Lcom/amap/apis/utils/core/DeviceInfo;->z:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    sget-object p0, Lcom/amap/apis/utils/core/DeviceInfo;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method
