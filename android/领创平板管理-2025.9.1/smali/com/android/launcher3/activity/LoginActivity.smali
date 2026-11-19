.class public Lcom/android/launcher3/activity/LoginActivity;
.super Lcom/android/launcher3/activity/base/BaseFragmentActivity;
.source "LoginActivity.java"


# instance fields
.field public b:Lcom/android/launcher3/fragment/login/BaseLoginFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    # RE layout layout/activity_launcher_new (0x7f090026), APK res/layout/activity_launcher_new.xml
    const v0, 0x7f090026

    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "LoginActivity =====initData======"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/x4$b;->a:Lcom/huawei/hem/x4;

    .line 3
    invoke-virtual {v0}, Lcom/huawei/hem/x4;->a()V

    .line 4
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/huawei/hem/w4$b;->a:Lcom/huawei/hem/w4;

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hem/w4;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->v(Landroid/app/Activity;Z)V

    .line 8
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/huawei/hem/ic;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "LoginActivity  -- initView ."

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0700df

    .line 4
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance p1, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;

    invoke-direct {p1}, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/activity/LoginActivity;->b:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/fragment/login/InitUserLoginFragment;

    iput-object v2, p0, Lcom/android/launcher3/activity/LoginActivity;->b:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    .line 7
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 9
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/activity/LoginActivity;->b:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 12
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const-string v0, "LoginActivity ==onDestroy==="

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x1

    move v1, p2

    move v2, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v3, p3, v1

    if-eqz v3, :cond_0

    move v2, p2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 3
    array-length p1, p3

    if-le p1, v0, :cond_2

    const-string p1, "LoginActivity need request background location permission"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/huawei/hem/j2;

    invoke-direct {p1, p0}, Lcom/huawei/hem/j2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Lcom/huawei/hem/j2;->a(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v0, "LoginActivity ===onResume===="

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableHome()V

    .line 4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableRecent()V

    .line 5
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableBack()V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v1, "com.huawei.hwid"

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    const-string v0, "EduAppStoreHelper"

    :try_start_0
    const-string v1, "=====to keepAliveStore==="

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.ndwill.swd.appstore"

    const-string v4, "com.ndwill.swd.appstore.activity.EmptyActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "keepalive"

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "=====keepalive==="

    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {v0, v2}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "start appstore failed"

    .line 18
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 19
    :goto_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->i0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 20
    :cond_1
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 21
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 22
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 25
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    .line 26
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 27
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
