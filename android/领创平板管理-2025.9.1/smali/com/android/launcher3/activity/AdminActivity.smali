.class public Lcom/android/launcher3/activity/AdminActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "AdminActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public b:Landroid/widget/Switch;

.field public c:Landroid/widget/Switch;

.field public d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_admin (0x7f09001d), APK res/layout/activity_admin.xml
    const v0, 0x7f09001d

    return v0
.end method

.method public c()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/huawei/hem/bc;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->b:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->b:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4
    :goto_0
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->K()I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/android/launcher3/activity/AdminActivity;->c:Landroid/widget/Switch;

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    const v0, 0x7f070075

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->b:Landroid/widget/Switch;

    const v0, 0x7f070170

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->c:Landroid/widget/Switch;

    const v0, 0x7f07016f

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->d:Landroid/widget/Button;

    const v0, 0x7f070180

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->b:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->c:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->b:Landroid/widget/Switch;

    if-ne p1, v0, :cond_a

    .line 2
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->R()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "device is release no need handle"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string p1, "send  broadcast to appstore for open log"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    .line 5
    new-instance p2, Lcom/huawei/hem/fc$b;

    invoke-direct {p2, p0}, Lcom/huawei/hem/fc$b;-><init>(Landroid/content/Context;)V

    .line 6
    iput-boolean v0, p2, Lcom/huawei/hem/fc$b;->e:Z

    .line 7
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    const-string v5, "log/"

    invoke-static {v3, v4, v5}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/huawei/hem/fc$b;->c:Ljava/lang/String;

    .line 9
    iget-object v2, p2, Lcom/huawei/hem/fc$b;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p2, Lcom/huawei/hem/fc$b;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 12
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-lez v4, :cond_1

    .line 13
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "App"

    .line 16
    :goto_0
    iput-object v2, p2, Lcom/huawei/hem/fc$b;->d:Ljava/lang/String;

    .line 17
    :cond_3
    iget-boolean v2, p2, Lcom/huawei/hem/fc$b;->e:Z

    if-eqz v2, :cond_8

    .line 18
    iget-object v2, p2, Lcom/huawei/hem/fc$b;->b:Lcom/huawei/hem/gc;

    if-nez v2, :cond_4

    .line 19
    new-instance v2, Lcom/huawei/hem/fc$c;

    invoke-direct {v2}, Lcom/huawei/hem/fc$c;-><init>()V

    iput-object v2, p2, Lcom/huawei/hem/fc$b;->b:Lcom/huawei/hem/gc;

    .line 20
    :cond_4
    iget-object v2, p2, Lcom/huawei/hem/fc$b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    iget-object v2, p2, Lcom/huawei/hem/fc$b;->a:Landroid/content/Context;

    const-string v3, "log"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/huawei/hem/fc$b;->c:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v2, "failed to resolve default log file directory"

    .line 23
    invoke-static {v2}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 24
    :cond_6
    :goto_1
    iget-wide v2, p2, Lcom/huawei/hem/fc$b;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    goto :goto_2

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max total size must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_8
    :goto_2
    new-instance v2, Lcom/huawei/hem/fc;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/huawei/hem/fc;-><init>(Lcom/huawei/hem/fc$b;Lcom/huawei/hem/fc$a;)V

    .line 27
    sput-object v2, Lcom/huawei/hem/bc;->e:Lcom/huawei/hem/fc;

    .line 28
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string p1, "com.ndwill.swd.appstore.log.open"

    .line 29
    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->R(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lcom/huawei/hem/bc;->v(Z)V

    const p1, 0x7f0c00ee

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    iget-object p1, p0, Lcom/android/launcher3/activity/AdminActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_4

    .line 33
    :cond_9
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string p1, "com.ndwill.swd.appstore.log.close"

    .line 34
    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->R(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Lcom/huawei/hem/bc;->v(Z)V

    const p1, 0x7f0c005d

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 37
    iget-object p1, p0, Lcom/android/launcher3/activity/AdminActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_4

    .line 38
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminActivity;->c:Landroid/widget/Switch;

    if-ne p1, v0, :cond_c

    if-eqz p2, :cond_b

    .line 39
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableUsb()V

    goto :goto_3

    .line 40
    :cond_b
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableUsb()V

    .line 41
    :goto_3
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 42
    invoke-virtual {p1, p2}, Lcom/huawei/hem/y5;->t0(I)V

    :cond_c
    :goto_4
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

    const-string v0, "action"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    const-class p1, Lcom/android/launcher3/activity/ReadWebSiteWhiteActivity;

    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 4
    :sswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "log/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/network/RunningLogHelper;->UploadRunningLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :sswitch_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "from"

    const-string v1, "admin"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-class v0, Lcom/android/launcher3/activity/LicenseActivity;

    invoke-static {p0, v0, p1}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :sswitch_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    const-class v0, Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-static {p0, v0, p1}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 11
    :sswitch_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    const-class v0, Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-static {p0, v0, p1}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f070020 -> :sswitch_4
        0x7f070023 -> :sswitch_3
        0x7f0700cc -> :sswitch_2
        0x7f07016f -> :sswitch_1
        0x7f070180 -> :sswitch_0
    .end sparse-switch
.end method
