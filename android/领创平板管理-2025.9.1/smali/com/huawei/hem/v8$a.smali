.class public Lcom/huawei/hem/v8$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/v8;->a(Lcom/huawei/hem/n8;Ljava/lang/String;Lcom/huawei/hem/c8;)Lcom/huawei/hem/r8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hem/r8;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/n8;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/huawei/hem/c8;

.field public final synthetic d:Lcom/huawei/hem/v8;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/v8;Lcom/huawei/hem/n8;Ljava/lang/String;Lcom/huawei/hem/c8;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hem/v8$a;->d:Lcom/huawei/hem/v8;

    iput-object p2, p0, Lcom/huawei/hem/v8$a;->a:Lcom/huawei/hem/n8;

    iput-object p3, p0, Lcom/huawei/hem/v8$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hem/v8$a;->c:Lcom/huawei/hem/c8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lcom/huawei/hem/q8;

    iget-object v1, p0, Lcom/huawei/hem/v8$a;->a:Lcom/huawei/hem/n8;

    iget-object v2, p0, Lcom/huawei/hem/v8$a;->d:Lcom/huawei/hem/v8;

    .line 2
    iget-object v2, v2, Lcom/huawei/hem/v8;->d:Lcom/huawei/hem/a8;

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/huawei/hem/q8;-><init>(Lcom/huawei/hem/n8;Lcom/huawei/hem/a8;)V

    iget-object v1, p0, Lcom/huawei/hem/v8$a;->d:Lcom/huawei/hem/v8;

    .line 4
    iget-object v1, v1, Lcom/huawei/hem/v8;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    iget-object v2, p0, Lcom/huawei/hem/v8$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hem/v8$a;->c:Lcom/huawei/hem/c8;

    const-string v4, "e"

    .line 6
    iget-object v5, v0, Lcom/huawei/hem/q8;->h:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/huawei/hem/q8;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    :try_start_0
    iget-object v5, v0, Lcom/huawei/hem/q8;->j:Lcom/huawei/hem/o8;

    if-eqz v5, :cond_1

    .line 8
    iget v5, v5, Lcom/huawei/hem/o8;->d:I

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    .line 9
    :goto_0
    new-instance v7, Lcom/huawei/hem/p8;

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/huawei/hem/p8;-><init>(Lcom/huawei/hem/q8;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/huawei/hem/c8;)V

    invoke-interface {v1, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    int-to-long v1, v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/r8;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "{submitExcutorTaskWithTimeout} catch Exception"

    goto :goto_1

    :catch_1
    const-string v0, "{submitExcutorTaskWithTimeout} the wait timed out"

    invoke-static {v4, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "{submitExcutorTaskWithTimeout} the current thread was interrupted while waiting"

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "{submitExcutorTaskWithTimeout} the computation threw an ExecutionException"

    :goto_1
    invoke-static {v4, v1, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    const-string v0, "{submitExcutorTaskWithTimeout} the computation was cancelled"

    invoke-static {v4, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-object v6
.end method
