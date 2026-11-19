.class public Lcom/huawei/hem/xc;
.super Lcom/huawei/hem/jc;
.source "HuaruianImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/xc;

.field public static c:Landroid/content/Context;

.field public static d:Landroid/content/ComponentName;

.field public static e:Lcom/huawei/hem/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/xc;

    invoke-direct {v0}, Lcom/huawei/hem/xc;-><init>()V

    sput-object v0, Lcom/huawei/hem/xc;->b:Lcom/huawei/hem/xc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method


# virtual methods
.method public B0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HuaruianImpl  -- actionEnableApp"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/huawei/hem/a0;->f(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionEnableApp error : "

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "HuaruianImpl  -- actionSilentInstall"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v3, "silentInstall"

    .line 3
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.hra.Silence.install"

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "filePath"

    .line 6
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "open"

    .line 7
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionSilentInstall error : "

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "HuaruianImpl  -- getDeviceSN"

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v1, "HRA_API"

    const-string v3, "SNNumber"

    .line 3
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "getSNNumber"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    const-string v2, "HuaruianImpl  -- getDeviceSN error : "

    .line 6
    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public G0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "HuaruianImpl  -- getNetworkAccessAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/a0;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- getNetworkAccessAppWhiteList error : "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public I0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "HuaruianImpl  -- setNetworkAccessAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    check-cast p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setUidToAppList"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.hra.addUidAppList"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appPkgName"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- setNetworkAccessAppWhiteList error : "

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaruianImpl  -- actionKillApp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "forceStopApp"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.hra.forceStopPackage"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "stop_pkg"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionKillApp error : "

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public L(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- actionScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "/mnt/sdcard/Screenshots/"

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screenshot_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hem/bc;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v0, "HRA_API"

    const-string v2, "setSettingOptionVisible"

    .line 9
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.screenshot"

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ScreenshotPath"

    .line 12
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 14
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionScreenShot error : "

    .line 15
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const-string p1, ""

    return-object p1
.end method

.method public M0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "HuaruianImpl  -- getAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/a0;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- getAppWhiteList error : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public N(J)Z
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- setSystemTime"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setDeviceDate"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.DateReceiver"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "TIME"

    .line 6
    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string p2, "HuaruianImpl  -- setSystemTime error : "

    .line 9
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 10
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "HuaruianImpl set vol sub error:"

    const-string v1, "HRA_API"

    const-string v2, "HuaruianImpl  -- systemInit"

    .line 1
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "HuaruianImpl  -- actionActiveDeviceAdmin"

    .line 2
    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v3, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v4, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    sget-object v5, Lcom/huawei/hem/xc;->d:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    const-string v3, "setDeviceAdministrators"

    .line 4
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.hra.Device"

    .line 6
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "pkgname"

    .line 7
    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "receiverName"

    .line 8
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 10
    :cond_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    const-string v4, "HuaruianImpl  -- actionActiveDeviceAdmin error : "

    .line 11
    invoke-static {v3, v4}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 12
    invoke-static {v3, v4}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v3, "HuaruianImpl  -- hideScreenShotKey"

    .line 13
    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 14
    sget-object v3, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v4, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v3, :cond_1

    const-string v3, "setScreenShotGone"

    .line 15
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.hra.hideScreenShot"

    .line 17
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 19
    :cond_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v3

    const-string v4, "HuaruianImpl  -- hideScreenShotKey error : "

    .line 20
    invoke-static {v3, v4}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 21
    invoke-static {v3, v4}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 22
    :goto_1
    :try_start_2
    sget-object v3, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v4, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v3, :cond_2

    const-string v3, "setHomeLauncher"

    .line 23
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.hra.setHomeLauncher"

    .line 25
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "PkgName"

    .line 26
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ClassName"

    .line 27
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 29
    :cond_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    const-string p2, "HuaruianImpl set home launcher error:"

    .line 30
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 31
    :goto_2
    :try_start_3
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object p2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz p1, :cond_4

    const-string p1, "setVolAddGone"

    .line 32
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.hra.hideVolAdd"

    .line 34
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object p2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz p1, :cond_3

    const-string p1, "setVolSubGone"

    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.hra.hideVolSub"

    .line 39
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 41
    :cond_3
    throw v2

    .line 42
    :cond_4
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 43
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 44
    :goto_3
    :try_start_4
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object p2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    const-string p1, "setEnableGlobalNetwork"

    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance p1, Landroid/content/Intent;

    const-string v4, "com.hra.setEnableGlobalNetwork"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "allow"

    .line 47
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 49
    :cond_5
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    .line 50
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 51
    :goto_4
    :try_start_5
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object p2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz p1, :cond_6

    const-string p1, "setStatusBarDropDisable"

    .line 52
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hra.disableDrop"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 56
    :cond_6
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception p1

    const-string p2, "HuaruianImpl status bar error:"

    .line 57
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 58
    :goto_5
    :try_start_6
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object p2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz p1, :cond_7

    const-string p1, "setNotificationDisable"

    .line 59
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hra.notifyDisable"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    .line 63
    :cond_7
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception p1

    const-string p2, "HuaruianImpl notification error:"

    .line 64
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_6
    const-string p1, "HuaruianImpl  -- systemInit end "

    .line 65
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- actionSilentUnInstall"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "silentUninstall"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.Silence.uninstall"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "packageName"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionSilentUnInstall error : "

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public S()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableSMS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "silentInstall"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.disablemms"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableSMS error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "HuaruianImpl  -- setUrlWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    check-cast p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setNetworkWhiteList"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.hra.add_whiteList"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "whiteList"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- setUrlWhiteList : "

    .line 8
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public Y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string p1, "HuaruianImpl  -- getWifiMacAddress"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    invoke-virtual {p1}, Lcom/huawei/hem/a0;->d()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- getWifiMacAddress error : "

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const-string p1, ""

    return-object p1
.end method

.method public b0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string p1, "HuaruianImpl  -- showWifiAdvanced"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v0, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string p1, "HRA_API"

    const-string v1, "setWifiAdvanceEnable"

    .line 3
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hra.WifiReceiver"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "WIFI"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- showWifiAdvanced error : "

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 4

    const-string p1, "HRA_API"

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableSdCard"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "mountSDAndOTG"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.hra.mountSD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "setSDOTGEnable"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hra.disableSDandOTG"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "disabled"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_0
    throw v2

    .line 13
    :cond_1
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- enableSdCard error : "

    .line 14
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableBack "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setBackDisable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.disableBack"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableBack error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableBluetooth"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setBluetoothDisable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.closeBluetooth"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableBluetooth error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableCamera"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setCameraDisable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.CameraDisable"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableCamera error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableFireWall()V
    .locals 5

    const-string v0, "HRA_API"

    const-string v1, "HuaruianImpl disableFireWall"

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "HuaruianImpl  -- clearNetworkWhiteList"

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v2, :cond_0

    const-string v2, "clearNetworkWhiteList"

    .line 4
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.hra.clear_whiteList"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HuaruianImpl  -- clearNetworkWhiteList error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v2, "HuaruianImpl  -- setEnableGlobalNetwork"

    .line 10
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 11
    sget-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v1, "setEnableGlobalNetwork"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hra.setEnableGlobalNetwork"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "allow"

    .line 14
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 16
    :cond_1
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HuaruianImpl  -- setEnableGlobalNetwork error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableGPS()V
    .locals 5

    const-string v0, "HRA_API"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "HuaruianImpl  -- setGpsOff"

    .line 1
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v2, :cond_0

    const-string v2, "setGpsOff"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.hra.GPSOFF"

    .line 5
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    const-string v3, "HuaruianImpl  -- setGpsOff error : "

    .line 8
    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9
    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v2, "HuaruianImpl  -- disableGPS"

    .line 10
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 11
    sget-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v1, "disableGPS"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hra.disableGPS"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 16
    :cond_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableGPS error : "

    .line 17
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableHome()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableHome"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setHomeDisable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.disableHome"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableHome error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableMobileData()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableMobileData"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "com.hra.disabledataconnect"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableMobileData error : "

    .line 7
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->disableShortPressPower()V

    return-void
.end method

.method public disableRecent()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableRecent"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setRecentDisable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.disableRecent"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableRecent error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setScreenShotDisable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.disableScreenShot"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableScreenShot error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableShortPressPower"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setPowerKeyDisable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.disablePowerKey"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableShortPressPower error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableSpeech()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableSpeech"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "silentInstall"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.disablephone"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableSpeech error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 5

    const-string v0, "HRA_API"

    :try_start_0
    const-string v1, "HuaruianImpl  -- disableUsb"

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "setADBDisable"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.hra.closeADB"

    .line 5
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v1, "setMTPDisable"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hra.closeUSB"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_0
    throw v3

    .line 13
    :cond_1
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableUsb error : "

    .line 14
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 5

    const-string v0, "HRA_API"

    :try_start_0
    const-string v1, "HuaruianImpl  -- disableVolume"

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "setVolAddDisable"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.hra.disableVolUp"

    .line 5
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v1, "setVolSubDisable"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hra.disableVolDown"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_0
    throw v3

    .line 13
    :cond_1
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- disableVolume error : "

    .line 14
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "HuaruianImpl  -- actionDisableApp"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/huawei/hem/a0;->e(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionDisableApp error : "

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableBack"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setBackEnable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.enableBack"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableBack error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableBluetooth"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setBluetoothEnable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.openBluetooth"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableBluetooth error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableCamera"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setCameraEnable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.CameraAllow"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableCamera error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableFireWall()V
    .locals 0

    return-void
.end method

.method public enableGPS()V
    .locals 5

    const-string v0, "HRA_API"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "HuaruianImpl  -- setGpsOn"

    .line 1
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v2, :cond_0

    const-string v2, "setGpsOn"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.hra.GPSON"

    .line 5
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    const-string v3, "HuaruianImpl  -- setGpsOn error : "

    .line 8
    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9
    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v2, "HuaruianImpl  -- enableGPS"

    .line 10
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 11
    sget-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v1, "enableGPS"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hra.enableGPS"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 16
    :cond_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableGPS error : "

    .line 17
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableHome()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableHome"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setHomeEnable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.enableHome"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableHome error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableMobileData()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableMobileData"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "com.hra.enabledataconnect"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableMobileData error : "

    .line 7
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/xc;->enableShortPressPower()V

    return-void
.end method

.method public enableRecent()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableRecent"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setRecentEnable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.enableRecent"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableRecent error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setScreenShotEnable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.enableScreenShot"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableScreenShot error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableShortPressPower"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setPowerKeyEnable"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.enablePowerKey"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableShortPressPower error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableSpeech()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableSpeech"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "silentInstall"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.enablephone"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableSpeech error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 5

    const-string v0, "HRA_API"

    :try_start_0
    const-string v1, "HuaruianImpl  -- enableUsb"

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "setADBEnable"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.hra.openADB"

    .line 5
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v1, "setMTPEnable"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hra.openUSB"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_0
    throw v3

    .line 13
    :cond_1
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableUsb error : "

    .line 14
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 5

    const-string v0, "HRA_API"

    :try_start_0
    const-string v1, "HuaruianImpl  -- enableVolume"

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "setVolAddEnable"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.hra.enableVolUp"

    .line 5
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    sget-object v1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v1, "setVolSubEnable"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hra.enableVolDown"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_0
    throw v3

    .line 13
    :cond_1
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableVolume error : "

    .line 14
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- actionRebootDevice"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setDeviceReboot"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.reboot"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- actionRebootDevice error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public g0()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- enableSMS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "silentInstall"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.enablemms"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- enableSMS error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- cleanNetworkAccessAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "clearUidAppList"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.hra.clearUidAppList"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- cleanNetworkAccessAppWhiteList error : "

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h0()V
    .locals 3

    :try_start_0
    const-string v0, "HuaruianImpl  -- actionShutdown"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HRA_API"

    const-string v2, "setDeviceShutDown"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.shutdown"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- actionShutdown error : "

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public k0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaruianImpl disable apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/huawei/hem/a0;->e(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionDisableApp error : "

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string p1, "HuaruianImpl  -- hideWifiAdvanced"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v0, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string p1, "HRA_API"

    const-string v1, "setWifiAdvanceDisable"

    .line 3
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hra.WifiReceiver"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- hideWifiAdvanced error : "

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "HRA_API"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "HuaruianImpl  -- setAppWhiteList"

    .line 1
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v2, "ClearAppInstallWhiteList"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.hra.whitelist_app.clear"

    .line 5
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    sget-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    check-cast p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const-string v2, "AddAppInstallWhiteList"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hra.whitelist_app.update"

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "flag"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "packageName"

    .line 12
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 14
    :cond_0
    throw v4

    .line 15
    :cond_1
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- setAppWhiteList error : "

    .line 16
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return v1
.end method

.method public t(Z)V
    .locals 2

    :try_start_0
    const-string p1, "HuaruianImpl  -- actionResetFactory"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v0, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string p1, "HRA_API"

    const-string v1, "setFactoryReset"

    .line 3
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.hra.setFactoryReset"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionResetFactory error : "

    .line 7
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public t0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "HuaruianImpl  -- getUrlWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/a0;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaruianImpl  -- getUrlWhiteList : "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "HuaruianImpl  -- actionEnableApp"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/huawei/hem/a0;->f(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- actionEnableApp error : "

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 4

    const-string p1, "HRA_API"

    :try_start_0
    const-string v0, "HuaruianImpl  -- disableSdCard"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "unmountSDAndOTG"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.hra.unmountSD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    sget-object v0, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    sget-object v1, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "setSDOTGDisable"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hra.disableSDandOTG"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "disabled"

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_0
    throw v2

    .line 13
    :cond_1
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaruianImpl  -- disableSdCard error : "

    .line 14
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
