.class public Lcom/android/launcher3/fragment/home/ChildPageFragment;
.super Lcom/android/launcher3/activity/base/BaseFragment;
.source "ChildPageFragment.java"

# interfaces
.implements Lcom/huawei/hem/e3;


# instance fields
.field public i:Landroid/support/v7/widget/RecyclerView;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f090042

    return v0
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/fragment/home/ChildPageFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v2, p0, Lcom/android/launcher3/fragment/home/ChildPageFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    new-instance v1, Lcom/android/launcher3/adapter/RecyclerViewAdapter;

    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/adapter/RecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v2, p0, Lcom/android/launcher3/fragment/home/ChildPageFragment;->j:Ljava/util/List;

    .line 8
    iput-object v2, v1, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->b:Ljava/util/List;

    .line 9
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 10
    iput v0, v1, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->c:I

    .line 11
    iput-object p0, v1, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->d:Lcom/huawei/hem/e3;

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/ChildPageFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const-string v0, "ChildPageFragment -- initData "

    .line 13
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f070112

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/launcher3/fragment/home/ChildPageFragment;->i:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
