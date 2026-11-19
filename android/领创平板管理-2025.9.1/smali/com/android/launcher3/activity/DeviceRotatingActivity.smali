# RE note 本类字节码直接引用的读写或显示接口包括偏好设置。
.class public Lcom/android/launcher3/activity/DeviceRotatingActivity;
.super Landroid/app/Activity;
.source "DeviceRotatingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/widget/RadioGroup;

.field public b:Lcom/huawei/hem/y5;

.field public c:Landroid/widget/RadioButton;

.field public d:Landroid/widget/RadioButton;

.field public e:Landroid/widget/RadioButton;

.field public f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/widget/RadioGroup;I)V
    .locals 1

    const/4 p1, 0x1

    const v0, 0x7f070103

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0700a7

    if-ne p2, v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c(I)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    const-string v0, "DeviceRotatingActivity====saveData"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->n0(I)V

    .line 4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast v0, Lcom/huawei/hem/jc;

    invoke-virtual {v0, p0}, Lcom/huawei/hem/jc;->R0(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->b:Lcom/huawei/hem/y5;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/huawei/hem/y5;->n0(I)V

    .line 7
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast v0, Lcom/huawei/hem/jc;

    invoke-virtual {v0, p0}, Lcom/huawei/hem/jc;->b(Landroid/content/Context;)V

    .line 8
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast v0, Lcom/huawei/hem/jc;

    invoke-virtual {v0, p0, v1}, Lcom/huawei/hem/jc;->U0(Landroid/content/Context;I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast v0, Lcom/huawei/hem/jc;

    invoke-virtual {v0, p0}, Lcom/huawei/hem/jc;->b(Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->b:Lcom/huawei/hem/y5;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->n0(I)V

    .line 12
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x0

    check-cast v0, Lcom/huawei/hem/jc;

    invoke-virtual {v0, p0, v1}, Lcom/huawei/hem/jc;->U0(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceRotatingActivity status :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/activity/DeviceRotatingActivity;->b()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070062

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

# RE I/O 读取整数偏好（SharedPreferences.getInt）。
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    # RE layout layout/activity_device_rotating (0x7f090022), APK res/layout/activity_device_rotating.xml
    const p1, 0x7f090022

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f070110

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->a:Landroid/widget/RadioGroup;

    const p1, 0x7f07017a

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c:Landroid/widget/RadioButton;

    const p1, 0x7f0700a7

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->d:Landroid/widget/RadioButton;

    const p1, 0x7f070103

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->e:Landroid/widget/RadioButton;

    .line 7
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 11
    iput-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->b:Lcom/huawei/hem/y5;

    const/4 v0, 0x1

    .line 12
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 13
    iget-object p1, p1, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v1, "rotating_status"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7f070062

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->f:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/DeviceRotatingActivity;->c(I)V

    .line 17
    iget-object p1, p0, Lcom/android/launcher3/activity/DeviceRotatingActivity;->a:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/huawei/hem/z1;

    invoke-direct {v0, p0}, Lcom/huawei/hem/z1;-><init>(Lcom/android/launcher3/activity/DeviceRotatingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "DeviceRotatingActivity==== onPause"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/activity/DeviceRotatingActivity;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "DeviceRotatingActivity==== onStop"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/activity/DeviceRotatingActivity;->b()V

    return-void
.end method
