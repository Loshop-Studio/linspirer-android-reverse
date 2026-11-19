.class public Lcom/huawei/hem/ae;
.super Lcom/huawei/hem/jc;
.source "LenovoCSDKImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/ae;

.field public static c:Landroid/app/csdk/CSDKManager;

.field public static d:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/ae;

    invoke-direct {v0}, Lcom/huawei/hem/ae;-><init>()V

    sput-object v0, Lcom/huawei/hem/ae;->b:Lcom/huawei/hem/ae;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method

.method public static synthetic W0()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->SetEnable(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableFireWall -error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LenovoCSDKImplread fire wall status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1}, Landroid/app/csdk/CSDKManager;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImpl--readFireWall -error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public A0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl -- addDisallowedUninstallPackages "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->addUninstallPackageBlackList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- addDisallowedUninstallPackages -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public C()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableNavigationBar "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->hideNavigationBar(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableNavigationBar -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public C0()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableFileShare "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableBluetoothShare(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableFileShare -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

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

    const-string v0, "LenovoCSDKImpl -- setPersistentApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->addPersistentAppList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- setPersistentApp -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LenovoCSDKImpl -- actionSilentInstall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->installPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- actionSilentInstall -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 2

    const-string v0, "LenovoCSDKImpl -- getDeviceSN "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->getDeviceInfo(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- getDeviceSN -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const-string v0, ""

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

    const-string v0, "LenovoCSDKImpl -- getNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->getAppWhiteRules()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- getNetworkAccessAppWhiteList -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public H()V
    .locals 2

    :try_start_0
    const-string v0, "LenovoCSDKImpl actionDisableWifi"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disallowWifi_v3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl actionDisableWifi error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v0, "LenovoCSDKImpl open wifi"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableWifi_v3(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImpl open wifi error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public I0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl -- setNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->h()V

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->AddAppWhiteRule(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- setNetworkAccessAppWhiteList -error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_1
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LenovoCSDKImpl -- actionKillApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->killApplicationProcess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- actionKillApp -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public L(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "LenovoCSDKImpl -- actionScreenShot "

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
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1}, Landroid/app/csdk/CSDKManager;->captureScreen()Landroid/graphics/Bitmap;

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

    const-string v1, "LenovoCSDKImpl -- actionScreenShot -error:"

    .line 20
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public L0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl -- getDisallowedUninstallPackageList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->getUninstallPackageBlackList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- getDisallowedUninstallPackageList -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    const-string v0, "LenovoCSDKImpl -- getAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->getInstallPackageWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- getAppWhiteList -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public N(J)Z
    .locals 1

    const-string v0, "LenovoCSDKImpl -- setSystemTime "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/csdk/CSDKManager;->setSysTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "LenovoCSDKImpl-- setSystemTime -error:"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public N0()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableSIM "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableSIM(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableSIM -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "LenovoCSDKImpl enableWifiCaptiveV3:"

    const-string v1, "LenovoCSDKImpl -- systemInit  start"

    .line 1
    invoke-static {v1, p2}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const-string v2, "com.drupe.swd.launcher.huoshan.mdm.tool.DeviceAdmin"

    invoke-virtual {v1, v2}, Landroid/app/csdk/CSDKManager;->setDeviceOwner(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoCSDKImpl setDeviceOwner error"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string v1, "LenovoCSDKImpl -- disableDropDownMenu "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    :try_start_1
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, v1}, Landroid/app/csdk/CSDKManager;->disableStatusBarPanel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    const-string v3, "LenovoCSDKImpl-- disableDropDownMenu -error:"

    .line 6
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->C0()V

    const-string v2, "LenovoCSDKImpl -- disableStatusBarNotification "

    .line 8
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    :try_start_2
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, v1}, Landroid/app/csdk/CSDKManager;->disableStatusBarNotification(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    const-string v3, "LenovoCSDKImpl -- disableStatusBarNotification -error:"

    .line 10
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 11
    :goto_2
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->V0()V

    .line 12
    :try_start_3
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, p1, p2}, Landroid/app/csdk/CSDKManager;->setCustomLauncher(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    const-string p2, "LenovoCSDKImpl custom launcher exception:"

    .line 13
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 14
    :goto_3
    :try_start_4
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p1, v1}, Landroid/app/csdk/CSDKManager;->disableWifiDirect(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    const-string p2, "LenovoCSDKImpl disable wifi direct exception:"

    .line 15
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 16
    :goto_4
    :try_start_5
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p1, v1}, Landroid/app/csdk/CSDKManager;->setSafeModeDisabled(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    const-string p2, "LenovoCSDKImpl safe mode disable exception:"

    .line 17
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_5
    const/4 p1, 0x0

    .line 18
    :try_start_6
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->enableDevMode(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p2

    const-string v2, "LenovoCSDKImpl-- disableDeveloperMode -error:"

    .line 19
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 20
    :goto_6
    :try_start_7
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, v1}, Landroid/app/csdk/CSDKManager;->disableMultiUser(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p2

    const-string v2, "LenovoCSDKImpl-- disable MultiUser -error:"

    .line 21
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 22
    :goto_7
    :try_start_8
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, v1}, Landroid/app/csdk/CSDKManager;->disableLockScreenNotification(Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception p2

    const-string v2, "LenovoCSDKImpl -- disableLockScreenNotification -error:"

    .line 23
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 24
    :goto_8
    :try_start_9
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, v1}, Landroid/app/csdk/CSDKManager;->setRuntimePermissions(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception p2

    const-string v2, "LenovoCSDKImpl -- runtime permission -error:"

    .line 25
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 26
    :goto_9
    :try_start_a
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, v1}, Landroid/app/csdk/CSDKManager;->setAppOpsPermissions(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception p2

    const-string v2, "LenovoCSDKImpl -- app operation permission -error:"

    .line 27
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 28
    :goto_a
    :try_start_b
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/app/csdk/CSDKManager;->setLocationMode(I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception p2

    const-string v2, "LenovoCSDKImpl -- location mode  error \uff1a "

    .line 29
    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 31
    :goto_b
    :try_start_c
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, v1}, Landroid/app/csdk/CSDKManager;->enableAirplaneMode(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_c

    :catchall_c
    move-exception p2

    const-string v2, "LenovoCSDKImpl -- disableAirplaneMode -error:"

    .line 32
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 33
    :goto_c
    :try_start_d
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->setNotificationVolumeValue_v3(I)V

    .line 34
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, v1}, Landroid/app/csdk/CSDKManager;->disallowSetNotificationVolume_v3(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_d

    :catchall_d
    move-exception p2

    const-string v2, "LenovoCSDKImpldisallowSetNotificationVolume_v3 exception:"

    .line 35
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 36
    :goto_d
    :try_start_e
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->enableWifiCaptiveV3(Z)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_e

    :catchall_e
    move-exception p2

    .line 37
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 38
    :goto_e
    :try_start_f
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->enableWifiCaptive_v3(Z)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_f

    :catchall_f
    move-exception p1

    .line 39
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 40
    :goto_f
    :try_start_10
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p1, v1}, Landroid/app/csdk/CSDKManager;->disallowSwitchLauncherV3(Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    goto :goto_10

    :catchall_10
    move-exception p1

    const-string p2, "LenovoCSDKImpl disallowSwitchLauncherV3:"

    .line 41
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 42
    :goto_10
    :try_start_11
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p1, v1}, Landroid/app/csdk/CSDKManager;->disallowSwitchLauncher_v3(Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    goto :goto_11

    :catchall_11
    move-exception p1

    const-string p2, "LenovoCSDKImpl disallowSwitchLauncher_v3:"

    .line 43
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_11
    const-string p1, "LenovoCSDKImpl -- systemInit  end"

    .line 44
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public O0()V
    .locals 2

    :try_start_0
    const-string v0, "LenovoCSDKImpl actionDisableWifi"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disallowWifi_v3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl actionDisableWifi error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v0, "LenovoCSDKImpl close wifi"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableWifi_v3(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImpl close wifi error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- actionSilentUnInstall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/csdk/CSDKManager;->uninstallPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- actionSilentUnInstall -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Q0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl -- removeDisallowedUninstallPackages "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->removeUninstallPackageBlackList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- removeDisallowedUninstallPackages -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public S()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableSMS "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->allowMMS(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl--  -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public T(ZJLjava/lang/String;)V
    .locals 11

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "LenovoCSDKImpl -- actionTimingPowerOn , when = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_0
    div-long v2, p2, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    mul-long v6, v2, v0

    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    sub-long/2addr p2, v6

    .line 3
    div-long/2addr p2, v0

    div-long/2addr p2, v4

    .line 4
    sget-object v4, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v5, 0x1

    long-to-int v6, v2

    long-to-int v7, p2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/app/csdk/CSDKManager;->setBootTime(ZIIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "LenovoCSDKImpl-- actionTimingPowerOn -error:"

    .line 5
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl -- setUrlWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->ClearIpHostRules()Z

    .line 3
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->urlWhiteListWrite(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl-- setUrlWhiteList -error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public V0()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableFactory "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableFactoryReset(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableFactory -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->setCustomFASTBOOT(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableFastboot -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public W(ZJLjava/lang/String;)V
    .locals 11

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LenovoCSDKImpl -- actionTimingPowerOff , when = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_0
    div-long v2, p2, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    mul-long v6, v2, v0

    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    sub-long/2addr p2, v6

    .line 3
    div-long/2addr p2, v0

    div-long/2addr p2, v4

    .line 4
    sget-object v4, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    long-to-int v6, v2

    long-to-int v7, p2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Landroid/app/csdk/CSDKManager;->setShutDownTime(ZIIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "LenovoCSDKImpl-- actionTimingPowerOff -error:"

    .line 5
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public X()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableStatusBarPanel "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableStatusBarPanel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl-- enableStatusBarPanel -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p1, "LenovoCSDKImpl -- getWifiMacAddress "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/csdk/CSDKManager;->getDeviceInfo(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- getWifiMacAddress -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const-string p1, ""

    return-object p1
.end method

.method public a0()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl getSSIDWhiteList  "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->getWifiWhiteList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImplgetSSIDWhiteList  -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
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

    const-string p1, "LenovoCSDKImpl -- showWifiAdvanced "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/csdk/CSDKManager;->disableWifiAdvanced(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl-- showWifiAdvanced -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const-string p1, "LenovoCSDKImpl -- enableSdCard "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/csdk/CSDKManager;->enableMassStorage(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- enableSdCard -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableBack "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->hideBackSoftKey(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableBack -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableBluetooth "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableBluetooth(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableBluetooth -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableCamera "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableCamera(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableCamera -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableFireWall()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableFireWall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->SetEnable(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableFireWall -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LenovoCSDKImplread fire wall status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1}, Landroid/app/csdk/CSDKManager;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImpl--readFireWall -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableGPS()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableGPS "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableLocation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableGPS -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableLocation_v3(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableLocation_v3 false:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableHome()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableHome "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->hideHomeSoftKey(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableHome -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableMobileData()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableMobileData "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableData(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl-- disableMobileData -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableNavigation "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->disableRecent()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->disableHome()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->disableBack()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->disableVolume()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->disableShortPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableNavigation -error:"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableOTA()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableOTA "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableSystemAutoUpdate(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableOTA -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableOTG()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableOTG "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->setCustomOTG(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableOTG -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableRecent "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->hideMenuSoftKey(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableRecent -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 3

    const-string v0, "LenovoCSDKImpldisableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->allowScreenCaptureKey(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoCSDKImplallowScreenCaptureKey  -error:"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->enableCaptureScreen_v3(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImplenableCaptureScreen_v3 -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableShortPressPower "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->requestKeyControl(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableShortPressPower -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableSpeech()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disablePhone "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->allowDialer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl--  -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 4

    const-string v0, "LenovoCSDKImpl -- disableUsb -error:"

    const-string v1, "LenovoCSDKImpl -- disableUsb "

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "LenovoCSDKImpl -- enableUsbDebugging "

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, v1}, Landroid/app/csdk/CSDKManager;->enableUsbDebugging(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v2, "LenovoCSDKImpl -- setCurrentUsbMode "

    .line 5
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, v1}, Landroid/app/csdk/CSDKManager;->setCurrentUsbMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    :try_start_2
    const-string v2, "LenovoCSDKImpl -- setDefaultUsbMode "

    .line 8
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, v1}, Landroid/app/csdk/CSDKManager;->setDefaultUsbMode(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 10
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public disableVolume()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- disableVolume "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->requestKeyControl(I)Z

    .line 3
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->requestKeyControl(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableVolume -error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- actionDisableApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/csdk/CSDKManager;->setPackageEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- actionDisableApp -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableBack "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->hideBackSoftKey(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableBack -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableBluetooth "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableBluetooth(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl  -- enableBluetooth -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableCamera "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableCamera(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableCamera -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableFireWall()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableFireWall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/huawei/hem/xd;->a:Lcom/huawei/hem/xd;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public enableGPS()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableGPS "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableLocation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableGPS -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableLocation_v3(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableLocation_v3 true:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableHome()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableHome "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->hideHomeSoftKey(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableHome -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableMobileData()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableMobileData "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableData(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl-- enableMobileData -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableNavigation "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->enableRecent()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->enableHome()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->enableBack()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->enableVolume()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->enableShortPressPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableNavigation -error:"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableOTA()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableOTA "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableSystemAutoUpdate(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableOTA -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableOTG()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableOTG "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->setCustomOTG(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableOTG -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableRecent "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->hideMenuSoftKey(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableRecent -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 3

    const-string v0, "LenovoCSDKImplenableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->allowScreenCaptureKey(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoCSDKImplallowScreenCaptureKey-error:"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->enableCaptureScreen_v3(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImplenableCaptureScreen_v3 -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableShortPressPower "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->releaseKeyControl()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableShortPressPower -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableSpeech()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enablePhone "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->allowDialer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl--  -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 4

    const-string v0, "LenovoCSDKImpl -- enableUsb -error:"

    const-string v1, "LenovoCSDKImpl -- enableUsb "

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "LenovoCSDKImpl -- enableUsbDebugging "

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, v1}, Landroid/app/csdk/CSDKManager;->enableUsbDebugging(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v2, "LenovoCSDKImpl -- setCurrentUsbMode "

    .line 5
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, v1}, Landroid/app/csdk/CSDKManager;->setCurrentUsbMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    :try_start_2
    const-string v0, "LenovoCSDKImpl -- setDefaultUsbMode "

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->setDefaultUsbMode(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableUsb -error:"

    .line 10
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public enableVolume()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableVolume "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->releaseKeyControl()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl-- enableVolume -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableFactory "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableFactoryReset(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableFactory -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->setCustomFASTBOOT(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- disableFastboot -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- actionRebootDevice "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->rebootDevice()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl-- actionRebootDevice -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public g0()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableSMS "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->allowMMS(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl--  -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- cleanNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->ClearAppRules()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl-- cleanNetworkAccessAppWhiteList -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h0()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- actionShutdown "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->shutdownDevice()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- actionShutdown -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableNavigationBar "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->hideNavigationBar(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableNavigationBar -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public j0(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl removeSSIDFromWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->removeWifiWhiteList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImplremoveSSIDFromWhiteList  -error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public l(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl --  setAppWhiteWithHash"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LenovoCSDKImplenable firewall because firewall is loss efficacy"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->enableFireWall()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    :try_start_0
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/csdk/CSDKManager;->disableInstallation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const-string v3, "LenovoCSDKImpl -- disableInstallation:"

    .line 6
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 7
    :goto_1
    :try_start_1
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, p1}, Landroid/app/csdk/CSDKManager;->setAppWhiteWithHash(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    const-string v0, "LenovoCSDKImpl-- setAppWhiteWithHash -error:"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    return v1
.end method

.method public n()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableSIM "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableSIM(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableSIM -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
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

    const-string v0, "LenovoCSDKImpl -- getPersistentApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->getPersistentAppList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- getPersistentApp -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public o0()V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- enableFileShare "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disableBluetoothShare(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl -- enableFileShare -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
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

    const-string p1, "LenovoCSDKImpl -- hideWifiAdvanced "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/csdk/CSDKManager;->disableWifiAdvanced(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl-- hideWifiAdvanced -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public removePersistentApp(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl -- removePersistentApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->removePersistentAppList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- removePersistentApp -error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl -- setAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LenovoCSDKImplenable firewall because firewall is loss efficacy"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->enableFireWall()V

    :cond_0
    const/4 v0, 0x1

    .line 5
    :try_start_0
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/csdk/CSDKManager;->disableInstallation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const-string v2, "LenovoCSDKImpl -- disableInstallation:"

    .line 6
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 7
    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hem/ae;->M0()Ljava/util/List;

    move-result-object v1

    .line 9
    sget-object v2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v2, v1}, Landroid/app/csdk/CSDKManager;->removeInstallPackageWhiteList(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    const-string v2, "LenovoCSDKImpl -- removeInstallPackageWhiteList -error:"

    .line 10
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 11
    :cond_2
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/csdk/CSDKManager;->addInstallPackageWhiteList(Ljava/util/List;)V

    goto :goto_3

    .line 13
    :cond_3
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, p1}, Landroid/app/csdk/CSDKManager;->addInstallPackageWhiteList(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    const-string v1, "LenovoCSDKImpl -- setAppWhiteList -error:"

    .line 14
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_3
    return v0
.end method

.method public t(Z)V
    .locals 1

    const-string p1, "LenovoCSDKImpl -- actionResetFactory "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p1}, Landroid/app/csdk/CSDKManager;->launchFactoryReset()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- actionResetFactory -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    const-string v0, "LenovoCSDKImpl -- getUrlWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0}, Landroid/app/csdk/CSDKManager;->urlWhiteListRead()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDKImpl-- getUrlWhiteList -error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public x(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LenovoCSDKImpl addSSIDToWhiteList  "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->setWifiWhiteList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpladdSSIDToWhiteList -error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LenovoCSDKImpl -- actionEnableApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/csdk/CSDKManager;->setPackageEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- actionEnableApp -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 1

    const-string p1, "LenovoCSDKImpl -- disableSdCard "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/csdk/CSDKManager;->enableMassStorage(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDKImpl -- disableSdCard -error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
