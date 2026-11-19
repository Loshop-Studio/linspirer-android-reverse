.class public Lcom/android/launcher3/activity/PullNewsActivity;
.super Landroid/app/Activity;
.source "PullNewsActivity.java"


# static fields
.field public static a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-wide/32 v0, 0xea60

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    sget-wide v4, Lcom/android/launcher3/activity/PullNewsActivity;->a:J

    sub-long v4, v2, v4

    cmp-long p1, v4, v0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    sput-wide v2, Lcom/android/launcher3/activity/PullNewsActivity;->a:J

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->k()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PullNewsActivity has no cer"

    .line 6
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const p1, 0x7f0c00b1

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    const-string p1, "PullNewsActivity on refresh all tactics"

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/launcher3/network/TacticsHelper;->getInstance()Lcom/android/launcher3/network/TacticsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/TacticsHelper;->request()V

    .line 10
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->request()V

    .line 11
    invoke-static {p0}, Lcom/android/launcher3/network/ControlAppHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/network/ControlAppHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/ControlAppHelper;->request()V

    .line 12
    invoke-static {}, Lcom/android/launcher3/network/UrlWhiteHelper;->getInstance()Lcom/android/launcher3/network/UrlWhiteHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/UrlWhiteHelper;->request()V

    .line 13
    invoke-static {}, Lcom/android/launcher3/network/HiScreenHelper;->getInstance()Lcom/android/launcher3/network/HiScreenHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/HiScreenHelper;->updateScreenSettings()V

    .line 14
    invoke-static {}, Lcom/android/launcher3/network/GreenBrowWebHelper;->getInstances()Lcom/android/launcher3/network/GreenBrowWebHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/GreenBrowWebHelper;->getBrowUrlFromServer()V

    .line 15
    invoke-static {}, Lcom/huawei/hem/r5;->a()Lcom/huawei/hem/r5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/r5;->b()V

    .line 16
    invoke-static {p0}, Lcom/huawei/hem/u4;->c(Landroid/content/Context;)Lcom/huawei/hem/u4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/u4;->d()V

    const p1, 0x7f0c0120

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f0c0122

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 19
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
