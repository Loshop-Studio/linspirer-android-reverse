.class public abstract Landroid/arch/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveData$b;,
        Landroid/arch/lifecycle/LiveData$c;,
        Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOT_SET:Ljava/lang/Object;

.field public static final START_VERSION:I = -0x1


# instance fields
.field public mActiveCount:I

.field public volatile mData:Ljava/lang/Object;

.field public final mDataLock:Ljava/lang/Object;

.field public mDispatchInvalidated:Z

.field public mDispatchingValue:Z

.field public mObservers:Lcom/huawei/hem/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hem/e<",
            "Lcom/huawei/hem/p<",
            "TT;>;",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.c;>;"
        }
    .end annotation
.end field

.field public volatile mPendingData:Ljava/lang/Object;

.field public final mPostValueRunnable:Ljava/lang/Runnable;

.field public mVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/huawei/hem/e;

    invoke-direct {v0}, Lcom/huawei/hem/e;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Lcom/huawei/hem/e;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    .line 5
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 6
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 8
    new-instance v0, Landroid/arch/lifecycle/LiveData$a;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LiveData$a;-><init>(Landroid/arch/lifecycle/LiveData;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$300(Landroid/arch/lifecycle/LiveData;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return p0
.end method

.method public static synthetic access$302(Landroid/arch/lifecycle/LiveData;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return p1
.end method

.method public static synthetic access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$c;)V

    return-void
.end method

.method public static assertMainThread(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/a;->c()Lcom/huawei/hem/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/a;->a:Lcom/huawei/hem/c;

    invoke-virtual {v0}, Lcom/huawei/hem/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Landroid/arch/lifecycle/LiveData$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.c;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Landroid/arch/lifecycle/LiveData$c;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData$c;->k()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$c;->h(Z)V

    return-void

    .line 4
    :cond_1
    iget v0, p1, Landroid/arch/lifecycle/LiveData$c;->c:I

    iget v1, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iput v1, p1, Landroid/arch/lifecycle/LiveData$c;->c:I

    .line 6
    iget-object p1, p1, Landroid/arch/lifecycle/LiveData$c;->a:Lcom/huawei/hem/p;

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/huawei/hem/p;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchingValue(Landroid/arch/lifecycle/LiveData$c;)V
    .locals 4
    .param p1    # Landroid/arch/lifecycle/LiveData$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.c;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$c;)V

    move-object p1, v1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Lcom/huawei/hem/e;

    .line 7
    new-instance v3, Lcom/huawei/hem/e$e;

    invoke-direct {v3, v2, v1}, Lcom/huawei/hem/e$e;-><init>(Lcom/huawei/hem/e;Lcom/huawei/hem/e$a;)V

    .line 8
    iget-object v1, v2, Lcom/huawei/hem/e;->c:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_3
    invoke-virtual {v3}, Lcom/huawei/hem/e$e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v3}, Lcom/huawei/hem/e$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LiveData$c;

    invoke-direct {p0, v1}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$c;)V

    .line 11
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v1, :cond_3

    .line 12
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_1

    .line 13
    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 2
    sget-object v1, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    return v0
.end method

.method public hasActiveObservers()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Lcom/huawei/hem/e;

    .line 2
    iget v0, v0, Lcom/huawei/hem/e;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public observe(Lcom/huawei/hem/j;Lcom/huawei/hem/p;)V
    .locals 6
    .param p1    # Lcom/huawei/hem/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/huawei/hem/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/j;",
            "Lcom/huawei/hem/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/huawei/hem/j;->getLifecycle()Lcom/huawei/hem/h;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/k;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k;->b:Lcom/huawei/hem/h$b;

    .line 3
    sget-object v1, Lcom/huawei/hem/h$b;->DESTROYED:Lcom/huawei/hem/h$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroid/arch/lifecycle/LiveData;Lcom/huawei/hem/j;Lcom/huawei/hem/p;)V

    .line 5
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Lcom/huawei/hem/e;

    invoke-virtual {v1, p2, v0}, Lcom/huawei/hem/e;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/arch/lifecycle/LiveData$c;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2, p1}, Landroid/arch/lifecycle/LiveData$c;->j(Lcom/huawei/hem/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-interface {p1}, Lcom/huawei/hem/j;->getLifecycle()Lcom/huawei/hem/h;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/k;

    .line 9
    iget-object p2, p1, Lcom/huawei/hem/k;->b:Lcom/huawei/hem/h$b;

    sget-object v1, Lcom/huawei/hem/h$b;->DESTROYED:Lcom/huawei/hem/h$b;

    if-ne p2, v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/huawei/hem/h$b;->INITIALIZED:Lcom/huawei/hem/h$b;

    .line 10
    :goto_1
    new-instance p2, Lcom/huawei/hem/k$a;

    invoke-direct {p2, v0, v1}, Lcom/huawei/hem/k$a;-><init>(Lcom/huawei/hem/i;Lcom/huawei/hem/h$b;)V

    .line 11
    iget-object v1, p1, Lcom/huawei/hem/k;->a:Lcom/huawei/hem/d;

    invoke-virtual {v1, v0, p2}, Lcom/huawei/hem/d;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hem/k$a;

    if-eqz v1, :cond_5

    goto :goto_5

    .line 12
    :cond_5
    iget-object v1, p1, Lcom/huawei/hem/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hem/j;

    if-nez v1, :cond_6

    goto :goto_5

    .line 13
    :cond_6
    iget v2, p1, Lcom/huawei/hem/k;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_8

    iget-boolean v2, p1, Lcom/huawei/hem/k;->e:Z

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v3

    .line 14
    :goto_3
    invoke-virtual {p1, v0}, Lcom/huawei/hem/k;->a(Lcom/huawei/hem/i;)Lcom/huawei/hem/h$b;

    move-result-object v4

    .line 15
    iget v5, p1, Lcom/huawei/hem/k;->d:I

    add-int/2addr v5, v3

    iput v5, p1, Lcom/huawei/hem/k;->d:I

    .line 16
    :goto_4
    iget-object v5, p2, Lcom/huawei/hem/k$a;->a:Lcom/huawei/hem/h$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_9

    iget-object v4, p1, Lcom/huawei/hem/k;->a:Lcom/huawei/hem/d;

    .line 17
    iget-object v4, v4, Lcom/huawei/hem/d;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 18
    iget-object v4, p2, Lcom/huawei/hem/k$a;->a:Lcom/huawei/hem/h$b;

    .line 19
    iget-object v5, p1, Lcom/huawei/hem/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v4, p2, Lcom/huawei/hem/k$a;->a:Lcom/huawei/hem/h$b;

    invoke-static {v4}, Lcom/huawei/hem/k;->h(Lcom/huawei/hem/h$b;)Lcom/huawei/hem/h$a;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/huawei/hem/k$a;->a(Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;)V

    .line 21
    invoke-virtual {p1}, Lcom/huawei/hem/k;->f()V

    .line 22
    invoke-virtual {p1, v0}, Lcom/huawei/hem/k;->a(Lcom/huawei/hem/i;)Lcom/huawei/hem/h$b;

    move-result-object v4

    goto :goto_4

    :cond_9
    if-nez v2, :cond_a

    .line 23
    invoke-virtual {p1}, Lcom/huawei/hem/k;->g()V

    .line 24
    :cond_a
    iget p2, p1, Lcom/huawei/hem/k;->d:I

    sub-int/2addr p2, v3

    iput p2, p1, Lcom/huawei/hem/k;->d:I

    :goto_5
    return-void
.end method

.method public observeForever(Lcom/huawei/hem/p;)V
    .locals 2
    .param p1    # Lcom/huawei/hem/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/arch/lifecycle/LiveData$b;

    invoke-direct {v0, p0, p1}, Landroid/arch/lifecycle/LiveData$b;-><init>(Landroid/arch/lifecycle/LiveData;Lcom/huawei/hem/p;)V

    .line 2
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Lcom/huawei/hem/e;

    invoke-virtual {v1, p1, v0}, Lcom/huawei/hem/e;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LiveData$c;

    if-eqz p1, :cond_1

    .line 3
    instance-of v1, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/LiveData$c;->h(Z)V

    return-void
.end method

.method public onActive()V
    .locals 0

    return-void
.end method

.method public onInactive()V
    .locals 0

    return-void
.end method

.method public postValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v2, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/huawei/hem/a;->c()Lcom/huawei/hem/a;

    move-result-object p1

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 6
    iget-object p1, p1, Lcom/huawei/hem/a;->a:Lcom/huawei/hem/c;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/c;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeObserver(Lcom/huawei/hem/p;)V
    .locals 1
    .param p1    # Lcom/huawei/hem/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/p<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 1
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Lcom/huawei/hem/e;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/e;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LiveData$c;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData$c;->i()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$c;->h(Z)V

    return-void
.end method

.method public removeObservers(Lcom/huawei/hem/j;)V
    .locals 3
    .param p1    # Lcom/huawei/hem/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "removeObservers"

    .line 1
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Lcom/huawei/hem/e;

    invoke-virtual {v0}, Lcom/huawei/hem/e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/huawei/hem/e$f;

    invoke-virtual {v1}, Lcom/huawei/hem/e$f;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/huawei/hem/e$f;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LiveData$c;

    invoke-virtual {v2, p1}, Landroid/arch/lifecycle/LiveData$c;->j(Lcom/huawei/hem/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hem/p;

    invoke-virtual {p0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Lcom/huawei/hem/p;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    .line 1
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 3
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$c;)V

    return-void
.end method
