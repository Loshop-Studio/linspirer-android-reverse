.class public Lcom/android/launcher3/fragment/login/CommonLoginFragment;
.super Lcom/android/launcher3/fragment/login/BaseLoginFragment;
.source "CommonLoginFragment.java"


# instance fields
.field public A:Landroid/widget/RelativeLayout;

.field public B:Landroid/widget/Button;

.field public C:Z

.field public D:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public q:Landroid/widget/EditText;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/EditText;

.field public t:Landroid/widget/CheckBox;

.field public u:Landroid/widget/RadioGroup;

.field public v:Landroid/widget/RadioButton;

.field public w:Landroid/widget/RadioButton;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/h4;

    invoke-direct {v0, p0}, Lcom/huawei/hem/h4;-><init>(Lcom/android/launcher3/fragment/login/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->D:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f090035

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->o(Z)V

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->g(Landroid/view/View;)V

    const v0, 0x7f070174

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->q:Landroid/widget/EditText;

    const v0, 0x7f070105

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->s:Landroid/widget/EditText;

    const v0, 0x7f0700b5

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->t:Landroid/widget/CheckBox;

    .line 5
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->S()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f070110

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->u:Landroid/widget/RadioGroup;

    const v0, 0x7f070007

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->x:Landroid/widget/TextView;

    const v0, 0x7f070143

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->y:Landroid/widget/TextView;

    const v0, 0x7f070008

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->v:Landroid/widget/RadioButton;

    const v0, 0x7f070144

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->w:Landroid/widget/RadioButton;

    const v0, 0x7f070006

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->z:Landroid/widget/RelativeLayout;

    const v0, 0x7f070142

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->A:Landroid/widget/RelativeLayout;

    const v0, 0x7f070145

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->r:Landroid/widget/TextView;

    const v0, 0x7f070140

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->B:Landroid/widget/Button;

    .line 15
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->m(Landroid/widget/TextView;)V

    .line 17
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->u:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->D:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）、保存布尔偏好（SharedPreferences$Editor.putBoolean）。
.method public n()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->C:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0123

    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    return-void

    .line 7
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0151

    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->n:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0154

    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    return-void

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    iget-boolean v3, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->C:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    move v3, v4

    .line 12
    :goto_1
    iget v5, v2, Lcom/huawei/hem/y5;->w0:I

    if-eq v5, v3, :cond_5

    .line 13
    iput v3, v2, Lcom/huawei/hem/y5;->w0:I

    .line 14
    iget-object v2, v2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 15
    iget-object v5, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "login_account_type"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 16
    iget-object v2, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 17
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/huawei/hem/y5;->e0(Z)V

    .line 18
    new-instance v2, Lcom/huawei/hem/cc;

    iget-object v5, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/huawei/hem/cc;-><init>(Landroid/content/Context;)V

    .line 19
    iget-object v2, v2, Lcom/huawei/hem/cc;->a:Landroid/net/NetworkInfo;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_7

    const-string v2, "CommonLoginFragmentparepare to on line login"

    .line 20
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->getInstance()Lcom/android/launcher3/network/CommonLoginRequestHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->t:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->onlineLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_7
    const-string v2, "CommonLoginFragmentparepare to on offline login"

    .line 22
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v3}, Lcom/huawei/hem/y5;->H()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v1}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v4}, Lcom/huawei/hem/y5;->c0(I)V

    .line 27
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    iget-object v1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->n:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 28
    iget-boolean v2, v0, Lcom/huawei/hem/y5;->N:Z

    if-eq v2, v1, :cond_9

    .line 29
    iget-object v2, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 30
    iget-object v3, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "agreed_privacy"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object v2, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    iput-boolean v1, v0, Lcom/huawei/hem/y5;->N:Z

    .line 33
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    iget-object v1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->t:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 34
    iget-boolean v2, v0, Lcom/huawei/hem/y5;->o:Z

    if-eq v2, v1, :cond_a

    .line 35
    iput-boolean v1, v0, Lcom/huawei/hem/y5;->o:Z

    .line 36
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 37
    iget-object v2, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "stu_is_save_account"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class v1, Lcom/android/launcher3/LauncherNew;

    invoke-static {v0, v1}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableNavigation()V

    .line 42
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/DeviceLogHelper;->recordAccountOfflineLogin()V

    goto :goto_4

    .line 43
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0150

    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    :goto_4
    return-void
.end method

.method public final o(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->w:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->v:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->S()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->a()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic p(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f070144

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->C:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/fragment/login/CommonLoginFragment;->o(Z)V

    return-void
.end method
