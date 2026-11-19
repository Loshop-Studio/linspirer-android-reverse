.class public Lcom/huawei/hem/sd;
.super Lcom/huawei/hem/rd;
.source "HuaweiEmui11Impl.java"


# static fields
.field public static r:Lcom/huawei/hem/sd;

.field public static s:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hem/rd;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sput-object p1, Lcom/huawei/hem/sd;->s:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 2

    :try_start_0
    const-string v0, "HuaweiEmui11Impl ---clearLauncher start"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceControlManager;->clearDefaultLauncher(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiEmui11Impl ---clearLauncher error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public J0(IZ)V
    .locals 2

    const-string v0, "HuaweiEmui11Impl  -- enableEyeProtect"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/android/app/admin/DeviceControlManager;->turnOnEyesProtect(Landroid/content/ComponentName;IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HuaweiEmui11Impl  -- enableEyeProtect-error:"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public K()V
    .locals 3

    const-string v0, "HuaweiEmui11Impl  -- disableFingerSenseCapture"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingersense_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiEmui11Impl  -- disableFingerSenseCapture-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
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

    const-string v0, "HuaweiEmui11Impl  -- getAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DevicePackageManager;->getInstallPackageTrustList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiEmui11Impl  -- getAppWhiteList-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "HuaweiEmui11Impl ----system init start"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/huawei/hem/rd;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hem/rd;->c1(Ljava/lang/String;)Z

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/huawei/hem/qd;->p(Z)I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 5
    :try_start_0
    sget-object p2, Lcom/huawei/hem/sd;->s:Landroid/content/pm/PackageManager;

    const-string v0, "com.bjbyhd.screenreader_huawei"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string v0, "HuaweiEmui11Impl ---setComponentEnabledSetting error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p2}, Lcom/huawei/hem/qd;->p(Z)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 8
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v1, "com.huawei.HwMultiScreenShot"

    const-string v2, "com.huawei.screenshot.PhotoEditorActivity"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 9
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v1, "com.android.gallery3d"

    const-string v2, "com.huawei.gallery.app.SinglePhotoActivity"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 10
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v2, "com.huawei.videoeditor"

    const-string v3, "com.huawei.videoeditor.storytemplate.StoryTemplateActivity"

    invoke-static {v2, v3, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 11
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v2, "com.huawei.photos.feature.collages.SelectMaterialActivity"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 12
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v2, "com.huawei.gallery.app.SelectSlotAlbumActivity"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 13
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.InstalledAppDetails"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 14
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v1, "com.huawei.systemmanager"

    const-string v2, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 15
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v2, "com.huawei.systemmanager.mainscreen.MainScreenActivity"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 16
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v1, "com.huawei.security.privacycenter"

    const-string v2, "com.huawei.security.puremode.PureModeActivity"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    .line 17
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    const-string v1, "com.huawei.aod"

    const-string v2, "com.huawei.aod.ui.AODSettingsActivity"

    invoke-static {v1, v2, p0, v0}, Lcom/huawei/hem/f6;->y(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/sd;Landroid/content/Context;)V

    :cond_1
    :try_start_1
    const-string v0, "HuaweiEmui11Impl enable_magazinelock_feature"

    .line 18
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_magazinelock_feature"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    const-string v0, "HuaweiEmui11Impl enable_magazinelock_feature-error:"

    .line 20
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    :try_start_2
    const-string p2, "HuaweiEmui11Impl disable quick tools"

    .line 21
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 22
    sget-object p2, Lcom/huawei/hem/qd;->n:Lcom/huawei/android/app/admin/DevicePasswordManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p2, v0, p1}, Lcom/huawei/android/app/admin/DevicePasswordManager;->setQuickToolsDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    const-string v0, "HuaweiEmui11Impl disable quick tools-error:"

    .line 23
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 24
    :goto_2
    :try_start_3
    sget-object p2, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p2, v0, p1}, Lcom/huawei/android/app/admin/DeviceControlManager;->setMediaControlDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    const-string v0, "HuaweiEmui11Impl setadduserdisable-error:"

    .line 25
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 26
    :goto_3
    invoke-virtual {p0}, Lcom/huawei/hem/sd;->f1()V

    .line 27
    :try_start_4
    sget-object p2, Lcom/huawei/hem/qd;->b:Landroid/app/admin/DevicePolicyManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p2, v0, p1}, Landroid/app/admin/DevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    const-string p2, "HuaweiEmui11Impl --actionAppPermission-error:"

    .line 28
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 29
    :goto_4
    invoke-virtual {p0}, Lcom/huawei/hem/sd;->K()V

    const-string p1, "HuaweiEmui11Impl "

    const-string p2, "sysyem init end"

    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p1, p2}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public P0(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiEmui11Impl  -- removeSuperWhiteListForSys"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.launcher3"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "com.ndwill.swd.appstore"

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    sget-object v0, Lcom/huawei/hem/qd;->l:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->removeSuperTrustListForHwSystemManger(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiEmui11Impl  -- removeSuperWhiteListForSys-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string p1, "HuaweiEmui11Impl ---actionActiveDeviceAdmin"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Lcom/huawei/android/app/admin/DeviceControlManager;->setForcedActiveDeviceAdmin(Landroid/content/ComponentName;Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HuaweiEmui11Impl ---actionActiveDeviceAdmin error:"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string p1, "HuaweiEmui11Impl ---setDefaultLauncher start"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object p2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const-string v0, "com.android.launcher3"

    const-string v1, "com.android.launcher3.LauncherNew"

    invoke-virtual {p1, p2, v0, v1}, Lcom/huawei/android/app/admin/DeviceControlManager;->setDefaultLauncher(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.huawei.android.launcher"

    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hem/qd;->J(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HuaweiEmui11Impl ---setDefaultLauncher error:"

    .line 4
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiEmui11Impl  -- setSuperWhiteListForSys"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaweiEmui11Impl  -- \u8bbe\u7f6e\u53ef\u4fe1\u4efb\u5e94\u7528:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/qd;->l:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->setSuperTrustListForHwSystemManger(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    :cond_0
    const-string p1, "HuaweiEmui11Impl  -- setSuperWhiteListForSys for hw system manager"

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiEmui11Impl  -- setSuperWhiteListForSys-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public d0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HuaweiEmui11Impl  disableAppByAndroidNative   "

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/sd;->s:Landroid/content/pm/PackageManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiEmui11Impl ---disableAppByAndroidNative error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 5

    const-string v0, "HuaweiEmui11Impl  -- disableUsb-error1 = "

    const/4 v1, 0x1

    .line 1
    :try_start_0
    sget-object v2, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v3, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setAdbDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v2, "HuaweiEmui11Impl --- disableUsb turnOnUsbDebugMode:"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v3, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/app/admin/DeviceControlManager;->turnOnUsbDebugMode(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    const-string v3, "HuaweiEmui11Impl ---disableUsb turnOnUsbDebugMode-error:"

    .line 5
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_1
    :try_start_2
    sget-object v2, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v3, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public e0()Z
    .locals 2

    :try_start_0
    const-string v0, "HuaweiEmui11Impl ---isForcedActiveDeviceAdmin"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceControlManager;->isForcedActiveDeviceAdmin(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiEmui11Impl ---isForcedActiveDeviceAdmin error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return v0
.end method

.method public e1(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    sget-object v2, Lcom/huawei/hem/rd;->q:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/huawei/hem/bc;->o(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "HuaweiEmui11Impl read install list:"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-object v0
.end method

.method public enableUsb()V
    .locals 4

    const-string v0, "HuaweiEmui11Impl  -- disableUsb-error1 = "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v3, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v2, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v3, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setAdbDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    :try_start_2
    const-string v0, "HuaweiEmui11Impl --- enable turnOnUsbDebugMode:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceControlManager;->turnOnUsbDebugMode(Landroid/content/ComponentName;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v1, "HuaweiEmui11Impl ---enable turnOnUsbDebugMode-error:"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public f1()V
    .locals 3

    :try_start_0
    const-string v0, "HuaweiEmui11Impl =====setModifyDeviceNameDisabled===="

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setModifyDeviceNameDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiEmui11Impl --setModifyDeviceNameDisabled-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/sd;->e1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaweiEmui11Impl  enableAppsByAndroidNative  packageName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    check-cast p1, Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/huawei/hem/sd;->s:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiEmui11Impl ---enableAppsByAndroidNative error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
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

    const-string v0, "HuaweiEmui11Impl  -- setAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hem/sd;->M0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DevicePackageManager;->removeInstallPackageTrustList(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->addInstallPackageTrustList(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HuaweiEmui11Impl  -- set app white list end:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huawei/hem/sd;->M0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiEmui11Impl  -- setAppWhiteList-error:"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public u()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "HuaweiEmui11Impl  -- getSuperWhiteListForSys"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->l:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->getSuperTrustListForHwSystemManger(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiEmui11Impl  -- getSuperWhiteListForSys-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public u0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/sd;->e1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "HuaweiEmui11Impl  disableAppsByAndroidNative  packageName "

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    check-cast p1, Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/huawei/hem/sd;->s:Landroid/content/pm/PackageManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiEmui11Impl ---disableAppByAndroidNative error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HuaweiEmui11Impl  enableAppByAndroidNative   "

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/sd;->s:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiEmui11Impl ---disableAppByAndroidNative error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
