.class public final Lcom/loc/aw$a;
.super Lcom/loc/bq;
.source "OfflineLocManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/content/Context;

.field public c:Lcom/loc/av;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    iput-object p1, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    iput p2, p0, Lcom/loc/aw$a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/loc/av;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/loc/aw$a;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/loc/aw$a;->c:Lcom/loc/av;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    iget v0, p0, Lcom/loc/aw$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :try_start_0
    const-class v0, Lcom/loc/aw;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/loc/aw;->a()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/az;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/at;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    sget-object v5, Lcom/loc/u;->i:Ljava/lang/String;

    sget v6, Lcom/loc/aw;->a:I

    const/high16 v7, 0x200000

    const-string v8, "6"

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/loc/az;->a(Landroid/content/Context;Lcom/loc/at;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, v2, Lcom/loc/at;->e:Lcom/loc/ag;

    if-nez v3, :cond_0

    new-instance v3, Lcom/loc/af;

    new-instance v4, Lcom/loc/ah;

    new-instance v5, Lcom/loc/ai;

    new-instance v6, Lcom/loc/ah;

    invoke-direct {v6}, Lcom/loc/ah;-><init>()V

    invoke-direct {v5, v6}, Lcom/loc/ai;-><init>(Lcom/loc/ag;)V

    invoke-direct {v4, v5}, Lcom/loc/ah;-><init>(Lcom/loc/ag;)V

    invoke-direct {v3, v4}, Lcom/loc/af;-><init>(Lcom/loc/ag;)V

    iput-object v3, v2, Lcom/loc/at;->e:Lcom/loc/ag;

    :cond_0
    iget-object v3, p0, Lcom/loc/aw$a;->c:Lcom/loc/av;

    invoke-virtual {v3}, Lcom/loc/av;->a()[B

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/loc/au;->a(Ljava/lang/String;[BLcom/loc/at;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "aple"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    :try_start_3
    invoke-static {}, Lcom/loc/aw;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/az;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/at;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    sget-object v5, Lcom/loc/u;->i:Ljava/lang/String;

    sget v6, Lcom/loc/aw;->a:I

    const/high16 v7, 0x200000

    const-string v8, "6"

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Lcom/loc/az;->a(Landroid/content/Context;Lcom/loc/at;Ljava/lang/String;IILjava/lang/String;)V

    const v3, 0xdbba00

    iput v3, v0, Lcom/loc/at;->h:I

    iget-object v3, v0, Lcom/loc/at;->g:Lcom/loc/bg;

    if-nez v3, :cond_2

    new-instance v7, Lcom/loc/af;

    new-instance v3, Lcom/loc/ah;

    new-instance v4, Lcom/loc/ai;

    invoke-direct {v4}, Lcom/loc/ai;-><init>()V

    invoke-direct {v3, v4}, Lcom/loc/ah;-><init>(Lcom/loc/ag;)V

    invoke-direct {v7, v3}, Lcom/loc/af;-><init>(Lcom/loc/ag;)V

    new-instance v3, Lcom/loc/bd;

    new-instance v10, Lcom/loc/bc;

    iget-object v5, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    new-instance v6, Lcom/loc/bh;

    invoke-direct {v6}, Lcom/loc/bh;-><init>()V

    new-instance v8, Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/huawei/hem/m1;->c(I)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v9, 0xf

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v12}, Lcom/huawei/hem/e1;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    iget-object v11, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v11}, Lcom/amap/apis/utils/core/DeviceInfo;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v1

    iget-object v1, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/apis/utils/core/DeviceInfo;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/apis/utils/core/DeviceInfo;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x4

    .line 1
    sget-object v2, Lcom/amap/apis/utils/core/DeviceInfo;->d:Ljava/lang/String;

    aput-object v2, v9, v1

    const/4 v1, 0x5

    .line 2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v2, v9, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v2, v9, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/apis/utils/core/DeviceInfo;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hem/e1;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v9, v1

    iget-object v1, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hem/e1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hem/e1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/apis/utils/core/DeviceInfo;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/apis/utils/core/DeviceInfo;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0xe

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/loc/bc;-><init>(Landroid/content/Context;Lcom/loc/bg;Lcom/loc/ag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v3, v10}, Lcom/loc/bd;-><init>(Lcom/loc/bg;)V

    iput-object v3, v0, Lcom/loc/at;->g:Lcom/loc/bg;

    :cond_2
    iget-object v1, v0, Lcom/loc/at;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "fKey"

    iput-object v1, v0, Lcom/loc/at;->i:Ljava/lang/String;

    :cond_3
    new-instance v1, Lcom/loc/bl;

    iget-object v2, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    iget v3, v0, Lcom/loc/at;->h:I

    iget-object v4, v0, Lcom/loc/at;->i:Ljava/lang/String;

    new-instance v12, Lcom/loc/bj;

    iget-object v6, p0, Lcom/loc/aw$a;->b:Landroid/content/Context;

    sget-boolean v7, Lcom/loc/aw;->b:Z

    invoke-static {}, Lcom/loc/aw;->b()I

    move-result v5

    mul-int/lit16 v8, v5, 0x400

    sget v5, Lcom/loc/aw;->c:I

    mul-int/lit16 v9, v5, 0x400

    const-string v10, "offLocKey"

    sget v5, Lcom/loc/aw;->d:I

    mul-int/lit16 v11, v5, 0x400

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/loc/bj;-><init>(Landroid/content/Context;ZIILjava/lang/String;I)V

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/loc/bl;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/loc/bm;)V

    iput-object v1, v0, Lcom/loc/at;->f:Lcom/loc/bm;

    invoke-static {v0}, Lcom/loc/au;->a(Lcom/loc/at;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "uold"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
