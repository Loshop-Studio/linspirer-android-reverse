.class public Lcom/android/launcher3/activity/CleanRubbishActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "CleanRubbishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/activity/CleanRubbishActivity$c;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Lcom/android/launcher3/activity/CleanRubbishActivity$c;

.field public h:Landroid/support/v7/widget/RecyclerView;

.field public i:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->f:Z

    return-void
.end method

.method public static g(Lcom/android/launcher3/activity/CleanRubbishActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;

    invoke-direct {v0, p0}, Lcom/android/launcher3/activity/CleanRubbishActivity$c;-><init>(Lcom/android/launcher3/activity/CleanRubbishActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->g:Lcom/android/launcher3/activity/CleanRubbishActivity$c;

    .line 2
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_rubbish (0x7f09002e), APK res/layout/activity_rubbish.xml
    const v0, 0x7f09002e

    return v0
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rubbishState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->j:I

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/t5;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/RubbishFileInfo;

    .line 5
    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/RubbishFileInfo;->setSelected(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->i:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    new-instance v2, Lcom/android/launcher3/activity/CleanRubbishActivity$a;

    invoke-direct {v2, p0}, Lcom/android/launcher3/activity/CleanRubbishActivity$a;-><init>(Lcom/android/launcher3/activity/CleanRubbishActivity;)V

    .line 7
    iput-object v2, v0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->d:Lcom/huawei/hem/k3;

    .line 8
    new-instance v0, Lcom/huawei/hem/j2;

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

    const v0, 0x7f070121

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->h:Landroid/support/v7/widget/RecyclerView;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->i:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    .line 4
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->i:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x7f070138

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f070073

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f070038

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->b:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    new-instance v1, Lcom/android/launcher3/activity/CleanRubbishActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/activity/CleanRubbishActivity$b;-><init>(Lcom/android/launcher3/activity/CleanRubbishActivity;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/view/CommonDialog;->setDialogOnClickEvent(Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

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

    if-eq p1, v0, :cond_a

    const v0, 0x7f070073

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    const v0, 0x7f070138

    if-eq p1, v0, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->f:Z

    if-eqz p1, :cond_b

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0c0059

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f0c004f

    if-eqz v3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/RubbishFileInfo;

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/RubbishFileInfo;->setSelected(Z)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/RubbishFileInfo;

    .line 12
    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/RubbishFileInfo;->setSelected(Z)V

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->i:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 15
    :cond_7
    iget-boolean p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->f:Z

    if-eqz p1, :cond_b

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/RubbishFileInfo;

    .line 18
    invoke-virtual {v3}, Lcom/android/launcher3/model/RubbishFileInfo;->isSelected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/launcher3/activity/CleanRubbishActivity;->f(I)V

    goto :goto_4

    .line 21
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/launcher3/activity/CleanRubbishActivity;->f(I)V

    .line 22
    :goto_4
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordClearEvent()V

    goto :goto_5

    .line 23
    :cond_a
    iget-boolean p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->f:Z

    if-eqz p1, :cond_b

    .line 24
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b
    :goto_5
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "CleanRubbishActivity----onPause"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->g:Lcom/android/launcher3/activity/CleanRubbishActivity$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->g:Lcom/android/launcher3/activity/CleanRubbishActivity$c;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->g:Lcom/android/launcher3/activity/CleanRubbishActivity$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity;->g:Lcom/android/launcher3/activity/CleanRubbishActivity$c;

    const-string v0, "CleanRubbishActivity----fileCleanTask cancel"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
