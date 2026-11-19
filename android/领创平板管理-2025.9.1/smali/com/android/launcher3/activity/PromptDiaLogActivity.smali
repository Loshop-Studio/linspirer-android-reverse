# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/activity/PromptDiaLogActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "PromptDiaLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:[Ljava/lang/String;

.field public c:I

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:I

.field public h:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    const-string v0, "android.permission.CAMERA"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->b:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->c:I

    return-void
.end method

.method public static f(Lcom/android/launcher3/activity/PromptDiaLogActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/ControlHelper;->getInstance()Lcom/android/launcher3/network/ControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/ControlHelper;->handleHemRelease()V

    .line 2
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->R(I)V

    .line 3
    invoke-static {p0}, Lcom/huawei/hem/license/HemLicenseManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hem/license/HemLicenseManager;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/huawei/hem/d2;

    invoke-direct {v1, p0}, Lcom/huawei/hem/d2;-><init>(Lcom/android/launcher3/activity/PromptDiaLogActivity;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hem/license/HemLicenseManager;->setStatusListener(Lcom/huawei/hem/license/HemLicenseStatusListener;)V

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/license/HemLicenseManager;->deActiveLicense()Lcom/huawei/hem/w7;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_prompt_dia_log (0x7f09002c), APK res/layout/activity_prompt_dia_log.xml
    const v0, 0x7f09002c

    return v0
.end method

.method public c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0c007d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x3

    const v3, 0x7f0c00b3

    const/16 v4, 0x8

    if-ne v0, v2, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0c0097

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 7
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 8
    iput-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->h:Lcom/huawei/hem/y5;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0c0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 19
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0c0189

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    const v0, 0x7f0700e7

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f070048

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->e:Landroid/widget/Button;

    const v0, 0x7f070072

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f:Landroid/widget/Button;

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->h:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->e()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PromptDiaLogActivity --camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableCamera()V

    .line 4
    :cond_0
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setOrientationLocked(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 6
    const-class v1, Lcom/android/launcher3/activity/CustomCaptureActivity;

    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 7
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PromptDiaLogActivity  -- hem msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- msgCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_0

    const p1, 0x7f0c00ff

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  errorcode:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    invoke-static {p0, p1, p2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "PromptDiaLogActivity scaning start"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "PromptDiaLogActivity scaning result is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "PromptDiaLogActivity scaning signature is empty"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/huawei/hem/bc;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "yyyy-MM-dd"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PromptDiaLogActivity parse  result:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " current:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    :try_start_0
    new-instance p1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {p1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 14
    new-instance p2, Lcom/android/launcher3/network/params/Params;

    invoke-direct {p2, p0}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    .line 15
    iget-object p3, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->h:Lcom/huawei/hem/y5;

    invoke-virtual {p3}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    const-string p3, "com.linspirer.device.canceldistribute"

    .line 16
    invoke-virtual {p1, p3}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 17
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 18
    new-instance p2, Lcom/huawei/hem/rb;

    invoke-direct {p2}, Lcom/huawei/hem/rb;-><init>()V

    .line 19
    new-instance p3, Lcom/huawei/hem/vb;

    invoke-direct {p3, p2}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 20
    sget-object p2, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 21
    iput-object p2, p3, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p3, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 24
    new-instance p1, Lcom/huawei/hem/n2;

    const-class p2, Ljava/lang/Boolean;

    invoke-direct {p1, p0, p2}, Lcom/huawei/hem/n2;-><init>(Lcom/android/launcher3/activity/PromptDiaLogActivity;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p3, p1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PromptDiaLogActivity --JSONException:"

    .line 26
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const p1, 0x7f0c0050

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070048

    if-eq p1, v0, :cond_6

    const v0, 0x7f070072

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget p1, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->g:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0c00fd

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->e:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->b:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->b:[Ljava/lang/String;

    iget v0, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->c:I

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/activity/PromptDiaLogActivity;->g()V

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, v0}, Lcom/huawei/hem/ic;->t(Z)V

    .line 11
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/launcher3/activity/PromptDiaLogActivity;->c:I

    if-ne p1, p2, :cond_1

    .line 2
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/activity/PromptDiaLogActivity;->g()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c00f8

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
