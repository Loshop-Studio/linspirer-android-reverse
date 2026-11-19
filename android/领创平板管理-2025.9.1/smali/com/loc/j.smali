.class public Lcom/loc/j;
.super Ljava/lang/Object;
.source "AdiuManager.java"


# static fields
.field public static a:Lcom/loc/j;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/loc/j;->b:Landroid/content/Context;

    const-string p1, "RYW1hcF9kZXZpY2VfYWRpdQ"

    invoke-static {p1}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/loc/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/loc/j;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/j;
    .locals 2

    sget-object v0, Lcom/loc/j;->a:Lcom/loc/j;

    if-nez v0, :cond_1

    const-class v0, Lcom/loc/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/loc/j;->a:Lcom/loc/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/loc/j;

    invoke-direct {v1, p0}, Lcom/loc/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/loc/j;->a:Lcom/loc/j;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/loc/j;->a:Lcom/loc/j;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/loc/n;->a()Lcom/amap/apis/utils/core/DeviceInfo$c;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;

    if-nez v1, :cond_0

    sput-object v0, Lcom/amap/apis/utils/core/DeviceInfo;->e:Lcom/amap/apis/utils/core/DeviceInfo$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/k;->a(Landroid/content/Context;)Lcom/loc/k;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/k;->a(Landroid/content/Context;)Lcom/loc/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/k;->b(Ljava/lang/String;)V

    return-void
.end method
