.class public Lcom/android/launcher3/activity/RemoveControlDialogActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "RemoveControlDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Lcom/huawei/hem/g3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;-><init>(Lcom/android/launcher3/activity/RemoveControlDialogActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->h:Lcom/huawei/hem/g3;

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/activity/RemoveControlDialogActivity;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g(I)V

    return-void
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g(I)V

    const-string v2, "http://download1.linspirer.com/download?filename=/uploads/firefoxlite_releasecontrol.apk"

    .line 3
    iput-object v2, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->b:Ljava/lang/String;

    const-string v2, "com.android.browser"

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5
    :try_start_0
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :catchall_0
    const v3, 0x7f070072

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v2}, Lcom/huawei/hem/ic;->y0(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/launcher3/network/ControlHelper;->getInstance()Lcom/android/launcher3/network/ControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/ControlHelper;->handleOtherRelease()V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g(I)V

    .line 10
    iget v2, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->c:I

    .line 11
    iget-object v1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->h:Lcom/huawei/hem/g3;

    const-string v4, "cn.mozilla.rocket"

    invoke-static {p0, v4, v1, v2}, Lcom/huawei/hem/y4;->E(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/g3;)V

    .line 12
    iget-object v1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f0700e7

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f070048

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->f:Landroid/widget/Button;

    const v0, 0x7f070072

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final g(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveControlDialogActivity  viewSwitch code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const v0, 0x7f0c0103

    const v1, 0x7f070072

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0104

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 12
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :pswitch_5
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 15
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g:Landroid/widget/Button;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 17
    :pswitch_6
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c012f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :pswitch_7
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070072

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveControlDialogActivity  onClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "cn.mozilla.rocket"

    const/4 v1, 0x4

    const/4 v2, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->d:I

    if-gt p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->d:I

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->h:Lcom/huawei/hem/g3;

    invoke-static {p0, v0, p1, v1}, Lcom/huawei/hem/y4;->E(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/g3;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g(I)V

    .line 9
    sget-object p1, Lcom/huawei/hem/y4;->a:Ljava/util/Timer;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 11
    :cond_2
    sget-object p1, Lcom/huawei/hem/y4;->b:Ljava/io/File;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 13
    :pswitch_1
    iget p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->c:I

    if-ge p1, v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 14
    iput p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->c:I

    .line 15
    iget-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->h:Lcom/huawei/hem/g3;

    invoke-static {p0, v0, p1, v1}, Lcom/huawei/hem/y4;->E(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/g3;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->g(I)V

    goto :goto_0

    .line 17
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
