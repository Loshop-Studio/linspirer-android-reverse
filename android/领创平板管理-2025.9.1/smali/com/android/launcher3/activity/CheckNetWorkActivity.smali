.class public Lcom/android/launcher3/activity/CheckNetWorkActivity;
.super Lcom/android/launcher3/activity/base/BaseFragmentActivity;
.source "CheckNetWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/activity/CheckNetWorkActivity$MyOnPageChangeListener;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/RadioGroup;

.field public c:Landroid/widget/RadioButton;

.field public d:Landroid/widget/RadioButton;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/Button;

.field public i:Landroid/support/v4/view/ViewPager;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroid/support/v4/app/FragmentManager;

.field public l:Lcom/huawei/hem/j3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static e(Lcom/android/launcher3/activity/CheckNetWorkActivity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/CheckNetWorkActivity;->g(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/launcher3/activity/CheckNetWorkActivity;->g(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    # RE layout layout/activity_check_network (0x7f090020), APK res/layout/activity_check_network.xml
    const v0, 0x7f090020

    return v0
.end method

.method public c()V
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

.method public d(Landroid/os/Bundle;)V
    .locals 3

    const p1, 0x7f070153

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->b:Landroid/widget/RadioGroup;

    .line 2
    new-instance v0, Lcom/huawei/hem/k2;

    invoke-direct {v0, p0}, Lcom/huawei/hem/k2;-><init>(Lcom/android/launcher3/activity/CheckNetWorkActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const p1, 0x7f0700bb

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->c:Landroid/widget/RadioButton;

    const p1, 0x7f0700f8

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->d:Landroid/widget/RadioButton;

    const p1, 0x7f0700f9

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->f:Landroid/view/View;

    const p1, 0x7f0700bc

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->g:Landroid/view/View;

    const p1, 0x7f070038

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070055

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->h:Landroid/widget/Button;

    .line 10
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->j:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Lcom/android/launcher3/fragment/home/KeyInfoFragment;

    invoke-direct {v0}, Lcom/android/launcher3/fragment/home/KeyInfoFragment;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->j:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    invoke-direct {v0}, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->k:Landroid/support/v4/app/FragmentManager;

    const p1, 0x7f070176

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->i:Landroid/support/v4/view/ViewPager;

    .line 16
    new-instance v0, Lcom/android/launcher3/adapter/MFragmentPagerAdapter;

    iget-object v1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->k:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/adapter/MFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 17
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->i:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 18
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->c:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 19
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->d:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/launcher3/activity/CheckNetWorkActivity;->g(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->i:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/android/launcher3/activity/CheckNetWorkActivity$MyOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/activity/CheckNetWorkActivity$MyOnPageChangeListener;-><init>(Lcom/android/launcher3/activity/CheckNetWorkActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->h:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Z)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->c:Landroid/widget/RadioButton;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->d:Landroid/widget/RadioButton;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->h:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->c:Landroid/widget/RadioButton;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->d:Landroid/widget/RadioButton;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
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
    iget-object v0, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/CheckNetWorkActivity;->f(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity;->l:Lcom/huawei/hem/j3;

    if-eqz v0, :cond_3

    .line 7
    check-cast v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$c;

    .line 8
    iget-object v0, v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$c;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    if-eqz v0, :cond_2

    .line 9
    new-instance v1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;

    invoke-direct {v1, v0}, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;-><init>(Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;)V

    iput-object v1, v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->z:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;

    .line 10
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_3
    :goto_0
    return-void
.end method
