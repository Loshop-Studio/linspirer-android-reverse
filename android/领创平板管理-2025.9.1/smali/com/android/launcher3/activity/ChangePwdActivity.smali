# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/activity/ChangePwdActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "ChangePwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/Button;

.field public d:Landroid/content/Context;

.field public e:Lcom/huawei/hem/y5;

.field public f:Landroid/widget/EditText;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/RelativeLayout;

.field public i:Lcom/huawei/hem/rb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    # RE layout layout/activity_change_pwd (0x7f09001f), APK res/layout/activity_change_pwd.xml
    const v0, 0x7f09001f

    return v0
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
    .locals 1

    .line 1
    iput-object p0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->d:Landroid/content/Context;

    const v0, 0x7f070102

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f0700fb

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f070064

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->g:Landroid/widget/EditText;

    const v0, 0x7f07003f

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    const v0, 0x7f070123

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->h:Landroid/widget/RelativeLayout;

    .line 7
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 8
    iput-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->e:Lcom/huawei/hem/y5;

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/activity/ChangePwdActivity;->f(Landroid/widget/EditText;)V

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->f:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/activity/ChangePwdActivity;->f(Landroid/widget/EditText;)V

    .line 13
    iget-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->g:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/activity/ChangePwdActivity;->f(Landroid/widget/EditText;)V

    .line 14
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->i:Lcom/huawei/hem/rb;

    return-void
.end method

.method public final f(Landroid/widget/EditText;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/launcher3/activity/ChangePwdActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/activity/ChangePwdActivity$a;-><init>(Lcom/android/launcher3/activity/ChangePwdActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    # RE layout layout/toast_tips (0x7f090055), APK res/layout/toast_tips.xml
    const v1, 0x7f090055

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070114

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v1, v1

    const/16 v3, 0x11

    .line 8
    invoke-virtual {p1, v3, v2, v1}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f07003f

    if-eq p1, v0, :cond_2

    const v0, 0x7f070123

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const p1, 0x7f0c00be

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/ChangePwdActivity;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_3
    invoke-static {p1}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->e:Lcom/huawei/hem/y5;

    invoke-virtual {v3}, Lcom/huawei/hem/y5;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const p1, 0x7f0c00ed

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/ChangePwdActivity;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_5

    const p1, 0x7f0c00e6

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/ChangePwdActivity;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const p1, 0x7f0c00ec

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/ChangePwdActivity;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 15
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const p1, 0x7f0c00f7

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/ChangePwdActivity;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    :cond_7
    new-instance v1, Lcom/huawei/hem/cc;

    invoke-direct {v1, p0}, Lcom/huawei/hem/cc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/huawei/hem/cc;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 19
    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->d:Landroid/content/Context;

    const v2, 0x7f0c0167

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 21
    new-instance v2, Lcom/android/launcher3/network/params/ChangePwdParams;

    iget-object v3, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/network/params/ChangePwdParams;-><init>(Landroid/content/Context;)V

    .line 22
    iget-object v3, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->e:Lcom/huawei/hem/y5;

    invoke-virtual {v3}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/network/params/ChangePwdParams;->setEmail(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, p1}, Lcom/android/launcher3/network/params/ChangePwdParams;->setOldpassword(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, v0}, Lcom/android/launcher3/network/params/ChangePwdParams;->setPassword(Ljava/lang/String;)V

    const-string p1, "com.linspirer.user.updatepassword"

    .line 25
    invoke-virtual {v1, p1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 26
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->i:Lcom/huawei/hem/rb;

    if-eqz p1, :cond_9

    .line 28
    new-instance v0, Lcom/huawei/hem/vb;

    invoke-direct {v0, p1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 29
    sget-object p1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 30
    iput-object p1, v0, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 32
    iput-object p1, v0, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 33
    new-instance p1, Lcom/huawei/hem/i2;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {p1, p0, v1}, Lcom/huawei/hem/i2;-><init>(Lcom/android/launcher3/activity/ChangePwdActivity;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {v0, p1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    .line 35
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 36
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/activity/ChangePwdActivity;->d:Landroid/content/Context;

    const v1, 0x7f0c00f5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangePwdActivity ---request url change_pwd error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_a
    const p1, 0x7f0c00e5

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/ChangePwdActivity;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
