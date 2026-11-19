.class public Lcom/android/launcher3/receiver/EyeProtectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EyeProtectReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EyeProtectReceiver eye action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    .line 3
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    const-class p3, Lcom/android/launcher3/activity/EyeDialogActivity;

    invoke-static {p1, p3, p2}, Lcom/huawei/hem/y4;->X(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/huawei/hem/s4;->d:Landroid/content/Context;

    const-string p2, "send broadcast to close eye page"

    .line 7
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string p2, "com.android.launcher3.eyeprotected.close"

    .line 8
    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->I(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/y4;->A(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7d7467f2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0xee2a4c9

    if-eq v2, v3, :cond_2

    const v3, 0x4ad2234a    # 6885797.0f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.huawei.eyesprotect.proximity.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    goto :goto_0

    :cond_2
    const-string v2, "com.huawei.eyesprotect.ligth.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "com.huawei.eyesprotect.flip.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v6

    :cond_4
    :goto_0
    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "intensity"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    const-string v2, "inHealthyRange"

    .line 5
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_6

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_6

    xor-int/2addr p2, v6

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/receiver/EyeProtectReceiver;->a(Landroid/content/Context;ZI)V

    goto :goto_1

    :cond_6
    const/high16 v1, 0x45fa0000    # 8000.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_9

    const v1, 0x471c4000    # 40000.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    xor-int/2addr p2, v6

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/receiver/EyeProtectReceiver;->a(Landroid/content/Context;ZI)V

    goto :goto_1

    :cond_7
    const-string v0, "fliped"

    .line 8
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/launcher3/receiver/EyeProtectReceiver;->a(Landroid/content/Context;ZI)V

    goto :goto_1

    :cond_8
    const-string v0, "isShorter"

    .line 10
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 11
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/launcher3/receiver/EyeProtectReceiver;->a(Landroid/content/Context;ZI)V

    :cond_9
    :goto_1
    return-void
.end method
