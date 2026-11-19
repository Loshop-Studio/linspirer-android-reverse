# RE note 本类字节码直接引用的读写或显示接口包括偏好设置。
.class public abstract Lcom/android/launcher3/fragment/login/BaseLoginFragment;
.super Lcom/android/launcher3/activity/base/BaseFragment;
.source "BaseLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public i:J

.field public j:I

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/CheckBox;

.field public o:Landroid/widget/Button;

.field public p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->i:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->j:I

    .line 4
    new-instance v0, Lcom/android/launcher3/fragment/login/BaseLoginFragment$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/login/BaseLoginFragment$a;-><init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->p:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/fragment/login/BaseLoginFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->c(Ljava/util/List;)V

    return-void
.end method

.method public static j(Lcom/android/launcher3/fragment/login/BaseLoginFragment;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/huawei/hem/license/HemLicenseManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hem/license/HemLicenseManager;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/huawei/hem/g4;->a:Lcom/huawei/hem/g4;

    invoke-virtual {p0, v0}, Lcom/huawei/hem/license/HemLicenseManager;->setStatusListener(Lcom/huawei/hem/license/HemLicenseStatusListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/license/HemLicenseManager;->activeLicense()Lcom/huawei/hem/w7;

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static synthetic k(Lcom/android/launcher3/fragment/login/BaseLoginFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->c(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLoginFragment -- hem msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- msgCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
# RE I/O 读取布尔偏好（SharedPreferences.getBoolean）。
.method public f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->l:Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-string v2, "com.android.launcher3"

    invoke-static {v2, v1}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->n:Landroid/widget/CheckBox;

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6
    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f0c0152

    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, 0x7f04006d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 8
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v5, 0x0

    const/16 v6, 0x21

    .line 9
    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "\u300a"

    .line 11
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    new-instance v1, Landroid/text/SpannableString;

    const v3, 0x7f0c0153

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v3, Lcom/huawei/hem/i4;

    invoke-direct {v3, p0}, Lcom/huawei/hem/i4;-><init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;)V

    .line 14
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    .line 15
    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 16
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 17
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    .line 18
    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 19
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "\u300b"

    .line 20
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 23
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    .line 24
    iget-boolean v2, v1, Lcom/huawei/hem/y5;->N:Z

    if-nez v2, :cond_0

    .line 25
    iget-object v2, v1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 26
    iget-object v2, v2, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v3, "agreed_privacy"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 27
    iput-boolean v2, v1, Lcom/huawei/hem/y5;->N:Z

    .line 28
    :cond_0
    iget-boolean v1, v1, Lcom/huawei/hem/y5;->N:Z

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.laucher3.mdm.CHECK_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f07009a

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->k:Landroid/widget/ImageView;

    const v0, 0x7f07002e

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f070054

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->n:Landroid/widget/CheckBox;

    const v0, 0x7f07006a

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f070043

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->o:Landroid/widget/Button;

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700db

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public m(Landroid/widget/TextView;)V
    .locals 2

    const v0, 0x7f0c012c

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public abstract n()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->i:J

    sub-long v4, v2, v4

    .line 4
    iput-wide v2, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->i:J

    const-wide/16 v2, 0x1f4

    cmp-long p1, v4, v2

    if-gtz p1, :cond_0

    .line 5
    iget p1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->j:I

    goto :goto_0

    .line 6
    :cond_0
    iput v1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->j:I

    .line 7
    :goto_0
    iget p1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->j:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 8
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableBack()V

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/AdminLoginActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 10
    :sswitch_1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->k:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f090028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 13
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 16
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050124

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 17
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050195

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    float-to-int v4, v4

    .line 18
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    float-to-int v4, v5

    .line 19
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 20
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v4, 0x7f0700bf

    .line 21
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0700c6

    .line 22
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v8, 0x7f0700c9

    .line 23
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f0700ac

    .line 24
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x800055

    .line 28
    invoke-virtual {v2, p1, v1, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 29
    new-instance p1, Lcom/huawei/hem/j4;

    invoke-direct {p1, p0, v2}, Lcom/huawei/hem/j4;-><init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance p1, Lcom/huawei/hem/k4;

    invoke-direct {p1, p0, v2}, Lcom/huawei/hem/k4;-><init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance p1, Lcom/huawei/hem/l4;

    invoke-direct {p1, p0, v2}, Lcom/huawei/hem/l4;-><init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance p1, Lcom/huawei/hem/m4;

    invoke-direct {p1, p0, v2}, Lcom/huawei/hem/m4;-><init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 33
    :sswitch_2
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->n()V

    goto :goto_1

    .line 35
    :sswitch_3
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/CheckNetWorkActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07002e -> :sswitch_3
        0x7f070043 -> :sswitch_2
        0x7f07009a -> :sswitch_1
        0x7f0700db -> :sswitch_0
        0x7f070140 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
