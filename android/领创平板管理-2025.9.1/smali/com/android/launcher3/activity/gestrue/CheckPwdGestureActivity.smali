# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;
.super Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;
.source "CheckPwdGestureActivity.java"


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/android/launcher3/view/GestureLockLayout;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/Button;

.field public n:Landroid/view/View;

.field public o:Lcom/huawei/hem/y5;

.field public p:Z

.field public q:Z

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Lcom/huawei/hem/rb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->p:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->q:Z

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->l()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/layout_check_gesture_pwd (0x7f090040), APK res/layout/layout_check_gesture_pwd.xml
    const v0, 0x7f090040

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/huawei/hem/p2;

    invoke-direct {v1, p0}, Lcom/huawei/hem/p2;-><init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->transparentStatusBar()Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f04003f

    .line 3
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->p:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0c0136

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c00f2

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->e()V

    .line 2
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->v:Lcom/huawei/hem/rb;

    .line 3
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->t:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->u:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->U(Z)V

    const v0, 0x7f07016b

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0700d9

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f070174

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f070021

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f070022

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0700c7

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/view/GestureLockLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->i:Lcom/android/launcher3/view/GestureLockLayout;

    const v0, 0x7f07010e

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0700b3

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f070056

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->m:Landroid/widget/Button;

    const v0, 0x7f070087

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->n:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v0, Lcom/huawei/hem/q2;

    invoke-direct {v0, p0}, Lcom/huawei/hem/q2;-><init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V

    .line 20
    iget-object v1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->m:Landroid/widget/Button;

    new-instance v2, Lcom/huawei/hem/r2;

    invoke-direct {v2, p0}, Lcom/huawei/hem/r2;-><init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/huawei/hem/s2;

    invoke-direct {v2, p0}, Lcom/huawei/hem/s2;-><init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->s:Landroid/widget/TextView;

    new-instance v2, Lcom/huawei/hem/t2;

    invoke-direct {v2, p0}, Lcom/huawei/hem/t2;-><init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->i:Lcom/android/launcher3/view/GestureLockLayout;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/view/GestureLockLayout;->setGestureFinishedCallback(Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;)V

    .line 24
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->i:Lcom/android/launcher3/view/GestureLockLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/view/GestureLockLayout;->switchToCheckMode(Ljava/util/List;I)V

    return-void
.end method

.method public synthetic k(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->l()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v0, 0x7f0c0138

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0, v0, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->q:Z

    const v3, 0x7f0c0141

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/huawei/hem/y4;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/y5;->U(Z)V

    .line 8
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableRecent()V

    .line 9
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableHome()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "com.zykj.manage"

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    new-instance v1, Lcom/huawei/hem/cc;

    invoke-direct {v1, p0}, Lcom/huawei/hem/cc;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v1}, Lcom/huawei/hem/cc;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->u:Ljava/lang/String;

    .line 16
    sget-object v3, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 17
    invoke-virtual {v3}, Lcom/huawei/hem/y5;->R()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const v3, 0x7f0c0187

    .line 18
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v3, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v3}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 20
    new-instance v4, Lcom/android/launcher3/network/params/LoginParams;

    invoke-direct {v4, p0}, Lcom/android/launcher3/network/params/LoginParams;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v4, v1}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v0}, Lcom/android/launcher3/network/params/LoginParams;->setPassword(Ljava/lang/String;)V

    const-string v0, "com.ndwill.swd.appstore"

    .line 23
    invoke-static {v0, p0}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/network/params/LoginParams;->setAppstore_version(Ljava/lang/String;)V

    const-string v0, "com.android.launcher3"

    .line 24
    invoke-static {v0, p0}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/network/params/LoginParams;->setLauncher_version(Ljava/lang/String;)V

    .line 25
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 26
    invoke-virtual {v4, v0}, Lcom/android/launcher3/network/params/LoginParams;->setRom_version(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/network/params/LoginParams;->setSn(Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lcom/huawei/hem/de;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/network/params/LoginParams;->setAndroid_id(Ljava/lang/String;)V

    .line 29
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 30
    invoke-virtual {v4, v0}, Lcom/android/launcher3/network/params/LoginParams;->setRom_version(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->LOGIN_METHOD:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 32
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->v:Lcom/huawei/hem/rb;

    if-eqz v0, :cond_4

    .line 34
    new-instance v1, Lcom/huawei/hem/vb;

    invoke-direct {v1, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 35
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 36
    iput-object v0, v1, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 37
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iput-object v0, v1, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/huawei/hem/u2;

    const-class v3, Lcom/android/launcher3/model/UserInfo;

    invoke-direct {v0, p0, v3}, Lcom/huawei/hem/u2;-><init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 41
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 42
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x7f0c0055

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {p0, v0, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string v1, "CheckPwdGestureActivity -- check local StuLoginPassword ."

    .line 46
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/y5;->U(Z)V

    .line 49
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableRecent()V

    .line 50
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableHome()V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 52
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 53
    :cond_7
    invoke-static {}, Lcom/huawei/hem/y4;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/y5;->U(Z)V

    .line 55
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableRecent()V

    .line 56
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableHome()V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 58
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableHome()V

    .line 3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableRecent()V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->i:Lcom/android/launcher3/view/GestureLockLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->p:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->q:Z

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
