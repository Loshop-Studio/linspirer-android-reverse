.class public Lcom/huawei/hem/be;
.super Lcom/huawei/hem/jc;
.source "LenovoImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/be;

.field public static c:Landroid/app/mia/MiaMdmPolicyManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/be;

    invoke-direct {v0}, Lcom/huawei/hem/be;-><init>()V

    sput-object v0, Lcom/huawei/hem/be;->b:Lcom/huawei/hem/be;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method

.method public static synthetic V0()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->urlSetEnable(Z)Z

    const-string v1, "LenovoImpl  -1- enableFireWall"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoImpl  -1- enableFireWall exception = "

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->SetEnable(Z)Z

    const-string v0, " -2- enableFireWall"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoImpl  -2- enableFireWall exception = "

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public E0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LenovoImpl  -- setPersistentApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/mia/MiaMdmPolicyManager;->forceStopPackageWhiteListWrite(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- set persistent exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LenovoImpl  -- actionSilentInstall , path = "

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LenovoImpl  silent install :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/mia/MiaMdmPolicyManager;->silentInstall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- actionSilentInstall exception:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
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

    const-string v0, "LenovoImpl  -- getNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0}, Landroid/app/mia/MiaMdmPolicyManager;->APPIPWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- get network app white list exception"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/mia/MiaMdmPolicyManager;->AddAppWhiteRule(Ljava/lang/String;)Z

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LenovoImpl  -- setNetworkAccessAppWhiteList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- set network app white list exception"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LenovoImpl  -- actionKillApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/mia/MiaMdmPolicyManager;->killApplicationProcess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- actionKillApp error = "

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public L(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "LenovoImpl  -- actionScreenShot "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "/mnt/sdcard/Screenshots/"

    :cond_0
    const-string v0, "Screenshot_"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    :try_start_0
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1}, Landroid/app/mia/MiaMdmPolicyManager;->getMiaScreen()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 12
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v0

    .line 13
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 15
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    return-object p1

    .line 16
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 17
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catch_3
    move-exception v1

    .line 18
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :goto_5
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    const-string v1, "LenovoImpl  -- actionScreenShot error : "

    .line 20
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    return-object v0
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

    const-string v0, "LenovoImpl  -- getAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0}, Landroid/app/mia/MiaMdmPolicyManager;->appWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- get app white exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public N(J)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " -- setSystemTime"

    .line 4
    invoke-static {p2}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 5
    :try_start_0
    sget-object p2, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {p2, p1}, Landroid/app/mia/MiaMdmPolicyManager;->updateSystemTime(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "LenovoImpl  -- set system time exception: "

    .line 6
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p2, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {p2, p1}, Landroid/app/mia/MiaMdmPolicyManager;->setCustomLauncher(Ljava/lang/String;)Z

    const-string p1, "LenovoImpl  -- setDefaultLauncher"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "LenovoImpl  -- setDefaultLauncher exception : "

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    .line 4
    :try_start_1
    sget-object p2, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {p2, p1}, Landroid/app/mia/MiaMdmPolicyManager;->setNotificationVolumeValue_v3(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    const-string v0, "LenovoImpl  -- setNotificationVolumeValue_v3 exception:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_1
    :try_start_2
    sget-object p2, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {p2, p1}, Landroid/app/mia/MiaMdmPolicyManager;->disallowSetNotificationVolume_v3(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    const-string p2, "LenovoImpl  -- disallowSetNotificationVolume_v3 exception:"

    .line 7
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LenovoImpl  -- actionSilentUnInstall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/mia/MiaMdmPolicyManager;->silentUnInstall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- actionSilentUnInstall exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public S()V
    .locals 2

    const-string v0, "LenovoImpl  -- disableSMS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setSIMStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableSMS exception: "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LenovoImpl enable firewall because firewall is loss efficacy"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/be;->enableFireWall()V

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0}, Landroid/app/mia/MiaMdmPolicyManager;->ClearURLListRules()Z

    const-string v0, "LenovoImpl ClearURLListRules"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl ====>LenovoImpl ClearURLListRules (*) exception:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 7
    :goto_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "*"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->urlBlackListWrite(Ljava/util/List;)Z

    const-string v0, "LenovoImpl ====>LenovoImpl urlBlackListWrite (*)"

    .line 10
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoImpl ====>LenovoImpl urlBlackListWrite (*) exception:"

    .line 11
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    :try_start_2
    const-string v0, "LenovoImpl  -- setUrlWhiteList "

    .line 12
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/mia/MiaMdmPolicyManager;->urlWhiteListWrite(Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    const-string v0, "LenovoImpl  -- setUrlWhiteList exception:"

    .line 14
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public Y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p1, "LenovoImpl  -- getWifiMacAddress "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {p1}, Landroid/app/mia/MiaMdmPolicyManager;->getWifiStatus()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- getWifiMacAddress error = "

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "LenovoImpl  -- showWifiAdvanced "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setWifiProxy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- showWifiAdvanced exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const-string v0, "LenovoImpl  -- enableSdCard "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "Lenovo TAB 2 A10-70F"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Lenovo2A8-50F_iflytek"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Lenovo2A8-50F"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setTFcard(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, " -- enableSdCard exception:"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setBackKey(Z)V

    const-string v0, "LenovoImpl  -- lenovo new disableBack"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- new disableBack  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->allowBluetoothDataTransfer(Z)Z

    const-string v0, "LenovoImpl  -- new interface disableBluetooth"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- new disableBluetooth exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 2

    const-string v0, "LenovoImpl  -- disableCamera "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setCamera(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableCamera exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableFireWall()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->urlSetEnable(Z)Z

    const-string v1, "LenovoImpl  -1- disableFireWall"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoImpl  -1- disableFireWall exception = "

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->SetEnable(Z)Z

    const-string v0, "LenovoImpl  -2- disableFireWall"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoImpl  -2- disableFireWall exception = "

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableGPS()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setGps(Z)Z

    const-string v0, "LenovoImpl  -- disableGPS "

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableGPS exception: "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setHomeKey(Z)V

    const-string v0, "LenovoImpl  -- lenovo new disableHome"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- new disableHome  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 2

    :try_start_0
    const-string v0, "LenovoImpl  -- disableLongPressPower"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setPowerLongPressKey(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableLongPressPower exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableMobileData()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->mobileData(Z)V

    const-string v0, "LenovoImpl  -- disableMobileData"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableMobileData exception: "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setNavigaBar(Z)V

    const-string v0, "LenovoImpl  -- old interface disableNavigation"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- old disableNavigation  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hem/be;->disableRecent()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/be;->disableHome()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/be;->disableBack()V

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hem/be;->disableVolume()V

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hem/be;->disableShortPressPower()V

    return-void
.end method

.method public disableOTA()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setOTA(Z)V

    const-string v0, "LenovoImpl  -- disableOTA"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableOTA exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableOTG()V
    .locals 2

    const-string v0, "LenovoImpl  -- disableOTG"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setOTG(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableOTG-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setRecentKey(Z)V

    const-string v0, "LenovoImpl  -- disableRecent"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableRecent  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 5

    const-string v0, "LenovoImpl  -- disableScreenShot error: "

    const-string v1, "LenovoImpl  -- disableScreenShot "

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/mia/MiaMdmPolicyManager;->enableCaptureScreen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/mia/MiaMdmPolicyManager;->setScreenCaptureKey(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setPowerSingleClickKey(Z)V

    const-string v0, "LenovoImpl  -- disableShortPressPower"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableShortPressPower exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableSpeech()V
    .locals 2

    const-string v0, "LenovoImpl  -- disableSpeech "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setSIMStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableSpeech exception: "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 2

    const-string v0, "LenovoImpl  -- disableUsb "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setUsbOnlyCharging(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- disableUsb exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setVoiceSize(Z)V

    const-string v1, "LenovoImpl  -- old interface disableVolume"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoImpl  -- old disableVolume  exception:"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setVolumeupKey(Z)V

    .line 5
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setVolumedownKey(Z)V

    const-string v0, "LenovoImpl  -- new interface disableVolume"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoImpl  -- new disableVolume  exception:"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LenovoImpl  -- actionDisableApp = "

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/mia/MiaMdmPolicyManager;->controlApp(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- actionDisableApp app exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setBackKey(Z)V

    const-string v0, "LenovoImpl  -- lenovo new enableBack"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- new enableBack  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->allowBluetoothDataTransfer(Z)Z

    const-string v0, "LenovoImpl  -- new interface enableBluetooth"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- new enableBluetooth exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 2

    const-string v0, "LenovoImpl  -- enableCamera "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setCamera(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableCamera exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableFireWall()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/huawei/hem/yd;->a:Lcom/huawei/hem/yd;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public enableGPS()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setGps(Z)Z

    const-string v0, "LenovoImpl  -- enableGPS "

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableGPS exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setHomeKey(Z)V

    const-string v0, "LenovoImpl  -- lenovo new enableHome"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- new enableHome  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setPowerLongPressKey(Z)V

    const-string v0, "LenovoImpl  -- enableLongPressPower "

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableLongPressPower exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableMobileData()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->mobileData(Z)V

    const-string v0, "LenovoImpl  -- enableMobileData"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableMobileData exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setNavigaBar(Z)V

    const-string v0, "LenovoImpl  -- old interface enableNavigation"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- old enableNavigation  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hem/be;->enableRecent()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/be;->enableHome()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/be;->enableBack()V

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hem/be;->enableVolume()V

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hem/be;->enableShortPressPower()V

    return-void
.end method

.method public enableOTA()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setOTA(Z)V

    const-string v0, "LenovoImpl  -- enableOTA"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableOTA exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableOTG()V
    .locals 2

    const-string v0, "LenovoImpl  -- enableOTG"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setOTG(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableOTG-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setRecentKey(Z)V

    const-string v0, "LenovoImpl  -- enableRecent"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableRecent  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 5

    const-string v0, "LenovoImpl  -- enableScreenShot error: "

    const-string v1, "LenovoImpl  -- enableScreenShot "

    const/4 v2, 0x1

    .line 1
    :try_start_0
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/mia/MiaMdmPolicyManager;->enableCaptureScreen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/mia/MiaMdmPolicyManager;->setScreenCaptureKey(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setPowerSingleClickKey(Z)V

    const-string v0, "LenovoImpl  -- enableShortPressPower"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableShortPressPower exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableSpeech()V
    .locals 2

    const-string v0, "LenovoImpl  -- enableSpeech "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setSIMStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableSpeech exception: "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 2

    const-string v0, "LenovoImpl  -- enableUsb "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setUsbOnlyCharging(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableUsb exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setVoiceSize(Z)V

    const-string v1, "LenovoImpl  -- old interface enableVolume"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoImpl  -- old enableVolume  exception:"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setVolumeupKey(Z)V

    .line 5
    sget-object v1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setVolumedownKey(Z)V

    const-string v0, "LenovoImpl  -- new interface enableVolume"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoImpl  -- new enableVolume  exception:"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public g0()V
    .locals 2

    const-string v0, "LenovoImpl  -- enableSMS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mia/MiaMdmPolicyManager;->setSIMStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- enableSMS exception: "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0}, Landroid/app/mia/MiaMdmPolicyManager;->ClearAppRules()Z

    const-string v0, "LenovoImpl  -- cleanNetworkAccessAppWhiteList"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- clear network app white list exception : "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h0()V
    .locals 2

    const-string v0, "LenovoImpl  -- actionShutdown "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0}, Landroid/app/mia/MiaMdmPolicyManager;->shutDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- actionShutdown error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public l(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "LenovoImpl  -- setAppWhiteWithHash "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setAppWhiteList(Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/mia/MiaMdmPolicyManager;->setAppWhiteList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- set app white with hash exception:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "LenovoImpl  -- getPersistentApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0}, Landroid/app/mia/MiaMdmPolicyManager;->forceStopPackageWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- read persistent exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "LenovoImpl  -- hideWifiAdvanced "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setWifiProxy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- hideWifiAdvanced exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/mia/MiaMdmPolicyManager;->appWhiteListWrite(Ljava/util/List;)Z

    move-result p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LenovoImpl  -- setAppWhiteList , result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- set app white exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 1

    const-string p1, "LenovoImpl  -- actionResetFactory "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {p1}, Landroid/app/mia/MiaMdmPolicyManager;->masterClearInbulitSD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- reset factory exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    const-string v0, "LenovoImpl  -- getUrlWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    invoke-virtual {v0}, Landroid/app/mia/MiaMdmPolicyManager;->urlWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoImpl  -- get url white list exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LenovoImpl  -- actionEnableApp = "

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/mia/MiaMdmPolicyManager;->controlApp(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- actionEnableApp app exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 1

    const-string v0, "LenovoImpl  -- disableSdCard "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "Lenovo TAB 2 A10-70F"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Lenovo2A8-50F_iflytek"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Lenovo2A8-50F"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/mia/MiaMdmPolicyManager;->setTFcard(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoImpl  -- disableSdCard exception:"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_2
    :goto_0
    return-void
.end method
