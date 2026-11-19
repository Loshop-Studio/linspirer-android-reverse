.class public Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;
.super Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;
.source "SettingPwdGestureActivity.java"


# instance fields
.field public g:Lcom/android/launcher3/view/GestureLockLayout;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Lcom/android/launcher3/view/GestureLockLayout;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_setting_gesture_pwd (0x7f09002f), APK res/layout/activity_setting_gesture_pwd.xml
    const v0, 0x7f09002f

    return v0
.end method

.method public c()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f0c0158

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v4, "settings_type"

    .line 2
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0c013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->d:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->a()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->k:Landroid/widget/EditText;

    const v1, 0x7f0c00ba

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_3

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0c0132

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0c0131

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->j:Lcom/android/launcher3/view/GestureLockLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/view/GestureLockLayout;->switchToCheckMode(Ljava/util/List;I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->e()V

    .line 2
    invoke-static {}, Lcom/huawei/hem/n5;->a()Lcom/huawei/hem/n5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/huawei/hem/n5;->a:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f07009c

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f07015e

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f070175

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0700c7

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/view/GestureLockLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->j:Lcom/android/launcher3/view/GestureLockLayout;

    const v0, 0x7f0700c8

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/view/GestureLockLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->g:Lcom/android/launcher3/view/GestureLockLayout;

    const v0, 0x7f07010e

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0700b3

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->k:Landroid/widget/EditText;

    const v0, 0x7f070056

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v0, 0x7f07015c

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f07009d

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->m:Landroid/widget/LinearLayout;

    .line 14
    new-instance v0, Lcom/huawei/hem/v2;

    invoke-direct {v0, p0}, Lcom/huawei/hem/v2;-><init>(Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;)V

    .line 15
    iget-object v1, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->j:Lcom/android/launcher3/view/GestureLockLayout;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/view/GestureLockLayout;->setGestureFinishedCallback(Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;)V

    .line 16
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->j:Lcom/android/launcher3/view/GestureLockLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/view/GestureLockLayout;->switchToResetMode()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 17
    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070036

    if-eq p1, v0, :cond_6

    const v0, 0x7f070056

    if-eq p1, v0, :cond_2

    const v0, 0x7f07015c

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->j:Lcom/android/launcher3/view/GestureLockLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/view/GestureLockLayout;->initCurrentTimes()V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->i:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->g:Lcom/android/launcher3/view/GestureLockLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/view/GestureLockLayout;->refreshPwdKeyboard(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0c0135

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const p1, 0x7f0c0138

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->d:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/huawei/hem/y4;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const p1, 0x7f0c0141

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 12
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/activity/base/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/huawei/hem/n5;->a()Lcom/huawei/hem/n5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/huawei/hem/n5;->a:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
