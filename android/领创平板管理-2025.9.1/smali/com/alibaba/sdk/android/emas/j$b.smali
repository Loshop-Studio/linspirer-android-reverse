.class public Lcom/alibaba/sdk/android/emas/j$b;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/emas/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/alibaba/sdk/android/emas/f;

.field public final synthetic a:Lcom/alibaba/sdk/android/emas/j;

.field public final d:Z

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/emas/j;Lcom/alibaba/sdk/android/emas/f;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    .line 3
    iput-boolean p3, p0, Lcom/alibaba/sdk/android/emas/j$b;->d:Z

    .line 4
    iput p4, p0, Lcom/alibaba/sdk/android/emas/j$b;->f:I

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/g;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/emas/g;

    .line 5
    iget-object v2, v1, Lcom/alibaba/sdk/android/emas/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/alibaba/sdk/android/emas/g;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, v1, Lcom/alibaba/sdk/android/emas/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/alibaba/sdk/android/emas/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private a()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/EmasSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/EmasSender;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/emas/j;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget v2, p0, Lcom/alibaba/sdk/android/emas/j$b;->f:I

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/f;->a()Lcom/alibaba/sdk/android/emas/d;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/emas/d;->b:Lcom/alibaba/sdk/android/emas/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(Lcom/alibaba/sdk/android/emas/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/f;->a()Lcom/alibaba/sdk/android/emas/d;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/emas/d;->b:Lcom/alibaba/sdk/android/emas/d;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/emas/e;->a(Lcom/alibaba/sdk/android/emas/f;)Z

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/j$b;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "SendManager trying send disk cache."

    .line 5
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/e;->a()Lcom/alibaba/sdk/android/emas/f;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "SendManager sending disk cache."

    .line 7
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;Lcom/alibaba/sdk/android/emas/f;)V

    goto :goto_0

    :cond_2
    const-string p1, "SendManager disk cache is empty."

    .line 9
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "SendManager finish send. background: "

    .line 10
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/EmasSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/EmasSender;->isBackground()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", queue size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/emas/j;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", limit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()Lcom/alibaba/sdk/android/emas/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    return-object v0
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/j$b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SendManager send queue fill, write into disk cache."

    .line 3
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/alibaba/sdk/android/emas/j$b$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/emas/j$b$1;-><init>(Lcom/alibaba/sdk/android/emas/j$b;)V

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 6
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/j$b$1;->run()V

    goto :goto_0

    :cond_1
    const-string v0, "SendManager send queue fill, already in disk cache. do nothing."

    .line 8
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "SendManager send queue fill, disk cache not open, discard."

    .line 9
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/f;->a()Lcom/alibaba/sdk/android/emas/d;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/emas/d;->b:Lcom/alibaba/sdk/android/emas/d;

    if-ne v0, v1, :cond_0

    const-string v0, "SendManager send disk log, location:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/f;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/PreSendHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/PreSendHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/f;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/emas/f;->a()Lcom/alibaba/sdk/android/emas/d;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/emas/PreSendHandler;->onHandlePreSend(Ljava/util/List;Lcom/alibaba/sdk/android/emas/d;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/f;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 7
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/emas/j$b;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v2}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v3}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Landroid/content/Context;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/util/Map;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SendManager pack request failed"

    .line 9
    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/emas/e;->b(Lcom/alibaba/sdk/android/emas/f;)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 12
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v2}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/sdk/android/tbrest/SendService;->host:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/emas/j$b;->d(Lcom/alibaba/sdk/android/emas/f;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "SendManager request failed. put into cache."

    .line 16
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/e;->a(Lcom/alibaba/sdk/android/emas/f;)V

    goto :goto_2

    :cond_4
    const-string v0, "SendManager request failed. do nothing."

    .line 18
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "SendManager pack requst is null."

    .line 19
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/emas/j$b;->d(Lcom/alibaba/sdk/android/emas/f;)V

    goto :goto_2

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/f;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/emas/j$b;->d(Lcom/alibaba/sdk/android/emas/f;)V

    :goto_2
    return-void
.end method
