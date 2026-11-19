.class public Lcom/huawei/hem/q4;
.super Lcom/huawei/hem/r4;
.source "BaseLoginRequestHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public executeLoginSuccessLogic(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/TacticsHelper;->getInstance()Lcom/android/launcher3/network/TacticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/TacticsHelper;->request()V

    .line 2
    invoke-static {p1}, Lcom/android/launcher3/network/ControlAppHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/network/ControlAppHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/ControlAppHelper;->request()V

    .line 3
    invoke-static {}, Lcom/android/launcher3/network/HiScreenHelper;->getInstance()Lcom/android/launcher3/network/HiScreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/HiScreenHelper;->updateScreenSettings()V

    .line 4
    invoke-static {}, Lcom/android/launcher3/network/UrlWhiteHelper;->getInstance()Lcom/android/launcher3/network/UrlWhiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/UrlWhiteHelper;->request()V

    .line 5
    invoke-static {}, Lcom/android/launcher3/network/GreenBrowWebHelper;->getInstances()Lcom/android/launcher3/network/GreenBrowWebHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/GreenBrowWebHelper;->handle()V

    .line 6
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableNavigation()V

    .line 7
    const-class v0, Lcom/android/launcher3/LauncherNew;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-static {}, Lcom/android/launcher3/network/WallpaperHelper;->getInstance()Lcom/android/launcher3/network/WallpaperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/WallpaperHelper;->startCheck()V

    .line 9
    invoke-static {}, Lcom/huawei/hem/r5;->a()Lcom/huawei/hem/r5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/r5;->b()V

    .line 10
    invoke-static {p1}, Lcom/huawei/hem/u4;->c(Landroid/content/Context;)Lcom/huawei/hem/u4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/u4;->d()V

    .line 11
    invoke-static {}, Lcom/android/launcher3/network/DeviceInfoUploadHelper;->uploadInfo()V

    .line 12
    invoke-static {}, Lcom/android/launcher3/network/LicenseHelper;->getInstance()Lcom/android/launcher3/network/LicenseHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/launcher3/network/LicenseHelper;->startCheck(Landroid/content/Context;ZZ)Z

    .line 13
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->request()V

    .line 14
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordAccountLogin()V

    return-void
.end method

.method public saveUserDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/launcher3/db/provider/UserDeviceInfoProvider;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "user_id"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "user_name"

    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "school_id"

    .line 6
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "39012547-95DA-7CC3-F38A-D7ADC6161529"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/bc;->l(I)Ljavax/crypto/Cipher;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hem/eo;->f([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p4, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "logoutold throwable:"

    .line 11
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "logoutold exception:"

    .line 12
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "loginold two:"

    .line 13
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "loginold one:"

    .line 14
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    :goto_0
    const-string p1, "swdid"

    .line 15
    invoke-virtual {v1, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/android/launcher3/db/provider/UserDeviceInfoProvider$a;->a:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
