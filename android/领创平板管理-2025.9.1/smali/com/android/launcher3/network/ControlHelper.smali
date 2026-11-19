# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/ControlHelper;
.super Ljava/lang/Object;
.source "ControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/ControlHelper$ControlHolder;
    }
.end annotation


# static fields
.field public static final CONTROL:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final RELEASE_CONTROL:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ControlHelper "

.field public static mHttpCore:Lcom/huawei/hem/rb;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/ControlHelper;->mContext:Landroid/content/Context;

    .line 5
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    sput-object v0, Lcom/android/launcher3/network/ControlHelper;->mHttpCore:Lcom/huawei/hem/rb;

    const-string v0, "ControlHelper construct Control helper"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/ControlHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/ControlHelper;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->t(Z)V

    return-void
.end method

.method private control()V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->f()V

    .line 2
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->R(I)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/huawei/hem/b5;

    invoke-direct {v1, p0}, Lcom/huawei/hem/b5;-><init>(Lcom/android/launcher3/network/ControlHelper;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/network/ControlHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/ControlHelper$ControlHolder;->access$000()Lcom/android/launcher3/network/ControlHelper;

    move-result-object v0

    return-object v0
.end method

.method private isNeedUpload()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 2
    invoke-interface {v0, v2}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v0

    .line 3
    sget-object v3, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    invoke-virtual {v3}, Lcom/huawei/hem/y5;->R()Z

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ControlHelper  control mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " release control:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-eq v2, v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private runNow()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lcom/huawei/hem/c5;->a:Lcom/huawei/hem/c5;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcom/android/launcher3/network/ControlHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-static {v1, v2, v0}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/ControlHelper;->showDialog()V

    .line 2
    invoke-direct {p0}, Lcom/android/launcher3/network/ControlHelper;->runNow()V

    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method public handleHemRelease()V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    iget v1, v0, Lcom/huawei/hem/y5;->s:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3
    iput v2, v0, Lcom/huawei/hem/y5;->s:I

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 5
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "release_control"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7
    :cond_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v1, "com.huawei.hwid"

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->y(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->D()V

    .line 9
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->f()V

    .line 10
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableFireWall()V

    .line 11
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->s(Ljava/util/List;)Z

    .line 12
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->h()V

    .line 13
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->V(Ljava/util/List;)Z

    .line 14
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableCamera()V

    .line 15
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableUsb()V

    .line 16
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableBluetooth()V

    .line 17
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->X()V

    .line 18
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v2}, Lcom/huawei/hem/ic;->c(Z)V

    .line 19
    invoke-static {v2}, Lcom/huawei/hem/y4;->S(Z)V

    .line 20
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableGPS()V

    .line 21
    sget-object v0, Lcom/huawei/hem/x4$b;->a:Lcom/huawei/hem/x4;

    .line 22
    invoke-virtual {v0}, Lcom/huawei/hem/x4;->a()V

    .line 23
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->q()Ljava/util/List;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    .line 25
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->clearData()V

    .line 26
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->m0(I)V

    .line 28
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 29
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->b0(I)V

    .line 30
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/16 v2, 0x2710

    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/huawei/hem/y5;->d0(IZ)V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x5

    const-string v2, "action"

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    iget-object v1, p0, Lcom/android/launcher3/network/ControlHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-static {v1, v2, v0}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 35
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->R(I)V

    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method public handleOtherRelease()V
    .locals 4

    const-string v0, "ControlHelper handle other devices  release control"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 3
    iget v1, v0, Lcom/huawei/hem/y5;->s:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4
    iput v2, v0, Lcom/huawei/hem/y5;->s:I

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 6
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "release_control"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8
    :cond_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableFireWall()V

    .line 9
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->s(Ljava/util/List;)Z

    .line 10
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->h()V

    .line 11
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableCamera()V

    .line 12
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableUsb()V

    .line 13
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableBluetooth()V

    .line 14
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v2}, Lcom/huawei/hem/ic;->c(Z)V

    .line 15
    invoke-static {v2}, Lcom/huawei/hem/y4;->S(Z)V

    .line 16
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableGPS()V

    .line 17
    sget-object v0, Lcom/huawei/hem/x4$b;->a:Lcom/huawei/hem/x4;

    .line 18
    invoke-virtual {v0}, Lcom/huawei/hem/x4;->a()V

    .line 19
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->clearData()V

    .line 20
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->m0(I)V

    .line 22
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 23
    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->b0(I)V

    .line 24
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/16 v2, 0x2710

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/huawei/hem/y5;->d0(IZ)V

    .line 26
    iget-object v0, p0, Lcom/android/launcher3/network/ControlHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hem/y4;->F(Landroid/content/Context;)V

    return-void
.end method

.method public handleReleaseControl(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1
    invoke-static {}, Lcom/huawei/hem/de;->w()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "2.0.0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/network/ControlHelper;->handleHemRelease()V

    goto :goto_3

    .line 4
    :cond_1
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    invoke-static {}, Lcom/huawei/hem/ce;->w()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    invoke-static {}, Lcom/huawei/hem/ce;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 7
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v3}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ControlHelper  -- handle release control server "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " local mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 9
    invoke-direct {p0}, Lcom/android/launcher3/network/ControlHelper;->control()V

    goto :goto_3

    :cond_4
    if-ne p1, v0, :cond_6

    .line 10
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->f()V

    .line 11
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, v0}, Lcom/huawei/hem/ic;->t(Z)V

    goto :goto_3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/network/ControlHelper;->handleOtherRelease()V

    :cond_6
    :goto_3
    return-void
.end method

.method public reportControlStatus()V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    if-nez v0, :cond_0

    const-string v0, "ControlHelper  upload break by mdm null "

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/huawei/hem/ic;->e0()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ControlHelper  mdm control mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlHelper  weak  control mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    move v0, v2

    .line 8
    :cond_2
    :try_start_0
    new-instance v1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 9
    new-instance v2, Lcom/android/launcher3/network/params/ControlHelperParams;

    iget-object v3, p0, Lcom/android/launcher3/network/ControlHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/network/params/ControlHelperParams;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/android/launcher3/network/params/ControlHelperParams;->setIs_control(I)V

    const-string v0, "com.linspirer.control.setdevicecontrol"

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/android/launcher3/network/ControlHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v0, :cond_3

    .line 14
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 15
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 16
    iput-object v0, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/android/launcher3/network/ControlHelper$1;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/ControlHelper$1;-><init>(Lcom/android/launcher3/network/ControlHelper;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 21
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ControlHelper --JSONException:"

    .line 22
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
