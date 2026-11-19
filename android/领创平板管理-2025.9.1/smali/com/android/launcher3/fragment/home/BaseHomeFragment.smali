.class public abstract Lcom/android/launcher3/fragment/home/BaseHomeFragment;
.super Lcom/android/launcher3/activity/base/BaseFragment;
.source "BaseHomeFragment.java"

# interfaces
.implements Lcom/huawei/hem/m3;


# static fields
.field public static u:I = 0x18


# instance fields
.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/LinearLayout;

.field public m:I

.field public n:Z

.field public o:Lcom/huawei/hem/o3;

.field public p:Lcom/android/launcher3/network/HiScreenHelper;

.field public q:Ljava/lang/String;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    .line 3
    iput-boolean v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    .line 5
    new-instance v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment$a;-><init>(Lcom/android/launcher3/fragment/home/BaseHomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/fragment/home/BaseHomeFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    return p0
.end method


# virtual methods
.method public f()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.linspirer.launcher3.refresh_desktop"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.linspirer.launcher3.changewallpaper"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4
    sget-object v0, Lcom/huawei/hem/o3$b;->a:Lcom/huawei/hem/o3;

    .line 5
    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->o:Lcom/huawei/hem/o3;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r:Ljava/util/List;

    .line 7
    invoke-static {}, Lcom/android/launcher3/network/HiScreenHelper;->getInstance()Lcom/android/launcher3/network/HiScreenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->p:Lcom/android/launcher3/network/HiScreenHelper;

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/launcher3/network/HiScreenHelper;->setOnMainScreenChangeListener(Lcom/huawei/hem/m3;)Lcom/android/launcher3/network/HiScreenHelper;

    .line 9
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/huawei/hem/t3;->b:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getScreenPartSettingsDao()Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "BaseHomeFragment has no hiboard cache"

    .line 13
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/db/model/ScreenPartSettings;

    .line 15
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getPosition()I

    move-result v3

    if-nez v3, :cond_1

    .line 16
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getB_img_path()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->q:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 18
    iget-object v1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->p:Lcom/android/launcher3/network/HiScreenHelper;

    iget-object v1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/HiScreenHelper;->setScreenPartSettings(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public j()V
    .locals 11

    .line 1
    new-instance v10, Lcom/android/launcher3/view/CommonDialog;

    invoke-direct {v10}, Lcom/android/launcher3/view/CommonDialog;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v2, 0x7f0c0146

    const v3, 0x7f0c015a

    const v4, 0x7f0c0126

    const-wide v5, 0x3fd999999999999aL    # 0.4

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const/4 v9, 0x1

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/view/CommonDialog;->initDialog(Landroid/content/Context;IIIDDZ)V

    .line 3
    new-instance v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$b;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment$b;-><init>(Lcom/android/launcher3/fragment/home/BaseHomeFragment;)V

    invoke-virtual {v10, v0}, Lcom/android/launcher3/view/CommonDialog;->setDialogOnClickEvent(Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;)V

    return-void
.end method

.method public k()V
    .locals 11

    .line 1
    new-instance v10, Lcom/android/launcher3/view/CommonDialog;

    invoke-direct {v10}, Lcom/android/launcher3/view/CommonDialog;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v2, 0x7f0c012b

    const v3, 0x7f0c015a

    const v4, 0x7f0c0126

    const-wide v5, 0x3fd999999999999aL    # 0.4

    const-wide v7, 0x3fdccccccccccccdL    # 0.45

    const/4 v9, 0x0

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/view/CommonDialog;->initDialog(Landroid/content/Context;IIIDDZ)V

    .line 3
    new-instance v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$c;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment$c;-><init>(Lcom/android/launcher3/fragment/home/BaseHomeFragment;)V

    invoke-virtual {v10, v0}, Lcom/android/launcher3/view/CommonDialog;->setDialogOnClickEvent(Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m(Z)V
    .locals 1

    const-string v0, "BaseHomeFragment  logout launcher and start login"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;

    invoke-direct {p1}, Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;->b(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/LoginActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/LauncherNew;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const-string v0, "BaseHomeFragment ==onDestroy=="

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    return-void
.end method

.method public p(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 3
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    :goto_0
    iget v1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    const v3, 0x7f0600cb

    if-ge v2, v1, :cond_1

    if-nez v2, :cond_0

    .line 5
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0600c1

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 9
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v3, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 13
    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public q(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0600c1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    if-eq v1, p1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    const v3, 0x7f0600cb

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public r(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f060088

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "BaseHomeFragment no need show logo"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
