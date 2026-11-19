.class public final Lcom/loc/dq$b;
.super Lcom/loc/bq;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/loc/dq;

.field public b:I

.field public c:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/loc/dq;I)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/loc/dq$b;->b:I

    iput p2, p0, Lcom/loc/dq$b;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/loc/dq;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/loc/dq$b;-><init>(Lcom/loc/dq;I)V

    iput-object p2, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    return-void
.end method

.method private b()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    invoke-static {v0}, Lcom/loc/dq;->a(Lcom/loc/dq;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v1, "satellites"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_2
    iget-object v0, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/loc/ew;->a(Landroid/location/Location;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->b:Lcom/loc/ed;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->b:Lcom/loc/ed;

    iget-boolean v0, v0, Lcom/loc/ed;->r:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->b:Lcom/loc/ed;

    invoke-virtual {v0}, Lcom/loc/ed;->f()V

    :cond_4
    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->b:Lcom/loc/ed;

    invoke-virtual {v0}, Lcom/loc/ed;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v2, v2, Lcom/loc/dq;->c:Lcom/loc/dz;

    invoke-virtual {v2}, Lcom/loc/dz;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/loc/by$a;

    invoke-direct {v3}, Lcom/loc/by$a;-><init>()V

    new-instance v4, Lcom/loc/dd;

    invoke-direct {v4}, Lcom/loc/dd;-><init>()V

    iget-object v5, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    iput v5, v4, Lcom/loc/dc;->i:F

    iget-object v5, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/loc/dc;->f:D

    iget-object v5, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/loc/dc;->d:D

    iget-object v5, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v5

    iput v5, v4, Lcom/loc/dc;->h:F

    iget-object v5, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/loc/dc;->e:D

    iget-object v5, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v5

    iput-boolean v5, v4, Lcom/loc/dc;->j:Z

    iget-object v5, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/loc/dc;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getSpeed()F

    move-result v5

    iput v5, v4, Lcom/loc/dc;->g:F

    int-to-byte v1, v1

    iput-byte v1, v4, Lcom/loc/dd;->l:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/loc/dc;->b:J

    iget-object v1, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/loc/dc;->c:J

    iget-object v1, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/loc/dd;->k:J

    iput-object v4, v3, Lcom/loc/by$a;->a:Lcom/loc/dd;

    iput-object v0, v3, Lcom/loc/by$a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->b:Lcom/loc/ed;

    invoke-virtual {v0}, Lcom/loc/ed;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/de;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/loc/by$a;->c:J

    :cond_5
    sget-wide v0, Lcom/loc/ed;->z:J

    iput-wide v0, v3, Lcom/loc/by$a;->d:J

    iget-object v0, p0, Lcom/loc/dq$b;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/loc/by$a;->f:J

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1
    :try_start_1
    invoke-static {v0}, Lcom/amap/apis/utils/core/DeviceInfo;->h(Landroid/content/Context;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, -0x1

    :goto_0
    int-to-byte v0, v0

    .line 2
    :try_start_2
    iput-byte v0, v3, Lcom/loc/by$a;->g:B

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/content/Context;

    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v4, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    .line 3
    invoke-static {v4}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amap/apis/utils/core/DeviceInfo;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->E:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v4, "phone"

    .line 4
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    goto :goto_1

    .line 5
    :cond_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6
    :catchall_1
    :goto_1
    :try_start_4
    iput-object v1, v3, Lcom/loc/by$a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->b:Lcom/loc/ed;

    invoke-virtual {v0}, Lcom/loc/ed;->k()Z

    move-result v0

    iput-boolean v0, v3, Lcom/loc/by$a;->e:Z

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ew;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/loc/by$a;->j:Z

    iput-object v2, v3, Lcom/loc/by$a;->i:Ljava/util/List;

    invoke-static {v3}, Lcom/loc/cu;->a(Lcom/loc/by$a;)Lcom/loc/ca;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    invoke-static {v1}, Lcom/loc/dq;->b(Lcom/loc/dq;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v2, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    invoke-static {v2}, Lcom/loc/dq;->b(Lcom/loc/dq;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    invoke-static {v0}, Lcom/loc/dq;->b(Lcom/loc/dq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_9

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    invoke-virtual {v0}, Lcom/loc/dq;->e()V

    :cond_9
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    invoke-virtual {v0}, Lcom/loc/dq;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    const-string v1, "cl"

    const-string v2, "coll"

    invoke-static {v0, v1, v2}, Lcom/loc/ep;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/loc/dq;->a(J)J

    iget-object v1, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v1, v1, Lcom/loc/dq;->e:Lcom/loc/at;

    iget-object v1, v1, Lcom/loc/at;->f:Lcom/loc/bm;

    invoke-virtual {v1}, Lcom/loc/bm;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v2, v2, Lcom/loc/dq;->e:Lcom/loc/at;

    iget-object v2, v2, Lcom/loc/at;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v2, v2, Lcom/loc/dq;->e:Lcom/loc/at;

    iget-wide v2, v2, Lcom/loc/at;->b:J

    invoke-static {v1, v2, v3}, Lcom/loc/aj;->a(Ljava/io/File;J)Lcom/loc/aj;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/loc/dq;->f()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/loc/aj;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v3, v3, Lcom/loc/dq;->e:Lcom/loc/at;

    invoke-static {v0, v3, v1, v2}, Lcom/loc/dq;->a(Lcom/loc/aj;Lcom/loc/at;Ljava/util/List;[B)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    iget-object v4, v4, Lcom/loc/dq;->e:Lcom/loc/at;

    iget-object v4, v4, Lcom/loc/at;->f:Lcom/loc/bm;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/loc/bm;->a(Z)V

    invoke-static {}, Lcom/loc/cu;->a()[B

    move-result-object v4

    invoke-static {}, Lcom/huawei/hem/l1;->u()[B

    move-result-object v5

    .line 1
    invoke-static {v2, v4, v5}, Lcom/huawei/hem/h1;->g([B[B[B)[B

    move-result-object v4

    .line 2
    invoke-static {v2}, Lcom/loc/ee;->a([B)[B

    move-result-object v2

    invoke-static {v2, v4, v3}, Lcom/loc/cu;->a([B[BLjava/util/List;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/l1;->s([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cu;->a([B)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Lcom/loc/dq;->a(Lcom/loc/aj;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/loc/aj;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    return-void

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Lcom/loc/aj;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    return-void

    :catchall_3
    move-exception v1

    :try_start_5
    const-string v2, "leg"

    const-string v3, "uts"

    invoke-static {v1, v2, v3}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Lcom/loc/aj;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_4
    return-void

    :catchall_5
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Lcom/loc/aj;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    :cond_5
    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/loc/dq$b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/loc/dq$b;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/loc/dq$b;->c()V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/loc/dq$b;->a:Lcom/loc/dq;

    invoke-static {v0}, Lcom/loc/dq;->c(Lcom/loc/dq;)V

    :cond_2
    return-void
.end method
