.class public Lcom/android/launcher3/fragment/login/InitUserLoginFragment;
.super Lcom/android/launcher3/fragment/login/BaseLoginFragment;
.source "InitUserLoginFragment.java"


# instance fields
.field public q:Landroid/widget/RelativeLayout;

.field public r:Lcom/huawei/hem/o3;

.field public s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/login/InitUserLoginFragment$a;-><init>(Lcom/android/launcher3/fragment/login/InitUserLoginFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->s:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->f()V

    .line 2
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0080

    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/huawei/hem/o3$b;->a:Lcom/huawei/hem/o3;

    .line 5
    iput-object v0, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->r:Lcom/huawei/hem/o3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->o()V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->r:Lcom/huawei/hem/o3;

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    throw v1

    .line 9
    :cond_2
    throw v1
.end method

.method public g(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->g(Landroid/view/View;)V

    const v0, 0x7f0700da

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->q:Landroid/widget/RelativeLayout;

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->m(Landroid/widget/TextView;)V

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.laucher3.mdm.LOGIN_APK_FINISH"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.linspirer.edu.loginapkfinish"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0080

    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->e0(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->o()V

    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->r:Lcom/huawei/hem/o3;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.zykj.manage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.zykj.launcher.login"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->r:Lcom/huawei/hem/o3;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/huawei/hem/bc;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 5
    :cond_0
    throw v1

    .line 6
    :cond_1
    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070182

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hem/y4;->Z(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->r:Lcom/huawei/hem/o3;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;->o()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
