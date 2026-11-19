.class public Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;
.super Lcom/android/launcher3/activity/base/BaseFragment;
.source "CheckNetWorkFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Landroid/os/Handler;

.field public i:Landroid/support/v7/widget/RecyclerView;

.field public j:Lcom/android/launcher3/adapter/CheckNetworkRecyclerViewAdapter;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/android/launcher3/model/NetworkInfo;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/String;

.field public t:Landroid/widget/ProgressBar;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/ImageView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageView;

.field public y:I

.field public z:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->y:I

    .line 3
    new-instance v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$a;-><init>(Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->A:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$b;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$b;-><init>(Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->B:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->j()V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f090033

    return v0
.end method

.method public f()V
    .locals 7

    const-string v0, "cloud.linspirer.com:883"

    const-string v1, "cloud.linspirer.com:8070"

    const-string v2, "reg.linspirer.com:89"

    const-string v3, "cloud.linspirer.com:8081"

    const-string v4, "download1.linspirer.com:80"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3
    new-instance v3, Lcom/android/launcher3/model/NetworkInfo;

    invoke-direct {v3}, Lcom/android/launcher3/model/NetworkInfo;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->l:Lcom/android/launcher3/model/NetworkInfo;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->n:Ljava/lang/String;

    const-string v4, ":"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->m:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->o:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->l:Lcom/android/launcher3/model/NetworkInfo;

    iget-object v4, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/NetworkInfo;->setDomain(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, ""

    .line 9
    iput-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->o:Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->l:Lcom/android/launcher3/model/NetworkInfo;

    iget-object v4, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/NetworkInfo;->setDomain(Ljava/lang/String;)V

    .line 11
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->p:Ljava/util/List;

    .line 12
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->o:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v1

    .line 15
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 16
    iget-object v5, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->p:Ljava/util/List;

    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 17
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->p:Ljava/util/List;

    iget-object v4, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->o:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->l:Lcom/android/launcher3/model/NetworkInfo;

    iget-object v4, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->p:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/NetworkInfo;->setPortList(Ljava/util/List;)V

    .line 19
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->l:Lcom/android/launcher3/model/NetworkInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f070057

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->i:Landroid/support/v7/widget/RecyclerView;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->k:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/android/launcher3/adapter/CheckNetworkRecyclerViewAdapter;

    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/adapter/CheckNetworkRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->j:Lcom/android/launcher3/adapter/CheckNetworkRecyclerViewAdapter;

    .line 4
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->j:Lcom/android/launcher3/adapter/CheckNetworkRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x7f070109

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->t:Landroid/widget/ProgressBar;

    const v0, 0x7f070077

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->u:Landroid/widget/ImageView;

    const v0, 0x7f070089

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->v:Landroid/widget/ImageView;

    const v0, 0x7f0700e0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->w:Landroid/widget/ImageView;

    const v0, 0x7f07006f

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->x:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->j()V

    .line 14
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/activity/CheckNetWorkActivity;

    .line 15
    new-instance v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$c;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$c;-><init>(Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;)V

    .line 16
    iput-object v0, p1, Lcom/android/launcher3/activity/CheckNetWorkActivity;->l:Lcom/huawei/hem/j3;

    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->u:Landroid/widget/ImageView;

    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->v:Landroid/widget/ImageView;

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->w:Landroid/widget/ImageView;

    const v1, 0x7f06007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->x:Landroid/widget/ImageView;

    const v1, 0x7f06007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/NetworkInfo;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/NetworkInfo;->setResult(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 9
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->z:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->z:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->z:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->z:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;

    const-string v0, "CheckNetWorkFragment----finish check task"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_0
    const-string v0, "CheckNetWorkFragment----onDestroy"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
