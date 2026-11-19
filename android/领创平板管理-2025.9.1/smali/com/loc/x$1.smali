.class public final Lcom/loc/x$1;
.super Lcom/loc/bq;
.source "ErrorLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/x;->a(Landroid/content/Context;Lcom/loc/bm;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/loc/bm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/loc/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/x$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/x$1;->c:Lcom/loc/bm;

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    :try_start_0
    const-class v0, Lcom/loc/x;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/loc/x;->a()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/az;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/at;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/x$1;->b:Ljava/lang/String;

    const/16 v5, 0x3e8

    const v6, 0x3e8000

    const-string v7, "1"

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/loc/az;->a(Landroid/content/Context;Lcom/loc/at;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/loc/x$1;->c:Lcom/loc/bm;

    iput-object v2, v1, Lcom/loc/at;->f:Lcom/loc/bm;

    iget-object v2, v1, Lcom/loc/at;->g:Lcom/loc/bg;

    if-nez v2, :cond_0

    new-instance v2, Lcom/loc/bd;

    new-instance v9, Lcom/loc/bc;

    iget-object v4, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    new-instance v5, Lcom/loc/bh;

    invoke-direct {v5}, Lcom/loc/bh;-><init>()V

    new-instance v6, Lcom/loc/af;

    new-instance v3, Lcom/loc/ah;

    new-instance v7, Lcom/loc/ai;

    invoke-direct {v7}, Lcom/loc/ai;-><init>()V

    invoke-direct {v3, v7}, Lcom/loc/ah;-><init>(Lcom/loc/ag;)V

    invoke-direct {v6, v3}, Lcom/loc/af;-><init>(Lcom/loc/ag;)V

    const-string v7, "QImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJhZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMi"

    const/16 v3, 0x8

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/huawei/hem/e1;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x1

    iget-object v10, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/apis/utils/core/DeviceInfo;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x2

    iget-object v10, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/apis/utils/core/DeviceInfo;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x3

    iget-object v10, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/huawei/hem/e1;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x4

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v10, v8, v3

    const/4 v3, 0x5

    iget-object v10, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/huawei/hem/e1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x6

    iget-object v10, p0, Lcom/loc/x$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/huawei/hem/e1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x7

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v10, v8, v3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/loc/bc;-><init>(Landroid/content/Context;Lcom/loc/bg;Lcom/loc/ag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v2, v9}, Lcom/loc/bd;-><init>(Lcom/loc/bg;)V

    iput-object v2, v1, Lcom/loc/at;->g:Lcom/loc/bg;

    :cond_0
    const v2, 0x36ee80

    iput v2, v1, Lcom/loc/at;->h:I

    invoke-static {v1}, Lcom/loc/au;->a(Lcom/loc/at;)I

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

    const-string v1, "lg"

    const-string v2, "pul"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
