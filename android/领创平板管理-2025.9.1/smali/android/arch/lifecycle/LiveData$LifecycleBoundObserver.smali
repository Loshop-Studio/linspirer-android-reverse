.class public Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroid/arch/lifecycle/LiveData$c;
.source "LiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>.c;",
        "Landroid/arch/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field public final e:Lcom/huawei/hem/j;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic f:Landroid/arch/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LiveData;Lcom/huawei/hem/j;Lcom/huawei/hem/p;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/j;",
            "Lcom/huawei/hem/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroid/arch/lifecycle/LiveData;

    .line 2
    invoke-direct {p0, p1, p3}, Landroid/arch/lifecycle/LiveData$c;-><init>(Landroid/arch/lifecycle/LiveData;Lcom/huawei/hem/p;)V

    .line 3
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Lcom/huawei/hem/j;

    return-void
.end method


# virtual methods
.method public d(Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Lcom/huawei/hem/j;

    invoke-interface {p1}, Lcom/huawei/hem/j;->getLifecycle()Lcom/huawei/hem/h;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/k;

    .line 2
    iget-object p1, p1, Lcom/huawei/hem/k;->b:Lcom/huawei/hem/h$b;

    .line 3
    sget-object p2, Lcom/huawei/hem/h$b;->DESTROYED:Lcom/huawei/hem/h$b;

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroid/arch/lifecycle/LiveData;

    iget-object p2, p0, Landroid/arch/lifecycle/LiveData$c;->a:Lcom/huawei/hem/p;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/LiveData;->removeObserver(Lcom/huawei/hem/p;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Lcom/huawei/hem/j;

    invoke-interface {p1}, Lcom/huawei/hem/j;->getLifecycle()Lcom/huawei/hem/h;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/k;

    .line 6
    iget-object p1, p1, Lcom/huawei/hem/k;->b:Lcom/huawei/hem/h$b;

    .line 7
    sget-object p2, Lcom/huawei/hem/h$b;->STARTED:Lcom/huawei/hem/h$b;

    invoke-virtual {p1, p2}, Lcom/huawei/hem/h$b;->isAtLeast(Lcom/huawei/hem/h$b;)Z

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LiveData$c;->h(Z)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Lcom/huawei/hem/j;

    invoke-interface {v0}, Lcom/huawei/hem/j;->getLifecycle()Lcom/huawei/hem/h;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/k;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k;->a:Lcom/huawei/hem/d;

    invoke-virtual {v0, p0}, Lcom/huawei/hem/d;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Lcom/huawei/hem/j;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Lcom/huawei/hem/j;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Lcom/huawei/hem/j;

    invoke-interface {v0}, Lcom/huawei/hem/j;->getLifecycle()Lcom/huawei/hem/h;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/k;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k;->b:Lcom/huawei/hem/h$b;

    .line 3
    sget-object v1, Lcom/huawei/hem/h$b;->STARTED:Lcom/huawei/hem/h$b;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/h$b;->isAtLeast(Lcom/huawei/hem/h$b;)Z

    move-result v0

    return v0
.end method
