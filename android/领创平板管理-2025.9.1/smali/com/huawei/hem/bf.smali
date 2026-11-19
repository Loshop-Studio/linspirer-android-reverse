.class public Lcom/huawei/hem/bf;
.super Lcom/huawei/hem/je;
.source "LostServiceConnectedHandler.java"

# interfaces
.implements Lcom/huawei/hem/xe;


# instance fields
.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hem/fe$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/je;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/fe$a;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hem/ue$a;->a:Lcom/huawei/hem/ue;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/ue;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/hem/ue$a;->a:Lcom/huawei/hem/ue;

    .line 5
    invoke-virtual {v1}, Lcom/huawei/hem/ue;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 7
    sget-object v2, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 8
    iget-object v1, v1, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v1, v2}, Lcom/huawei/hem/we;->p(Landroid/content/Context;)V

    .line 9
    iget-object v1, p0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/huawei/hem/fe$a;->e()V

    .line 11
    iget-object v1, p0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    .line 12
    monitor-exit v0

    return p1

    .line 13
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/huawei/hem/bf;->b(Lcom/huawei/hem/fe$a;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/huawei/hem/fe$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/bf;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
