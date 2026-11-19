.class public Lcom/huawei/hem/vf;
.super Ljava/lang/Object;
.source "DownloadEventPoolImpl.java"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/huawei/hem/yf;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    const-string v1, "EventPool"

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/of$b;->f(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/vf;->a:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/vf;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/xf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vf;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/huawei/hem/vf$a;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hem/vf$a;-><init>(Lcom/huawei/hem/vf;Lcom/huawei/hem/xf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
