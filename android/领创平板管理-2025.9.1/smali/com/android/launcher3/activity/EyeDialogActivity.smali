.class public Lcom/android/launcher3/activity/EyeDialogActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "EyeDialogActivity.java"


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:I

.field public d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/launcher3/activity/EyeDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/activity/EyeDialogActivity$a;-><init>(Lcom/android/launcher3/activity/EyeDialogActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/activity/EyeDialogActivity;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_eye_dialog (0x7f090024), APK res/layout/activity_eye_dialog.xml
    const v0, 0x7f090024

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

    iput v0, p0, Lcom/android/launcher3/activity/EyeDialogActivity;->c:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->A()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object v2

    .line 10
    iput-boolean v1, v2, Lcom/huawei/hem/s4;->e:Z

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/activity/EyeDialogActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f070066

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/EyeDialogActivity;->b:Landroid/widget/TextView;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.launcher3.eyeprotected.close"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/activity/EyeDialogActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/activity/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/EyeDialogActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget v0, p0, Lcom/android/launcher3/activity/EyeDialogActivity;->c:I

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/huawei/hem/s4;->e:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget v0, p0, Lcom/android/launcher3/activity/EyeDialogActivity;->c:I

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/huawei/hem/s4;->e:Z

    :cond_0
    return-void
.end method
