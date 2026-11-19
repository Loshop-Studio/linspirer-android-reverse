.class public Lcom/alibaba/sdk/android/emas/i;
.super Ljava/lang/Object;
.source "ForBackgroundCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/emas/i$a;
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/sdk/android/emas/i;->e:I

    .line 3
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/emas/i;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/emas/i$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/i;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/i;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/alibaba/sdk/android/emas/i;->e:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/sdk/android/emas/i;->e:I

    .line 2
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/emas/i;->c:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/emas/i;->c:Z

    .line 4
    iget-object p1, p0, Lcom/alibaba/sdk/android/emas/i;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/emas/i$a;

    .line 6
    invoke-interface {v0}, Lcom/alibaba/sdk/android/emas/i$a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/alibaba/sdk/android/emas/i;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/sdk/android/emas/i;->e:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/emas/i;->c:Z

    .line 3
    iget-object p1, p0, Lcom/alibaba/sdk/android/emas/i;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/emas/i$a;

    .line 5
    invoke-interface {v0}, Lcom/alibaba/sdk/android/emas/i$a;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method
