.class public Lcom/android/launcher3/receiver/TimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeReceiver.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/y4;->A(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "TimeReceiver device is release no need check action or intent null"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.TIME_TICK"

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 5
    invoke-static {}, Lcom/huawei/hem/ce;->s()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->pullSynchronizeTimeBoolean(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const-string p2, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 7
    filled-new-array {p2, v2}, [Ljava/lang/String;

    move-result-object p2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 8
    aget-object v3, p2, v2

    .line 9
    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string p2, "has no permission no need sync time"

    .line 10
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p1}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->pullSynchronizeTimeBoolean(Landroid/content/Context;)V

    :goto_1
    const-string p2, "TimeReceiver  every min need check"

    .line 12
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 13
    sget-object p2, Lcom/huawei/hem/v4$b;->a:Lcom/huawei/hem/v4;

    .line 14
    invoke-virtual {p2}, Lcom/huawei/hem/v4;->a()V

    .line 15
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/network/AppTimeLimitHelper;->checkTimeLimit()V

    .line 16
    iget p2, p0, Lcom/android/launcher3/receiver/TimeReceiver;->a:I

    const/4 v2, 0x1

    add-int/2addr p2, v2

    iput p2, p0, Lcom/android/launcher3/receiver/TimeReceiver;->a:I

    const/4 v3, 0x5

    if-ne p2, v3, :cond_4

    .line 17
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/network/DeviceLogHelper;->uploadEvent()V

    .line 18
    iput v1, p0, Lcom/android/launcher3/receiver/TimeReceiver;->a:I

    .line 19
    :cond_4
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object p2

    .line 20
    iget v3, p2, Lcom/huawei/hem/s4;->a:I

    const-string v4, "action"

    if-eqz v3, :cond_6

    iget-boolean v5, p2, Lcom/huawei/hem/s4;->e:Z

    if-eqz v5, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    iget v5, p2, Lcom/huawei/hem/s4;->c:I

    add-int/2addr v5, v2

    iput v5, p2, Lcom/huawei/hem/s4;->c:I

    if-lt v5, v3, :cond_7

    .line 22
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    iget-object v5, p2, Lcom/huawei/hem/s4;->d:Landroid/content/Context;

    const-class v6, Lcom/android/launcher3/activity/EyeDialogActivity;

    invoke-static {v5, v6, v3}, Lcom/huawei/hem/y4;->X(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 25
    iput v1, p2, Lcom/huawei/hem/s4;->c:I

    goto :goto_3

    :cond_6
    :goto_2
    const-string p2, "EyeProtectedHelper not set eye protected duration or is showing"

    .line 26
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 27
    :cond_7
    :goto_3
    sget-boolean p2, Lcom/huawei/hem/bc;->d:Z

    if-nez p2, :cond_8

    goto :goto_4

    .line 28
    :cond_8
    sget-wide v5, Lcom/huawei/hem/bc;->c:J

    const-wide/32 v7, 0x36ee80

    add-long/2addr v5, v7

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-gtz p2, :cond_9

    .line 30
    invoke-static {v1}, Lcom/huawei/hem/bc;->v(Z)V

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "log/"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/launcher3/network/RunningLogHelper;->UploadRunningLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_9
    :goto_4
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object p2

    const-string v3, "BVE-W10"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_6

    .line 33
    :cond_a
    invoke-static {}, Lcom/huawei/hem/de;->m()J

    move-result-wide v5

    .line 34
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p2

    .line 35
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7

    .line 37
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v7, v9

    goto :goto_5

    :catch_0
    move-exception p2

    .line 38
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v7, 0x0

    :goto_5
    const-wide/16 v9, 0x64

    mul-long/2addr v7, v9

    .line 39
    div-long/2addr v7, v5

    long-to-int p2, v7

    const v3, 0x7f0c00c5

    const/4 v5, 0x6

    if-gt p2, v5, :cond_b

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeReceiver min  "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v4, Lcom/huawei/hem/x1;->c:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/receiver/TimeReceiver;->a()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/receiver/TimeReceiver;->a()Z

    move-result p2

    if-nez p2, :cond_d

    sget p2, Lcom/huawei/hem/x1;->c:I

    const/4 v4, -0x1

    if-eq p2, v4, :cond_d

    .line 42
    sput v0, Lcom/huawei/hem/x1;->c:I

    .line 43
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/16 v0, 0x9

    .line 44
    invoke-virtual {p2, v0, v2}, Lcom/huawei/hem/y5;->d0(IZ)V

    .line 45
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p2

    .line 46
    new-instance v0, Lcom/huawei/hem/i5;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hem/i5;-><init>(Lcom/android/launcher3/receiver/TimeReceiver;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/network/IllegalHelper;->setIllegalCallBack(Lcom/huawei/hem/h3;)V

    .line 47
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "7G"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/network/IllegalHelper;->recordInternalStorageOverFlow(Ljava/lang/String;)V

    goto :goto_6

    .line 48
    :cond_b
    sget v0, Lcom/huawei/hem/x1;->c:I

    const/16 v6, 0xa

    if-eq v0, v2, :cond_c

    if-gt p2, v6, :cond_c

    .line 49
    sput v2, Lcom/huawei/hem/x1;->c:I

    const-string p2, "TimeReceiver min 10"

    .line 50
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 51
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 52
    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-class v0, Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-static {p1, v0, p2}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "12G"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/network/IllegalHelper;->recordInternalStorageOverFlow(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    if-le p2, v6, :cond_d

    .line 55
    sput v1, Lcom/huawei/hem/x1;->c:I

    :cond_d
    :goto_6
    return-void
.end method
