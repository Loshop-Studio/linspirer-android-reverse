.class public abstract Lcom/android/launcher3/activity/base/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# instance fields
.field public a:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->transparentBar()Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method

.method public abstract d(Landroid/os/Bundle;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 3
    iput-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    .line 4
    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->c()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->d(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->b()V

    return-void
.end method
