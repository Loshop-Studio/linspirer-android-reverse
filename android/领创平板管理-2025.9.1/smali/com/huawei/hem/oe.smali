.class public Lcom/huawei/hem/oe;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/oe$c;,
        Lcom/huawei/hem/oe$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/Executor;

.field public static f:I

.field public static g:I


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/huawei/hem/ve;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hem/ve;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "BlockCompleted"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hem/of$b;->f(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lcom/huawei/hem/oe;->e:Ljava/util/concurrent/Executor;

    const/16 v1, 0xa

    .line 2
    sput v1, Lcom/huawei/hem/oe;->f:I

    .line 3
    sput v0, Lcom/huawei/hem/oe;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/oe$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/oe;->c:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/oe;->d:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/huawei/hem/oe$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huawei/hem/oe$c;-><init>(Lcom/huawei/hem/oe$a;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/huawei/hem/oe;->a:Landroid/os/Handler;

    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public static a()Lcom/huawei/hem/oe;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/oe$b;->a:Lcom/huawei/hem/oe;

    return-object v0
.end method

.method public static b(Lcom/huawei/hem/ve;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/huawei/hem/ve;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/oe;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/huawei/hem/oe$a;

    invoke-direct {v1, p0}, Lcom/huawei/hem/oe$a;-><init>(Lcom/huawei/hem/ve;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget v0, Lcom/huawei/hem/oe;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/oe;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/oe;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/huawei/hem/oe;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcom/huawei/hem/oe;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    goto :goto_1

    .line 8
    :cond_2
    sget v1, Lcom/huawei/hem/oe;->f:I

    .line 9
    iget-object v3, p0, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    sget v4, Lcom/huawei/hem/oe;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 10
    iget-object v4, p0, Lcom/huawei/hem/oe;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/huawei/hem/oe;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/huawei/hem/oe;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/huawei/hem/oe;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
