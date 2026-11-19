# RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。
.class public Lcom/android/launcher3/network/TacticsHelper;
.super Ljava/lang/Object;
.source "TacticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/TacticsHelper$TacticsHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TacticsHelper "

.field public static sendTime:J


# instance fields
.field public gesturePwdDao:Lcom/android/launcher3/db/model/GesturePasswordDao;

.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public mustInstallApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;"
        }
    .end annotation
.end field

.field public userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 7
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->mHttpCore:Lcom/huawei/hem/rb;

    .line 8
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/t3;->e()Lcom/android/launcher3/db/model/GesturePasswordDao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->gesturePwdDao:Lcom/android/launcher3/db/model/GesturePasswordDao;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->mustInstallApps:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/TacticsHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/TacticsHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TacticsHelper  -- hem msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- msgCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/TacticsHelper;Lcom/android/launcher3/model/LTKTactics;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/TacticsHelper;->handelTactics(Lcom/android/launcher3/model/LTKTactics;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/network/TacticsHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkAppMustUpdate(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/ItemApp;

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ItemApp;->getVersioncode()I

    move-result v0

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x2000

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v0, :cond_1

    const/4 v3, 0x1

    :catch_0
    :cond_1
    if-nez v3, :cond_0

    const-string p1, "TacticsHelper have must installed app need notify appstore"

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hem/o5;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private checkHemActive()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hem/license/HemLicenseManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hem/license/HemLicenseManager;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/huawei/hem/d5;->a:Lcom/huawei/hem/d5;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/license/HemLicenseManager;->setStatusListener(Lcom/huawei/hem/license/HemLicenseStatusListener;)V

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hem/license/HemLicenseManager;->activeLicense()Lcom/huawei/hem/w7;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/network/TacticsHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/TacticsHelper$TacticsHolder;->access$000()Lcom/android/launcher3/network/TacticsHelper;

    move-result-object v0

    return-object v0
.end method

.method private handelTactics(Lcom/android/launcher3/model/LTKTactics;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getWorkspace_tactics()Lcom/android/launcher3/model/WorkTimeTactics;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->isWorkspace_status()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/network/TacticsHelper;->handleWorkspace(Lcom/android/launcher3/model/WorkTimeTactics;Z)V

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->isApp_status()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getApp_tactics()Lcom/android/launcher3/model/TacticApp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getInterest_applist()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/network/TacticsHelper;->handleAppTactics(ZLcom/android/launcher3/model/TacticApp;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/LTKTactics;->setTotalApps(Ljava/util/List;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->isDevice_status()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getDevice_tactics()Lcom/android/launcher3/model/TacticDevice;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/network/TacticsHelper;->handleDeviceTactics(ZLcom/android/launcher3/model/TacticDevice;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getDevice_setting()Lcom/android/launcher3/model/DeviceSetting;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getRelease_control()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/network/TacticsHelper;->handleDeviceSetting(Lcom/android/launcher3/model/DeviceSetting;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/TacticsHelper;->saveTactics(Lcom/android/launcher3/model/LTKTactics;)V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hem/y4;->F(Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    const-string v1, "send  refresh appstore broadcast"

    .line 9
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v1, "com.drupe.swd.launcher.action.whiteappupdate"

    .line 10
    invoke-static {v0, v1}, Lcom/huawei/hem/y4;->R(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->mustInstallApps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/launcher3/network/TacticsHelper;->checkAppMustUpdate(Ljava/util/List;)V

    .line 12
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getWifi_tactics()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->isWifi_status()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/TacticsHelper;->handleWifiTactics(Ljava/util/ArrayList;Z)V

    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private handleAppIconStatus(Lcom/android/launcher3/model/DeviceSetting;I)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getGallery_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getCamera_status()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getLogout_status()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getAlarm_clock_status()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getCalendar_status()I

    move-result v4

    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getHide_cleanup_status()I

    move-result v5

    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getAllow_change_password_status()I

    move-result v6

    .line 8
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getRotate_setting_status()I

    move-result p1

    .line 9
    iget-object v7, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 10
    iget v8, v7, Lcom/huawei/hem/y5;->Z:I

    if-eq v8, v5, :cond_0

    .line 11
    iget-object v8, v7, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 12
    iget-object v9, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v10, "cleanup_status"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object v8, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 14
    iput v5, v7, Lcom/huawei/hem/y5;->Z:I

    .line 15
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 16
    iget v8, v7, Lcom/huawei/hem/y5;->W:I

    if-eq v8, v0, :cond_1

    .line 17
    iget-object v8, v7, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 18
    iget-object v9, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v10, "gallery_status"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    iget-object v8, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    iput v0, v7, Lcom/huawei/hem/y5;->W:I

    .line 21
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 22
    iget v8, v7, Lcom/huawei/hem/y5;->V:I

    if-eq v8, v1, :cond_2

    .line 23
    iget-object v8, v7, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 24
    iget-object v9, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v10, "camera_status"

    invoke-interface {v9, v10, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    iget-object v8, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    iput v1, v7, Lcom/huawei/hem/y5;->V:I

    .line 27
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 28
    iget v8, v7, Lcom/huawei/hem/y5;->X:I

    if-eq v8, v3, :cond_3

    .line 29
    iget-object v8, v7, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 30
    iget-object v9, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v10, "alarm_clock_status"

    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object v8, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    iput v3, v7, Lcom/huawei/hem/y5;->X:I

    .line 33
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 34
    iget v8, v7, Lcom/huawei/hem/y5;->Y:I

    if-eq v8, v4, :cond_4

    .line 35
    iget-object v8, v7, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 36
    iget-object v9, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v10, "calendar_status"

    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object v8, v8, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    iput v4, v7, Lcom/huawei/hem/y5;->Y:I

    .line 39
    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 40
    iget v8, v7, Lcom/huawei/hem/y5;->i:I

    const-string v9, "logout_status"

    if-eq v8, v2, :cond_5

    .line 41
    iput v2, v7, Lcom/huawei/hem/y5;->i:I

    .line 42
    iget-object v7, v7, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 43
    iget-object v8, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v7, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 46
    iget v8, v7, Lcom/huawei/hem/y5;->d0:I

    if-eq v8, v6, :cond_6

    .line 47
    iput v6, v7, Lcom/huawei/hem/y5;->d0:I

    .line 48
    iget-object v7, v7, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 49
    iget-object v8, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v10, "allow_change_pwd_status"

    invoke-interface {v8, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v6, v7, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 52
    iget v7, v6, Lcom/huawei/hem/y5;->a0:I

    if-eq v7, p1, :cond_7

    .line 53
    iput p1, v6, Lcom/huawei/hem/y5;->a0:I

    .line 54
    iget-object v6, v6, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 55
    iget-object v7, v6, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v8, "rotate_setting_status"

    invoke-interface {v7, v8, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v6, v6, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TacticsHelper gallery_status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , camera_status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , logout_status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , alarm_clock_status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , calendar_status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " rotate_setting_status ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 58
    iget-object v6, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    .line 59
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/huawei/hem/q0;->y()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_8
    invoke-static {}, Lcom/huawei/hem/q0;->x()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    :cond_9
    invoke-static {}, Lcom/huawei/hem/q0;->w()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 67
    :cond_a
    invoke-static {}, Lcom/huawei/hem/q0;->v()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 69
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "com.android.launcher3.activity.gestrue.SettingPwdGestureActivity"

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "com.android.launcher3.activity.DataCleanActivity"

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "com.android.launcher3.activity.DeviceRotatingActivity"

    invoke-virtual {v7, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.launcher3.mdm.control_default_apps"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "apps_status_list"

    .line 75
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v6, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, " send broadcast to isv notify system app icon hide"

    .line 77
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method private handleAppTactics(ZLcom/android/launcher3/model/TacticApp;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/launcher3/model/TacticApp;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v9, v0, Lcom/android/launcher3/network/TacticsHelper;->mustInstallApps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    const-string v9, ";"

    const-string v10, "miahash"

    const-string v11, "ltkhash"

    const-string v12, "null"

    const/4 v13, 0x1

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/TacticApp;->getApplist()Ljava/util/List;

    move-result-object v14

    .line 11
    invoke-static {v14}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 12
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/launcher3/db/model/ItemApp;

    move-object/from16 v16, v11

    .line 13
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getHide_icon_status()I

    move-result v11

    if-ne v11, v13, :cond_0

    .line 14
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_1
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isCanuninstall()Z

    move-result v11

    if-nez v11, :cond_1

    .line 17
    iget-object v11, v0, Lcom/android/launcher3/network/TacticsHelper;->mustInstallApps:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIsforce()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 19
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_1
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIs_trust()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 21
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_2
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getException_white_url()I

    move-result v11

    if-ne v11, v13, :cond_3

    .line 23
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_3
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getSha1()Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 26
    :cond_4
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v11, v17

    goto :goto_2

    :cond_5
    move-object/from16 v11, v16

    .line 27
    :cond_6
    :goto_2
    new-instance v13, Lcom/android/launcher3/model/AppHashInfo;

    move-object/from16 p1, v15

    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v15, v8, v11}, Lcom/android/launcher3/model/AppHashInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v10, v11}, Lcom/android/launcher3/db/model/ItemApp;->setSha1(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIsnew()Z

    move-result v8

    invoke-virtual {v10, v8}, Lcom/android/launcher3/db/model/ItemApp;->setIsNew(I)V

    .line 30
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIs_trust()Z

    move-result v8

    invoke-virtual {v10, v8}, Lcom/android/launcher3/db/model/ItemApp;->setIsTrust(I)V

    .line 31
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIsforce()Z

    move-result v8

    invoke-virtual {v10, v8}, Lcom/android/launcher3/db/model/ItemApp;->setIsForceApps(I)V

    .line 32
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    move-object/from16 v15, p1

    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v12, v18

    move-object/from16 v8, v19

    goto/16 :goto_0

    :cond_7
    move-object/from16 v19, v8

    move-object/from16 v17, v10

    move-object/from16 v16, v11

    move-object/from16 v18, v12

    .line 33
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_8
    move-object/from16 v19, v8

    move-object/from16 v17, v10

    move-object/from16 v16, v11

    move-object/from16 v18, v12

    .line 34
    :goto_3
    invoke-static/range {p3 .. p3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "TacticsHelper  has interst apps"

    .line 35
    invoke-static {v8}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/db/model/ItemApp;

    .line 37
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_4

    .line 38
    :cond_9
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getHide_icon_status()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 39
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 40
    :cond_a
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_5
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isCanuninstall()Z

    move-result v11

    if-nez v11, :cond_b

    .line 42
    iget-object v11, v0, Lcom/android/launcher3/network/TacticsHelper;->mustInstallApps:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIsforce()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 44
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_b
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIs_trust()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 46
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_c
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getException_white_url()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 48
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v19

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    move-object/from16 v12, v19

    .line 49
    :goto_6
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getSha1()Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v13, v18

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_7

    :cond_e
    move-object/from16 v13, v18

    .line 51
    :goto_7
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v11

    if-eqz v11, :cond_f

    move-object/from16 v11, v17

    goto :goto_8

    :cond_f
    move-object/from16 v11, v16

    .line 52
    :cond_10
    :goto_8
    new-instance v14, Lcom/android/launcher3/model/AppHashInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v13

    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v15, v8, v11}, Lcom/android/launcher3/model/AppHashInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v10, v11}, Lcom/android/launcher3/db/model/ItemApp;->setSha1(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIsnew()Z

    move-result v8

    invoke-virtual {v10, v8}, Lcom/android/launcher3/db/model/ItemApp;->setIsNew(I)V

    .line 55
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIs_trust()Z

    move-result v8

    invoke-virtual {v10, v8}, Lcom/android/launcher3/db/model/ItemApp;->setIsTrust(I)V

    .line 56
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->isIsforce()Z

    move-result v8

    invoke-virtual {v10, v8}, Lcom/android/launcher3/db/model/ItemApp;->setIsForceApps(I)V

    .line 57
    invoke-virtual {v10}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p1

    move-object/from16 v19, v12

    goto/16 :goto_4

    :cond_11
    move-object/from16 v12, v19

    .line 59
    iget-object v8, v0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    const-string v9, "BroadcastSenderUtil  -- send hide app to isv:"

    .line 60
    invoke-static {v9}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 61
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.launcher3.mdm.hide_show_apps"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.zykj.manage"

    .line 62
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "hide_show_apps"

    .line 63
    invoke-virtual {v9, v11, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    iget-object v2, v0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    .line 66
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "com.ndwill.swd.appstore"

    .line 67
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {}, Lcom/huawei/hem/q0;->E()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BroadcastSenderUtil  -- send visible app to isv:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 71
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.linspirer.edu.appstorelist"

    .line 72
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "applist"

    .line 73
    invoke-virtual {v3, v11, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisallowedUninstallHelper handle disallowed uninstall apps :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2}, Lcom/huawei/hem/ic;->L0()Ljava/util/List;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    const-string v8, "com.android.launcher3"

    if-nez v3, :cond_15

    const-string v3, "DisallowedUninstallHelper last disallowed apps "

    .line 78
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 79
    invoke-static {v5}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 80
    invoke-interface {v2, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 81
    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 85
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_13
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 87
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_14
    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DisallowedUninstallHelper need remove disallowed apps "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 90
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 91
    sget-object v3, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v3, v2}, Lcom/huawei/hem/ic;->Q0(Ljava/util/List;)V

    .line 92
    :cond_15
    invoke-static {v5}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 97
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_16
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 99
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_17
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2, v5}, Lcom/huawei/hem/ic;->A0(Ljava/util/List;)V

    .line 102
    :cond_18
    sget-object v2, Lcom/huawei/hem/a5$b;->a:Lcom/huawei/hem/a5;

    if-eqz v2, :cond_1a

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-static {v6}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 105
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_19
    iget-object v5, v2, Lcom/huawei/hem/a5;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v5, Ljava/util/ArrayList;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-virtual {v2, v5}, Lcom/huawei/hem/a5;->a(Ljava/util/ArrayList;)V

    .line 109
    sget-object v2, Lcom/huawei/hem/x4$b;->a:Lcom/huawei/hem/x4;

    .line 110
    invoke-virtual {v2, v7, v4}, Lcom/huawei/hem/x4;->b(Ljava/util/List;Ljava/util/List;)V

    .line 111
    sget-object v2, Lcom/huawei/hem/w4$b;->a:Lcom/huawei/hem/w4;

    .line 112
    iget-object v3, v2, Lcom/huawei/hem/w4;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 113
    iget-object v3, v2, Lcom/huawei/hem/w4;->b:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppWhiteExceptionHelper update exception apps by tactics"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Lcom/huawei/hem/w4;->a()V

    return-object v1

    :cond_1a
    const/4 v1, 0x0

    .line 116
    throw v1
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private handleDataFlow(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "TacticsHelper  -- enable data_flow_status..."

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableMobileData()V

    goto :goto_0

    :cond_0
    const-string v0, "TacticsHelper  -- disable data_flow_status..."

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableMobileData()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 6
    iget v1, v0, Lcom/huawei/hem/y5;->r0:I

    if-eq v1, p1, :cond_1

    .line 7
    iput p1, v0, Lcom/huawei/hem/y5;->r0:I

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 9
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "mobiledata_state"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    iget-object p1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private handleDeviceSetting(Lcom/android/launcher3/model/DeviceSetting;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/ReciverPushHelper;->getInstance()Lcom/android/launcher3/network/ReciverPushHelper;

    move-result-object p2

    iget-object v1, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    const-string v2, "command_release_control"

    invoke-virtual {p2, v2, v0, v1}, Lcom/android/launcher3/network/ReciverPushHelper;->reportServer(Ljava/lang/String;ILandroid/content/Context;)V

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getSdcard_and_otg()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleSD(I)V

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getOtg_set()Lcom/android/launcher3/model/OtgSet;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleOTG(Lcom/android/launcher3/model/OtgSet;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getSimcard()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handlePhoneMMS(I)V

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getData_flow_status()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleDataFlow(I)V

    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getEnable_gesture_pwd_status()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleGesture(I)V

    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getEnable_gesture_pwd_status()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleAppIconStatus(Lcom/android/launcher3/model/DeviceSetting;I)V

    .line 8
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getSchool_class_display_status()I

    move-result v1

    .line 9
    iget v2, p2, Lcom/huawei/hem/y5;->Q:I

    if-ne v2, v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 11
    iget-object v3, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "school_class_info_status"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    iget-object v2, v2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 13
    iput v1, p2, Lcom/huawei/hem/y5;->Q:I

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getEnable_wifi_advanced_status()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleWifiAdvanced(I)V

    .line 15
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getEnable_gps_status()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleGPS(I)V

    .line 16
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getOnly_install_store_app_status()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->installSource(I)V

    .line 17
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getKeep_alive_package()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/z4;->b(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getLaunch_app()Lcom/android/launcher3/model/LauncherApp;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleLauncherApp(Lcom/android/launcher3/model/LauncherApp;)V

    .line 19
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getRemind_duration()Lcom/android/launcher3/model/DeviceUse;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleDuration(Lcom/android/launcher3/model/DeviceUse;)V

    .line 20
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getProtected_eyes_status()Lcom/android/launcher3/model/ProtectEye;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleEyeProtect(Lcom/android/launcher3/model/ProtectEye;)V

    .line 21
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getEnable_screenshots_status()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/TacticsHelper;->handleScreenShot(I)V

    .line 22
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getEnable_client_admin_status()I

    move-result v1

    .line 23
    iget v2, p2, Lcom/huawei/hem/y5;->G:I

    if-eq v2, v1, :cond_3

    .line 24
    iput v1, p2, Lcom/huawei/hem/y5;->G:I

    .line 25
    iget-object p2, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 26
    iget-object v2, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "enable_client_admin_status"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 27
    iget-object p2, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    :cond_3
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getLogout_status()I

    move-result v1

    .line 29
    iget v2, p2, Lcom/huawei/hem/y5;->i:I

    if-eq v2, v1, :cond_4

    .line 30
    iput v1, p2, Lcom/huawei/hem/y5;->i:I

    .line 31
    iget-object p2, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 32
    iget-object v2, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "logout_status"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object p2, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getDisable_reinstall_system_status()I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 35
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->E()V

    goto :goto_1

    .line 36
    :cond_5
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->z()V

    .line 37
    :goto_1
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getEnable_system_upgrade_status()I

    move-result p2

    if-ne p2, v0, :cond_6

    .line 38
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->enableOTA()V

    goto :goto_2

    .line 39
    :cond_6
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->disableOTA()V

    .line 40
    :goto_2
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceSetting;->getShow_privacy_statement_status()I

    move-result p1

    .line 41
    iget v0, p2, Lcom/huawei/hem/y5;->P:I

    if-ne v0, p1, :cond_7

    goto :goto_3

    .line 42
    :cond_7
    iget-object v0, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 43
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "privacy_status"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    iput p1, p2, Lcom/huawei/hem/y5;->P:I

    :goto_3
    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private handleDeviceTactics(ZLcom/android/launcher3/model/TacticDevice;Ljava/lang/String;)V
    .locals 7

    const-string p3, "command_camera"

    const-string v0, "command_recording"

    const-string v1, "command_wifi_switch"

    const-string v2, "command_connect_usb"

    const-string v3, "command_bluetooth"

    const-string v4, "bluetooth"

    if-nez p1, :cond_1

    const-string p1, "TacticsHelper  device manage disable"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 3
    iget p2, p1, Lcom/huawei/hem/y5;->A:I

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    .line 4
    iput v5, p1, Lcom/huawei/hem/y5;->A:I

    .line 5
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 6
    iget-object p2, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v5}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v5}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 10
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, v1, p2}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 12
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/model/TacticDevice;->getDeviceManage()Lcom/android/launcher3/db/model/ManageDevice;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_bluetooth()Z

    move-result v5

    .line 15
    iget v6, p2, Lcom/huawei/hem/y5;->A:I

    if-eq v6, v5, :cond_2

    .line 16
    iput v5, p2, Lcom/huawei/hem/y5;->A:I

    .line 17
    iget-object p2, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 18
    iget-object v6, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    iget-object p2, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_bluetooth()Z

    move-result v4

    invoke-static {p2, v3, v4}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 21
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_connect_usb()Z

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 22
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_wifi_switch()Z

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 23
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_recording()Z

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_camera()Z

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private handleDuration(Lcom/android/launcher3/model/DeviceUse;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceUse;->getRemind_status()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceUse;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->m0(I)V

    .line 3
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceUse;->getDuration()I

    move-result p1

    .line 4
    iput p1, v0, Lcom/huawei/hem/s4;->a:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EyeProtectedHelper update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hem/y5;->m0(I)V

    .line 7
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object p1

    .line 8
    iput v0, p1, Lcom/huawei/hem/s4;->a:I

    const-string p1, "EyeProtectedHelper update 0"

    .line 9
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleEyeProtect(Lcom/android/launcher3/model/ProtectEye;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/model/ProtectEye;->getDistance_status()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher3/model/ProtectEye;->getSitting_position_status()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/model/ProtectEye;->getSensitive_status()I

    move-result p1

    .line 4
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/huawei/hem/ic;->J0(IZ)V

    .line 5
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-interface {v0, v4, v1}, Lcom/huawei/hem/ic;->J0(IZ)V

    .line 6
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x2

    if-ne p1, v4, :cond_2

    move v3, v4

    :cond_2
    invoke-interface {v0, v1, v3}, Lcom/huawei/hem/ic;->J0(IZ)V

    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private handleGPS(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableGPS()V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableGPS()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 4
    iget v1, v0, Lcom/huawei/hem/y5;->z:I

    if-eq v1, p1, :cond_1

    .line 5
    iput p1, v0, Lcom/huawei/hem/y5;->z:I

    .line 6
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 7
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "gps"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private handleGesture(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/y5;->b0(I)V

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->gesturePwdDao:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/db/model/GesturePasswordDao$Properties;->User_name:Lorg/greenrobot/greendao/Property;

    iget-object v1, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/db/model/GesturePassword;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->gesturePwdDao:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/GesturePassword;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "TacticsHelper  --  gesture password is closed unsuccessfully , the user may not have set a gesture password ."

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）、保存字符串偏好（SharedPreferences$Editor.putString）。
.method private handleLauncherApp(Lcom/android/launcher3/model/LauncherApp;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/android/launcher3/model/LauncherApp;->getLaunch_mode()I

    move-result v1

    .line 2
    iget v2, v0, Lcom/huawei/hem/y5;->w:I

    if-eq v2, v1, :cond_0

    .line 3
    iput v1, v0, Lcom/huawei/hem/y5;->w:I

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 5
    iget-object v2, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "launcher_start_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/LauncherApp;->getLaunch_package()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.launcher3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/android/launcher3/model/LauncherApp;->getLaunch_package()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v1, v0, Lcom/huawei/hem/y5;->x:Ljava/lang/String;

    if-eq v1, p1, :cond_1

    .line 10
    iput-object p1, v0, Lcom/huawei/hem/y5;->x:Ljava/lang/String;

    .line 11
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 12
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "launcher_start_package"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object p1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）、读取字符串偏好（SharedPreferences.getString）。
.method private handleOTG(Lcom/android/launcher3/model/OtgSet;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/model/OtgSet;->getPv_list()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher3/model/OtgSet;->getStatus()I

    move-result p1

    const-string v1, "spf_key_otg_enable"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "TacticsHelper  ==== only enable otg ..."

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableOTG()V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 6
    iget v3, p1, Lcom/huawei/hem/y5;->S:I

    if-eq v3, v2, :cond_1

    .line 7
    iput v2, p1, Lcom/huawei/hem/y5;->S:I

    .line 8
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 9
    iget-object v3, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    const-string p1, "TacticsHelper  -- only disable otg..."

    .line 11
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableOTG()V

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    const/4 v2, 0x0

    .line 14
    iget v3, p1, Lcom/huawei/hem/y5;->S:I

    if-eqz v3, :cond_1

    .line 15
    iput v2, p1, Lcom/huawei/hem/y5;->S:I

    .line 16
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 17
    iget-object v3, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 18
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p1, Lcom/huawei/hem/y5;->c0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, p1, Lcom/huawei/hem/y5;->c0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 22
    iget-object v1, p1, Lcom/huawei/hem/y5;->c0:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    iget-object v1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 24
    iget-object v1, v1, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v2, "pid_vid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/huawei/hem/y5;->c0:Ljava/lang/String;

    :goto_1
    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private handlePhoneMMS(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->z()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->F()I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TacticsHelper read isv phone status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sms status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 5
    iget v4, v0, Lcom/huawei/hem/y5;->j:I

    if-eq v4, p1, :cond_0

    .line 6
    iput p1, v0, Lcom/huawei/hem/y5;->j:I

    .line 7
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 8
    iget-object v4, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v5, "speech_switch"

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->x()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 11
    invoke-static {}, Lcom/huawei/hem/q0;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_1

    .line 12
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableSpeech()V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableSpeech()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lcom/huawei/hem/q0;->B()Ljava/util/List;

    move-result-object v0

    if-ne p1, v2, :cond_3

    .line 15
    sget-object v4, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v4, v0}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    goto :goto_0

    .line 16
    :cond_3
    sget-object v4, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v4, v0}, Lcom/huawei/hem/ic;->k0(Ljava/util/List;)V

    :cond_4
    :goto_0
    if-ne v1, v3, :cond_8

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->E()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 18
    invoke-static {}, Lcom/huawei/hem/q0;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p1, v2, :cond_5

    .line 19
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->g0()V

    goto :goto_1

    .line 20
    :cond_5
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->S()V

    goto :goto_1

    .line 21
    :cond_6
    invoke-static {}, Lcom/huawei/hem/q0;->A()Ljava/util/List;

    move-result-object v0

    if-ne p1, v2, :cond_7

    .line 22
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, v0}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    goto :goto_1

    .line 23
    :cond_7
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, v0}, Lcom/huawei/hem/ic;->k0(Ljava/util/List;)V

    :cond_8
    :goto_1
    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private handleSD(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v1, "TacticsHelper  -- only enable sdcard ..."

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->c(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "TacticsHelper  -- only disable sdcard ..."

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->z0(Z)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 6
    iget v1, v0, Lcom/huawei/hem/y5;->R:I

    if-eq v1, p1, :cond_1

    .line 7
    iput p1, v0, Lcom/huawei/hem/y5;->R:I

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 9
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "sdcard_switch"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    iget-object p1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private handleScreenShot(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->l()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableScreenShot()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableScreenShot()V

    :cond_1
    :goto_0
    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private handleWifiAdvanced(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/huawei/hem/y4;->S(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 3
    iget v1, v0, Lcom/huawei/hem/y5;->y:I

    if-eq v1, p1, :cond_1

    .line 4
    iput p1, v0, Lcom/huawei/hem/y5;->y:I

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 6
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "wifi_advance"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private handleWifiTactics(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hem/y5;->v0(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/huawei/hem/y4;->H(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    const-string p2, "-1"

    invoke-virtual {p1, p2}, Lcom/huawei/hem/y5;->v0(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->a0()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "TacticsHelper last wifi ssids:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "null"

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->j0(Ljava/util/ArrayList;)V

    if-eqz p2, :cond_3

    .line 8
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, p1}, Lcom/huawei/hem/ic;->x(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private handleWorkspace(Lcom/android/launcher3/model/WorkTimeTactics;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/v4$b;->a:Lcom/huawei/hem/v4;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string p2, "TacticsHelper  set workspace time"

    .line 2
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/model/WorkTimeTactics;->getWorktime()Lcom/android/launcher3/db/model/WeekTactics;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/v4;->c()V

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hem/v4;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "TacticsHelper  set workspace time exception "

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    iput-object v1, v0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    .line 9
    invoke-virtual {v0}, Lcom/huawei/hem/v4;->c()V

    goto :goto_0

    :cond_1
    const-string p1, "TacticsHelper not set workspace time"

    .line 10
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 11
    iput-object v1, v0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    .line 12
    invoke-virtual {v0}, Lcom/huawei/hem/v4;->c()V

    :goto_0
    return-void
.end method

.method private installSource(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.android.launcher3"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.ndwill.swd.appstore"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ic;->s0(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->D0()V

    :goto_0
    return-void
.end method

.method private saveTactics(Lcom/android/launcher3/model/LTKTactics;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "TacticsHelper save tactics"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/DaoSession;->getWeekTacticsDao()Lcom/android/launcher3/db/model/WeekTacticsDao;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->isWorkspace_status()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getWorkspace_tactics()Lcom/android/launcher3/model/WorkTimeTactics;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/android/launcher3/model/WorkTimeTactics;->getWorktime()Lcom/android/launcher3/db/model/WeekTactics;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/DaoSession;->getItemAppDao()Lcom/android/launcher3/db/model/ItemAppDao;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 10
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->isApp_status()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getTotalApps()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 14
    :cond_2
    iget-object v1, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/DaoSession;->getManageDeviceDao()Lcom/android/launcher3/db/model/ManageDeviceDao;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 16
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->isDevice_status()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getDevice_tactics()Lcom/android/launcher3/model/TacticDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/model/TacticDevice;->getDeviceManage()Lcom/android/launcher3/db/model/ManageDevice;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 19
    :cond_3
    iget-object v0, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getIllegalDao()Lcom/android/launcher3/db/model/IllegalDao;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->isIllegal_status()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/android/launcher3/model/LTKTactics;->getIllegal_tactics()Lcom/android/launcher3/model/TacticsIllegal;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/android/launcher3/model/TacticsIllegal;->getAlready_root()Lcom/android/launcher3/db/model/Illegal;

    move-result-object v2

    const-string v3, "already_root"

    .line 25
    invoke-virtual {v2, v3}, Lcom/android/launcher3/db/model/Illegal;->setName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/android/launcher3/model/TacticsIllegal;->getChange_simcard()Lcom/android/launcher3/db/model/Illegal;

    move-result-object v3

    const-string v4, "change_simcard"

    .line 27
    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/Illegal;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/android/launcher3/model/TacticsIllegal;->getProhibited_app()Lcom/android/launcher3/db/model/Illegal;

    move-result-object v4

    const-string v5, "prohibited_app"

    .line 29
    invoke-virtual {v4, v5}, Lcom/android/launcher3/db/model/Illegal;->setName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/launcher3/model/TacticsIllegal;->getUsb_to_pc()Lcom/android/launcher3/db/model/Illegal;

    move-result-object p1

    const-string v5, "usb_to_pc"

    .line 31
    invoke-virtual {p1, v5}, Lcom/android/launcher3/db/model/Illegal;->setName(Ljava/lang/String;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/android/launcher3/db/model/Illegal;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    .line 32
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_4
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/network/IllegalHelper;->updateData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public request()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TacticsHelper  no need request tactics"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/network/TacticsHelper;->checkHemActive()V

    .line 4
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 5
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->TACTICS_METHOD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/android/launcher3/network/params/TacticsParams;

    iget-object v2, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/TacticsParams;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v2, p0, Lcom/android/launcher3/network/TacticsHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/launcher3/network/TacticsHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hem/de;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/TacticsParams;->setAndroid_id(Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/network/TacticsHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v1, :cond_1

    .line 11
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 12
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 13
    iput-object v1, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/android/launcher3/network/TacticsHelper$1;

    const-class v1, Lcom/android/launcher3/model/LTKTactics;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/TacticsHelper$1;-><init>(Lcom/android/launcher3/network/TacticsHelper;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 17
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public requestFromISV()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/android/launcher3/network/TacticsHelper;->sendTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "TacticsHelper refresh tactics by isv"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sput-wide v0, Lcom/android/launcher3/network/TacticsHelper;->sendTime:J

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/network/TacticsHelper;->request()V

    :cond_0
    return-void
.end method
