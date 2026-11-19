.class public Lcom/huawei/hem/x7;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/y7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hem/y7<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hem/y7;

    invoke-direct {v0}, Lcom/huawei/hem/y7;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/x7;->a:Lcom/huawei/hem/y7;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lcom/huawei/hem/x7;->a:Lcom/huawei/hem/y7;

    .line 1
    iget-object v0, p1, Lcom/huawei/hem/y7;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/huawei/hem/y7;->b:Z

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/huawei/hem/y7;->b:Z

    iget-object v1, p1, Lcom/huawei/hem/y7;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {p1}, Lcom/huawei/hem/y7;->a()V

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hem/x7;->a:Lcom/huawei/hem/y7;

    .line 1
    iget-object v1, v0, Lcom/huawei/hem/y7;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/huawei/hem/y7;->b:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/huawei/hem/y7;->b:Z

    iput-object p1, v0, Lcom/huawei/hem/y7;->c:Ljava/lang/Object;

    iget-object p1, v0, Lcom/huawei/hem/y7;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {v0}, Lcom/huawei/hem/y7;->a()V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
