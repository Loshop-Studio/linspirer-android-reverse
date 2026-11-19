.class public final Lcom/amap/apis/utils/core/DeviceInfo$a;
.super Lcom/loc/bq;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/apis/utils/core/DeviceInfo;->l(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/apis/utils/core/DeviceInfo$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    invoke-interface {v1}, Lcom/amap/apis/utils/core/DeviceInfo$c;->b()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    iget-object v3, p0, Lcom/amap/apis/utils/core/DeviceInfo$a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/apis/utils/core/DeviceInfo;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/apis/utils/core/DeviceInfo$a;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/apis/utils/core/DeviceInfo;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v0, v0, v4}, Lcom/amap/apis/utils/core/DeviceInfo$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/loc/am;->a()Lcom/loc/am;

    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/amap/apis/utils/core/DeviceInfo$c;->a([BLjava/util/Map;)Lcom/loc/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/am;->a(Lcom/loc/ar;)Lcom/loc/as;

    move-result-object v0

    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    iget-object v2, p0, Lcom/amap/apis/utils/core/DeviceInfo$a;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/loc/as;->a:[B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2, v3}, Lcom/amap/apis/utils/core/DeviceInfo$c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
