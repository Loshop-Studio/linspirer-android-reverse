.class public Lcom/android/launcher3/activity/LicenseActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "LicenseActivity.java"


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/Button;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/android/launcher3/network/LicenseHelper;

.field public j:I

.field public k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->j:I

    .line 3
    new-instance v0, Lcom/android/launcher3/activity/LicenseActivity$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/activity/LicenseActivity$a;-><init>(Lcom/android/launcher3/activity/LicenseActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/activity/LicenseActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/activity/LicenseActivity;->h()V

    return-void
.end method

.method public static g(Lcom/android/launcher3/activity/LicenseActivity;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checking license is failling , confirm it please ."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/activity/LicenseActivity;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->j:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v2

    .line 5
    iput v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->j:I

    .line 6
    iget-object p0, p0, Lcom/android/launcher3/activity/LicenseActivity;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    const v1, 0x7f0c011b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 8
    iget-object p0, p0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 9
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/license_activity (0x7f090045), APK res/layout/license_activity.xml
    const v0, 0x7f090045

    return v0
.end method

.method public c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->e:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcom/android/launcher3/network/LicenseHelper;->getInstance()Lcom/android/launcher3/network/LicenseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->i:Lcom/android/launcher3/network/LicenseHelper;

    .line 5
    new-instance v1, Lcom/huawei/hem/l2;

    invoke-direct {v1, p0}, Lcom/huawei/hem/l2;-><init>(Lcom/android/launcher3/activity/LicenseActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/LicenseHelper;->setCallBack(Lcom/huawei/hem/i3;)V

    .line 6
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->h:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/huawei/hem/ce;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "CC78E3BB-51E1-F252-BA5F-AC049BF4D862"

    goto :goto_2

    :cond_2
    const-string v0, "7CF82AF3-2B31-775B-6A46-2C889C732300"

    .line 14
    :goto_2
    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->h:Ljava/lang/String;

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/activity/LicenseActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "from"

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->g:Ljava/lang/String;

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->g:Ljava/lang/String;

    const-string v2, "admin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    const-string v2, "3 \u79d2"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 22
    new-instance v0, Lcom/huawei/hem/m2;

    const-wide/16 v4, 0xbb8

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/huawei/hem/m2;-><init>(Lcom/android/launcher3/activity/LicenseActivity;JJ)V

    .line 23
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_5
    return-void
.end method

.method public e()V
    .locals 1

    const v0, 0x7f0700f7

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/base/BaseActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0700cc

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0700e5

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f07013f

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0700de

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f07014e

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00bc

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v1, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    const v1, 0x7f0c0057

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->i:Lcom/android/launcher3/network/LicenseHelper;

    iget-object v1, p0, Lcom/android/launcher3/activity/LicenseActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/LicenseHelper;->startRegisterLicense(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/activity/LicenseActivity;->h()V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/android/launcher3/activity/LicenseActivity;->g:Ljava/lang/String;

    const-string v0, "admin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableBack()V

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/huawei/hem/y4;->Z(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f070035 -> :sswitch_2
        0x7f070037 -> :sswitch_2
        0x7f0700f7 -> :sswitch_1
        0x7f07014e -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/activity/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->g:Ljava/lang/String;

    const-string v1, "admin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableHome()V

    .line 4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableBack()V

    .line 5
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableRecent()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/LicenseActivity;->g:Ljava/lang/String;

    const-string v1, "admin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableRecent()V

    .line 4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableHome()V

    .line 5
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableBack()V

    :cond_0
    return-void
.end method
