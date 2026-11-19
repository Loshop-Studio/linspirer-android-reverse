.class public Lcom/huawei/hem/w8;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static k:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Landroid/content/Context;

.field public e:Lcom/huawei/hem/v8;

.field public f:Lcom/huawei/hem/a8;

.field public g:Lcom/huawei/hem/c8;

.field public h:Lcom/huawei/hem/c8;

.field public i:Lcom/huawei/hem/z7;

.field public j:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "GRS_GrsClient-Init"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/w8;->k:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/w8;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/w8;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/w8;->d:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/huawei/hem/w8;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    iget-boolean p2, p0, Lcom/huawei/hem/w8;->b:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/huawei/hem/w8;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hem/w8;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v1, p0, Lcom/huawei/hem/w8;->d:Landroid/content/Context;

    sget-object v2, Lcom/huawei/hem/w8;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/huawei/hem/w8$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/huawei/hem/w8$a;-><init>(Lcom/huawei/hem/w8;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/w8;->j:Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/w8;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/w8;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/huawei/hem/w8;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->clone()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "d"

    const-string v2, "GrsClient catch CloneNotSupportedException"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->copy()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 6

    const-string v0, "d"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/w8;->j:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/hem/w8;->j:Ljava/util/concurrent/Future;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v2

    const-string v3, "init compute task occur unknown Exception"

    invoke-static {v0, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    const-string v2, "init compute task timed out"

    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :catch_2
    move-exception v2

    const-string v3, "init compute task interrupted."

    invoke-static {v0, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_3
    move-exception v2

    const-string v3, "init compute task failed."

    invoke-static {v0, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_4
    const-string v2, "init compute task canceled."

    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method
