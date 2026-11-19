# RE note 本类字节码直接引用的读写或显示接口包括偏好设置。
.class public Lcom/android/launcher3/activity/LockActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "LockActivity.java"


# static fields
.field public static i:Z = false


# instance fields
.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/huawei/hem/y5;

.field public f:J

.field public g:I

.field public h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/launcher3/activity/LockActivity;->f:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/launcher3/activity/LockActivity;->g:I

    .line 4
    new-instance v0, Lcom/android/launcher3/activity/LockActivity$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/activity/LockActivity$a;-><init>(Lcom/android/launcher3/activity/LockActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    # RE layout layout/activity_lock (0x7f090027), APK res/layout/activity_lock.xml
    const v0, 0x7f090027

    return v0
.end method

.method public c()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.linspirer.close.violation"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/launcher3/activity/LockActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    iput-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->e:Lcom/huawei/hem/y5;

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/huawei/hem/de;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f0700f5

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/base/BaseActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f07010c

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f0700d7

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0700b2

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->d:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/huawei/hem/c2;

    invoke-direct {v1, p0}, Lcom/huawei/hem/c2;-><init>(Lcom/android/launcher3/activity/LockActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

# RE I/O 读取整数偏好（SharedPreferences.getInt）。
.method public final f()V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/launcher3/activity/LockActivity;->i:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->e:Lcom/huawei/hem/y5;

    .line 3
    iget v1, v0, Lcom/huawei/hem/y5;->t:I

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    const/4 v2, 0x0

    .line 5
    iget-object v1, v1, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v3, "disable_back"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 6
    iput v1, v0, Lcom/huawei/hem/y5;->t:I

    .line 7
    :cond_0
    iget v0, v0, Lcom/huawei/hem/y5;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "LockActivity enable back by lock activity"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableBack()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->e:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->N()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->e:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->i()I

    move-result v0

    if-eq v0, v1, :cond_2

    const-string v0, "LockActivity enable home by lock activity"

    .line 12
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableHome()V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->e:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->j()I

    move-result v0

    if-eq v0, v1, :cond_3

    const-string v0, "LockActivity enable recent by lock activity"

    .line 15
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableRecent()V

    :cond_3
    return-void
.end method

.method public synthetic g(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/activity/LockActivity;->i()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->e:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0001"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "1000"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v1, "0100"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, "0010"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v0, 0x7f0c00ba

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/huawei/hem/y4;->D()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 6
    sput v0, Lcom/huawei/hem/x1;->c:I

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->e:Lcom/huawei/hem/y5;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/y5;->d0(IZ)V

    .line 8
    invoke-virtual {p0}, Lcom/android/launcher3/activity/LockActivity;->f()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0c00bb

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07001e

    if-ne v0, v1, :cond_3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/android/launcher3/activity/LockActivity;->f:J

    sub-long v2, v0, v2

    .line 4
    iput-wide v0, p0, Lcom/android/launcher3/activity/LockActivity;->f:J

    const-wide/16 v0, 0x1f4

    cmp-long p1, v2, v0

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    .line 5
    iget p1, p0, Lcom/android/launcher3/activity/LockActivity;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/activity/LockActivity;->g:I

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lcom/android/launcher3/activity/LockActivity;->g:I

    .line 7
    :goto_0
    iget p1, p0, Lcom/android/launcher3/activity/LockActivity;->g:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 8
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Lenovo TB-8X04F"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableHome()V

    .line 11
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableBack()V

    .line 12
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableVolume()V

    .line 13
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableShortPressPower()V

    goto :goto_1

    .line 14
    :cond_1
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableNavigation()V

    .line 15
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableRecent()V

    .line 16
    :goto_1
    const-class p1, Lcom/android/launcher3/activity/AdminLoginActivity;

    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_2
    return-void

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0700f3

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0700f6

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070043

    if-ne p1, v0, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/android/launcher3/activity/LockActivity;->i()V

    goto :goto_4

    .line 21
    :cond_6
    :goto_2
    invoke-static {}, Lcom/huawei/hem/ce;->q()Z

    move-result p1

    if-nez p1, :cond_7

    .line 22
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableBack()V

    goto :goto_3

    .line 23
    :cond_7
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableNavigation()V

    .line 24
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableRecent()V

    .line 25
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableHome()V

    .line 26
    :goto_3
    invoke-static {p0}, Lcom/huawei/hem/y4;->Z(Landroid/content/Context;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/activity/base/BaseActivity;->onDestroy()V

    const-string v0, "LockActivity onDestroy"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/android/launcher3/activity/LockActivity;->i:Z

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/LockActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/android/launcher3/activity/LockActivity;->i:Z

    .line 3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableBack()V

    .line 5
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableHome()V

    .line 6
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableRecent()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/activity/LockActivity;->h()V

    const-string v0, "LockActivity onResume"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
