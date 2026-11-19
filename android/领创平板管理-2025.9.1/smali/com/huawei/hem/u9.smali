.class public final Lcom/huawei/hem/u9;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcom/huawei/hem/u9;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/u9;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/huawei/hem/u9;
    .locals 2

    sget-object v0, Lcom/huawei/hem/u9;->c:Lcom/huawei/hem/u9;

    if-nez v0, :cond_1

    .line 1
    const-class v0, Lcom/huawei/hem/u9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/u9;->c:Lcom/huawei/hem/u9;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hem/u9;

    invoke-direct {v1}, Lcom/huawei/hem/u9;-><init>()V

    sput-object v1, Lcom/huawei/hem/u9;->c:Lcom/huawei/hem/u9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hem/u9;->c:Lcom/huawei/hem/u9;

    return-object v0
.end method
