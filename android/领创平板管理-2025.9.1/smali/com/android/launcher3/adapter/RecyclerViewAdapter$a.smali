.class public Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/adapter/RecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/android/launcher3/adapter/RecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/adapter/RecyclerViewAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/adapter/RecyclerViewAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->d:Lcom/android/launcher3/adapter/RecyclerViewAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f07002d

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->c:Landroid/widget/TextView;

    const p1, 0x7f07002f

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->a:Landroid/widget/ImageView;

    const p1, 0x7f070030

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->d:Lcom/android/launcher3/adapter/RecyclerViewAdapter;

    .line 4
    iget-object v0, v0, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->b:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/AppItem;

    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/model/AppItem;->getActivityName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.ndwill.swd.appstore"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->d:Lcom/android/launcher3/adapter/RecyclerViewAdapter;

    .line 10
    iget-object v2, v2, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->a:Landroid/content/Context;

    .line 11
    invoke-static {v1, v2}, Lcom/huawei/hem/bc;->o(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->d:Lcom/android/launcher3/adapter/RecyclerViewAdapter;

    .line 13
    iget-object v2, v2, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->d:Lcom/huawei/hem/e3;

    if-eqz v2, :cond_1

    .line 14
    check-cast v2, Lcom/android/launcher3/fragment/home/ChildPageFragment;

    .line 15
    invoke-virtual {v2}, Lcom/android/launcher3/activity/base/BaseFragment;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/launcher3/activity/base/BaseFragment;->c(Ljava/util/List;)V

    .line 19
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->d:Lcom/android/launcher3/adapter/RecyclerViewAdapter;

    .line 20
    iget-object v1, v1, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->a:Landroid/content/Context;

    .line 21
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/huawei/hem/y4;->T(Landroid/content/Context;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "com.zykj.manage"

    .line 22
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v1}, Lcom/huawei/hem/y5;->q0(I)V

    .line 25
    :cond_2
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->recordOpenApp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerViewAdapter -- can not open apk--packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --openApk -error:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 28
    iget-object p1, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->d:Lcom/android/launcher3/adapter/RecyclerViewAdapter;

    .line 29
    iget-object p1, p1, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->a:Landroid/content/Context;

    const v0, 0x7f0c0127

    .line 30
    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
