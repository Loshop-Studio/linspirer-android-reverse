.class public Lcom/android/launcher3/activity/DataCleanActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "DataCleanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/activity/DataCleanActivity$c;,
        Lcom/android/launcher3/activity/DataCleanActivity$d;
    }
.end annotation


# instance fields
.field public b:I

.field public c:Landroid/widget/TextView;

.field public d:Landroid/support/v7/widget/RecyclerView;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Z

.field public h:Z

.field public i:Lcom/android/launcher3/activity/DataCleanActivity$c;

.field public j:Lcom/android/launcher3/activity/DataCleanActivity$d;

.field public k:Lcom/android/launcher3/view/CircleProgressView;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/DataCleanCategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

.field public n:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xf96a01
        -0x160e09
        -0x160e09
        -0x160e09
        -0xf96a01
    .end array-data
.end method

.method public static g(Lcom/android/launcher3/activity/DataCleanActivity;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    const-string v1, "DataCleanActivity-- finishScan"

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->j:Lcom/android/launcher3/activity/DataCleanActivity$d;

    .line 3
    sget-object v0, Lcom/huawei/hem/t5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4
    sget-object v1, Lcom/huawei/hem/t5;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    sget-object v2, Lcom/huawei/hem/t5;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 6
    sget-object v3, Lcom/huawei/hem/t5;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 7
    sget-object v4, Lcom/huawei/hem/t5;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 8
    sget-object v5, Lcom/huawei/hem/t5;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 9
    sget-object v6, Lcom/huawei/hem/t5;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 10
    iget-object v7, p0, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    invoke-static {v7}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "DataCleanActivity-- scan categorys are empty"

    .line 11
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const/4 v7, 0x0

    .line 12
    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 13
    iget-object v8, p0, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    if-nez v7, :cond_1

    .line 14
    invoke-virtual {v8, v0}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setNumber(I)V

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 15
    invoke-virtual {v8, v1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setNumber(I)V

    goto :goto_1

    :cond_2
    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    .line 16
    invoke-virtual {v8, v2}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setNumber(I)V

    goto :goto_1

    :cond_3
    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    .line 17
    invoke-virtual {v8, v3}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setNumber(I)V

    goto :goto_1

    :cond_4
    const/4 v9, 0x4

    if-ne v7, v9, :cond_5

    .line 18
    invoke-virtual {v8, v4}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setNumber(I)V

    goto :goto_1

    :cond_5
    const/4 v9, 0x5

    if-ne v7, v9, :cond_6

    .line 19
    invoke-virtual {v8, v5}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setNumber(I)V

    goto :goto_1

    :cond_6
    const/4 v9, 0x6

    if-ne v7, v9, :cond_7

    .line 20
    invoke-virtual {v8, v6}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setNumber(I)V

    :cond_7
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 21
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DataCleanActivity-- destDownloadPathListSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataCleanActivity-- imageVideoPathSize:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCleanActivity-- bigFilePathListSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCleanActivity-- appCachePathListSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCleanActivity-- noneUsedApkPathListSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCleanActivity-- appLogPathListSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCleanActivity-- imageVideoPathCacheSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 28
    :goto_2
    iget-object p0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->m:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 29
    :cond_9
    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_dataclean (0x7f090021), APK res/layout/activity_dataclean.xml
    const v0, 0x7f090021

    return v0
.end method

.method public c()V
    .locals 5

    .line 1
    sget-object v0, Lcom/huawei/hem/t5;->i:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 2
    new-instance v4, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    invoke-direct {v4}, Lcom/android/launcher3/model/DataCleanCategoryInfo;-><init>()V

    .line 3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setDesc(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->m:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/android/launcher3/activity/DataCleanActivity$a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/activity/DataCleanActivity$a;-><init>(Lcom/android/launcher3/activity/DataCleanActivity;)V

    .line 7
    iput-object v1, v0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->d:Lcom/huawei/hem/k3;

    .line 8
    :cond_1
    new-instance v0, Lcom/huawei/hem/j2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/huawei/hem/j2;-><init>(Landroid/app/Activity;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseActivity;->a()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindows(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f040028

    .line 3
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f04003f

    .line 4
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f07005c

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/view/CircleProgressView;

    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->k:Lcom/android/launcher3/view/CircleProgressView;

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->n:[I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/view/CircleProgressView;->setProgressColor([I)V

    const v0, 0x7f070125

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->e:Landroid/widget/Button;

    const v0, 0x7f07005e

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->f:Landroid/widget/Button;

    const v0, 0x7f070038

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07004c

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    .line 11
    new-instance v1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->m:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    .line 12
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 14
    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 15
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->m:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 16
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/DeviceLogHelper;->recordOpenClearApp()V

    .line 17
    invoke-virtual {p0}, Lcom/android/launcher3/activity/DataCleanActivity;->i()V

    return-void
.end method

.method public final f(I)V
    .locals 11

    if-nez p1, :cond_0

    const v0, 0x7f0c0067

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00e1

    :goto_0
    move v3, v0

    .line 1
    new-instance v0, Lcom/android/launcher3/view/CommonDialog;

    invoke-direct {v0}, Lcom/android/launcher3/view/CommonDialog;-><init>()V

    const v4, 0x7f0c004d

    const v5, 0x7f0c004c

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    const-wide v8, 0x3fd999999999999aL    # 0.4

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    .line 2
    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/view/CommonDialog;->initDialog(Landroid/content/Context;IIIDDZ)V

    .line 3
    new-instance v1, Lcom/android/launcher3/activity/DataCleanActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/activity/DataCleanActivity$b;-><init>(Lcom/android/launcher3/activity/DataCleanActivity;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/view/CommonDialog;->setDialogOnClickEvent(Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;)V

    return-void
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->e:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->f:Landroid/widget/Button;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060057

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060056

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 3

    const-string v0, "DataCleanActivity-- scanFiles init scanState:"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cleanState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/launcher3/activity/DataCleanActivity$d;

    invoke-direct {v0, p0}, Lcom/android/launcher3/activity/DataCleanActivity$d;-><init>(Lcom/android/launcher3/activity/DataCleanActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->j:Lcom/android/launcher3/activity/DataCleanActivity$d;

    .line 4
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p3, "DataCleanActivity-- onActivityResult"

    .line 2
    invoke-static {p3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/activity/DataCleanActivity;->i()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070038

    if-eq p1, v0, :cond_5

    const v0, 0x7f07005e

    if-eq p1, v0, :cond_2

    const v0, 0x7f070125

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/activity/DataCleanActivity;->i()V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseActivity;->a()V

    .line 5
    iget-boolean p1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    if-eqz p1, :cond_6

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    .line 8
    invoke-virtual {v1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/DataCleanActivity;->f(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/DataCleanActivity;->f(I)V

    goto :goto_1

    .line 12
    :cond_5
    iget-boolean p1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/activity/base/BaseActivity;->onDestroy()V

    const-string v0, "DataCleanActivity-- onDestroy"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/activity/DataCleanActivity;->h(Z)V

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->j:Lcom/android/launcher3/activity/DataCleanActivity$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->j:Lcom/android/launcher3/activity/DataCleanActivity$d;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v3, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->j:Lcom/android/launcher3/activity/DataCleanActivity$d;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 6
    iput-object v2, p0, Lcom/android/launcher3/activity/DataCleanActivity;->j:Lcom/android/launcher3/activity/DataCleanActivity$d;

    const-string v1, "DataCleanActivity-- fileScanTask cancel"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->i:Lcom/android/launcher3/activity/DataCleanActivity$c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->i:Lcom/android/launcher3/activity/DataCleanActivity$c;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v3, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity;->i:Lcom/android/launcher3/activity/DataCleanActivity$c;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 10
    iput-object v2, p0, Lcom/android/launcher3/activity/DataCleanActivity;->i:Lcom/android/launcher3/activity/DataCleanActivity$c;

    const-string v1, "DataCleanActivity-- fileCleanTask cancel"

    .line 11
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    .line 14
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity;->k:Lcom/android/launcher3/view/CircleProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/view/CircleProgressView;->setProgress(I)V

    return-void
.end method
