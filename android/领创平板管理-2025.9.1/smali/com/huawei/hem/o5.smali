.class public Lcom/huawei/hem/o5;
.super Ljava/lang/Object;
.source "AppUpdateCheckHelper.java"


# static fields
.field public static a:J


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/huawei/hem/o5;->a:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 3
    sput-wide v0, Lcom/huawei/hem/o5;->a:J

    :cond_0
    if-gtz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "EduAppStoreHelper,handle check app store from isv"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.linspirer.appstore.action.AUTO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.ndwill.swd.appstore"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    const-string v0, "send broadcast to check appstore update apps"

    .line 9
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "com.linspirer.appstore.action.ACTION_SILENT_INSTALL_OR_UPDATE"

    .line 10
    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->R(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
