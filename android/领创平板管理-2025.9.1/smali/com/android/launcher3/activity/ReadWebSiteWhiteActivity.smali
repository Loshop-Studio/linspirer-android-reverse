.class public Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "ReadWebSiteWhiteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/support/v7/widget/RecyclerView;

.field public d:Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;

.field public e:Landroid/support/v7/widget/RecyclerView;

.field public f:Landroid/support/v7/widget/RecyclerView;

.field public g:Landroid/support/v7/widget/RecyclerView;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_read_website_white (0x7f09002d), APK res/layout/activity_read_website_white.xml
    const v0, 0x7f09002d

    return v0
.end method

.method public c()V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->t0()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->d:Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;

    .line 3
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object v2, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->d:Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-static {}, Lcom/android/launcher3/network/UrlWhiteHelper;->getInstance()Lcom/android/launcher3/network/UrlWhiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/UrlWhiteHelper;->getLspDefaultUrl()Ljava/util/List;

    move-result-object v0

    .line 8
    new-instance v2, Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 9
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 11
    iget-object v3, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "zyyx.cc"

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "zykj.org"

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v2, Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 17
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 19
    iget-object v3, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 21
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 22
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->s()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    .line 24
    invoke-static {v0, v2}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->h:Ljava/util/List;

    .line 25
    :cond_0
    new-instance v0, Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;

    iget-object v2, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->h:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/adapter/ReadWebsitRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 28
    iget-object v1, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 29
    iget-object v1, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f040051

    .line 2
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f04003f

    .line 3
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method

.method public e()V
    .locals 1

    const v0, 0x7f070111

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f07017d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->c:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0700d2

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->e:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0700b7

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->f:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0700b6

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->g:Landroid/support/v7/widget/RecyclerView;

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f070111

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
