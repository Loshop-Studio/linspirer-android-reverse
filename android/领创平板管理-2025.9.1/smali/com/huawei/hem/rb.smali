.class public Lcom/huawei/hem/rb;
.super Ljava/lang/Object;
.source "HttpCore.java"


# static fields
.field public static a:Landroid/os/Handler;

.field public static b:Lcom/huawei/hem/dk;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/huawei/hem/rb;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/huawei/hem/rb;->b:Lcom/huawei/hem/dk;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/huawei/hem/rb;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/hem/rb;->b:Lcom/huawei/hem/dk;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/huawei/hem/dk;

    .line 6
    new-instance v2, Lcom/huawei/hem/dk$b;

    invoke-direct {v2}, Lcom/huawei/hem/dk$b;-><init>()V

    invoke-direct {v1, v2}, Lcom/huawei/hem/dk;-><init>(Lcom/huawei/hem/dk$b;)V

    .line 7
    sput-object v1, Lcom/huawei/hem/rb;->b:Lcom/huawei/hem/dk;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Lcom/huawei/hem/dk$b;

    invoke-direct {v0}, Lcom/huawei/hem/dk$b;-><init>()V

    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    const-wide/16 v3, 0x1e

    .line 11
    invoke-static {v2, v3, v4, v1}, Lcom/huawei/hem/tk;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lcom/huawei/hem/dk$b;->t:I

    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    .line 13
    invoke-static {v2, v3, v4, v1}, Lcom/huawei/hem/tk;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lcom/huawei/hem/dk$b;->u:I

    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    .line 15
    invoke-static {v2, v3, v4, v1}, Lcom/huawei/hem/tk;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lcom/huawei/hem/dk$b;->v:I

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Lcom/huawei/hem/dk$b;->q:Z

    .line 17
    new-instance v1, Lcom/huawei/hem/dk;

    invoke-direct {v1, v0}, Lcom/huawei/hem/dk;-><init>(Lcom/huawei/hem/dk$b;)V

    .line 18
    sput-object v1, Lcom/huawei/hem/rb;->b:Lcom/huawei/hem/dk;

    return-void
.end method
