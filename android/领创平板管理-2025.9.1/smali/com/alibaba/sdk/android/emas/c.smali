.class public Lcom/alibaba/sdk/android/emas/c;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lcom/alibaba/sdk/android/emas/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/emas/Cache<",
        "Lcom/alibaba/sdk/android/emas/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:I

.field public final mSendManager:Lcom/alibaba/sdk/android/emas/j;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/emas/j;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/alibaba/sdk/android/emas/c;->a:I

    .line 3
    iput p3, p0, Lcom/alibaba/sdk/android/emas/c;->b:I

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/alibaba/sdk/android/emas/c;->c:I

    .line 5
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/c;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/j;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/alibaba/sdk/android/emas/c;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/emas/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized a(Lcom/alibaba/sdk/android/emas/g;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget v0, p0, Lcom/alibaba/sdk/android/emas/c;->c:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/g;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/sdk/android/emas/c;->c:I

    .line 5
    iget-object p1, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/alibaba/sdk/android/emas/c;->a:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/alibaba/sdk/android/emas/c;->c:I

    iget v0, p0, Lcom/alibaba/sdk/android/emas/c;->b:I

    if-lt p1, v0, :cond_2

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CacheManager satisfy limit. immediately send. size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", current capacity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/sdk/android/emas/c;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/alibaba/sdk/android/emas/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/emas/g;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/emas/c;->a(Lcom/alibaba/sdk/android/emas/g;)V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CacheManager flush. immediately send."

    .line 2
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/emas/c;->a()Lcom/alibaba/sdk/android/emas/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/emas/g;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/emas/c;->a(Lcom/alibaba/sdk/android/emas/g;)Z

    move-result p1

    return p1
.end method
