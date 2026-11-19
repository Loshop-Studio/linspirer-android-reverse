.class public Lcom/huawei/hem/s5;
.super Ljava/lang/Object;
.source "CounterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/s5$b;
    }
.end annotation


# static fields
.field public static c:J


# instance fields
.field public a:Lcom/huawei/hem/ac;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/s5$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/s5;->b:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/huawei/hem/ac;

    const-string v1, "Counter"

    invoke-direct {v0, p1, v1}, Lcom/huawei/hem/ac;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/huawei/hem/s5;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    sput-wide v0, Lcom/huawei/hem/s5;->c:J

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "CounterUtil click too fast no need count."

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 6
    iget-object v0, v0, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v1, "other_times"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 8
    iget-object v2, v2, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v5, "wallpaper_times"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 9
    iget-object v6, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 10
    iget-object v6, v6, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v7, "mdm_times"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 11
    iget-object v8, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 12
    iget-object v8, v8, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v9, "control_app_times"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v0, v3

    add-int/2addr v2, v3

    add-int/2addr v6, v3

    add-int/2addr v8, v3

    .line 13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CounterUtil time counter:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " wallpaper times:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mdm times:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/16 v10, 0x3c

    if-eq v0, v10, :cond_3

    .line 14
    iget-object v10, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 15
    iget-object v11, v10, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 16
    iget-object v1, v10, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 17
    :cond_3
    iget-object v10, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 18
    iget-object v11, v10, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    iget-object v1, v10, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    const/16 v1, 0xa

    if-eq v6, v1, :cond_4

    .line 20
    iget-object v1, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 21
    iget-object v10, v1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 22
    iget-object v1, v1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 24
    iget-object v10, v1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    iget-object v1, v1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    const/16 v1, 0x64

    if-eq v2, v1, :cond_5

    .line 26
    iget-object v7, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 27
    iget-object v10, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object v5, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 29
    :cond_5
    iget-object v7, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 30
    iget-object v10, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object v5, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_3
    const/16 v5, 0x50

    if-eq v8, v5, :cond_6

    .line 32
    iget-object v7, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 33
    iget-object v10, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object v7, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 35
    :cond_6
    iget-object v7, p0, Lcom/huawei/hem/s5;->a:Lcom/huawei/hem/ac;

    .line 36
    iget-object v10, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10, v9, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object v7, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    :goto_4
    rem-int/lit8 v7, v6, 0xa

    if-nez v7, :cond_7

    const-string v7, "CounterUtil  action reach need pull tactics"

    .line 39
    invoke-static {v7}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/android/launcher3/network/TacticsHelper;->getInstance()Lcom/android/launcher3/network/TacticsHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/network/TacticsHelper;->request()V

    .line 41
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/network/AppTimeLimitHelper;->request()V

    .line 42
    :cond_7
    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_8

    const-string v6, "CounterUtil  action reach need pull url white list"

    .line 43
    invoke-static {v6}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/android/launcher3/network/UrlWhiteHelper;->getInstance()Lcom/android/launcher3/network/UrlWhiteHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/network/UrlWhiteHelper;->request()V

    .line 45
    :cond_8
    rem-int/lit8 v6, v0, 0x3c

    if-nez v6, :cond_9

    const-string v6, "CounterUtil  action reach need check license"

    .line 46
    invoke-static {v6}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/android/launcher3/network/LicenseHelper;->getInstance()Lcom/android/launcher3/network/LicenseHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hem/s5;->b:Landroid/content/Context;

    invoke-virtual {v6, v7, v4, v3}, Lcom/android/launcher3/network/LicenseHelper;->startCheck(Landroid/content/Context;ZZ)Z

    .line 48
    :cond_9
    rem-int/lit8 v4, v0, 0xf

    if-nez v4, :cond_a

    const-string v4, "CounterUtil  action reach need upload installed apps"

    .line 49
    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/android/launcher3/network/UploadAppHelper;->getInstance()Lcom/android/launcher3/network/UploadAppHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/network/UploadAppHelper;->checkAndUpload()V

    .line 51
    :cond_a
    rem-int/2addr v2, v1

    if-nez v2, :cond_b

    const-string v1, "CounterUtil  action reach need check wallpaper"

    .line 52
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/android/launcher3/network/WallpaperHelper;->getInstance()Lcom/android/launcher3/network/WallpaperHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/network/WallpaperHelper;->startCheck()V

    .line 54
    :cond_b
    rem-int/lit8 v1, v0, 0x15

    const-string v2, "CounterUtil  action reach need check component"

    if-ne v1, v3, :cond_c

    .line 55
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/huawei/hem/r5;->a()Lcom/huawei/hem/r5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hem/r5;->b()V

    .line 57
    :cond_c
    rem-int/lit8 v1, v0, 0x10

    const/16 v3, 0xc

    if-ne v1, v3, :cond_d

    .line 58
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/android/launcher3/network/GreenBrowWebHelper;->getInstances()Lcom/android/launcher3/network/GreenBrowWebHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/network/GreenBrowWebHelper;->handle()V

    .line 60
    :cond_d
    rem-int/lit8 v0, v0, 0x11

    if-nez v0, :cond_e

    const-string v0, "CounterUtil  action reach need check sougou input setting"

    .line 61
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/huawei/hem/s5;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hem/u4;->c(Landroid/content/Context;)Lcom/huawei/hem/u4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/u4;->d()V

    .line 63
    :cond_e
    rem-int/2addr v8, v5

    if-nez v8, :cond_f

    const-string v0, "CounterUtil  action reach need  request control app "

    .line 64
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/huawei/hem/s5;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/network/ControlAppHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/network/ControlAppHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/ControlAppHelper;->request()V

    :cond_f
    return-void
.end method
