.class public Lcom/huawei/hem/qd;
.super Lcom/huawei/hem/jc;
.source "HuaweiBaseImpl.java"


# static fields
.field public static b:Landroid/app/admin/DevicePolicyManager;

.field public static c:Landroid/content/ComponentName;

.field public static d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

.field public static e:Lcom/huawei/android/app/admin/DevicePackageManager;

.field public static f:Lcom/huawei/android/app/admin/DeviceControlManager;

.field public static g:Lcom/huawei/android/app/admin/DeviceNetworkManager;

.field public static h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

.field public static i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

.field public static j:Lcom/huawei/android/app/admin/DeviceTelephonyManager;

.field public static k:Lcom/huawei/android/app/admin/DeviceBluetoothManager;

.field public static l:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

.field public static m:Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;

.field public static n:Lcom/huawei/android/app/admin/DevicePasswordManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    const-string v0, "device_policy"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    sput-object v0, Lcom/huawei/hem/qd;->b:Landroid/app/admin/DevicePolicyManager;

    .line 3
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    .line 4
    new-instance p1, Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    .line 5
    new-instance p1, Lcom/huawei/android/app/admin/DevicePackageManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DevicePackageManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    .line 6
    new-instance p1, Lcom/huawei/android/app/admin/DeviceControlManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceControlManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    .line 7
    new-instance p1, Lcom/huawei/android/app/admin/DeviceNetworkManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceNetworkManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->g:Lcom/huawei/android/app/admin/DeviceNetworkManager;

    .line 8
    new-instance p1, Lcom/huawei/android/app/admin/DeviceApplicationManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    .line 9
    new-instance p1, Lcom/huawei/android/app/admin/DeviceSettingsManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceSettingsManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    .line 10
    new-instance p1, Lcom/huawei/android/app/admin/DeviceTelephonyManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceTelephonyManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->j:Lcom/huawei/android/app/admin/DeviceTelephonyManager;

    .line 11
    new-instance p1, Lcom/huawei/android/app/admin/DeviceBluetoothManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceBluetoothManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->k:Lcom/huawei/android/app/admin/DeviceBluetoothManager;

    .line 12
    new-instance p1, Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->l:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    .line 13
    new-instance p1, Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->m:Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;

    .line 14
    new-instance p1, Lcom/huawei/android/app/admin/DevicePasswordManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DevicePasswordManager;-><init>()V

    sput-object p1, Lcom/huawei/hem/qd;->n:Lcom/huawei/android/app/admin/DevicePasswordManager;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiBaseImpl  -- addAllowNotificationApps"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->addAllowNotificationApps(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- addAllowNotificationApps-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public A0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiBaseImpl  -- addDisallowedUninstallPackages"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->addDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- addDisallowedUninstallPackages-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public B()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setChangeWallpaperDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl "

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

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
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->removeDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- actionEnableApps-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public C()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableNavigationBar"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setNavigationBarDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableNavigationBar-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public C0()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableFileShare"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setFileShareDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HuaweiBaseImpl  -- disableFileShare state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableFileShare-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public D0()V
    .locals 2

    const-string v0, "HuaweiBaseImpl   -- enableInstallPackage"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DevicePackageManager;->enableInstallPackage(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableInstallPackage-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public E0(Ljava/util/List;)V
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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaweiBaseImpl  -- setPersistentApp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->addPersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- setPersistentApp-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- actionSilentInstall , path = "

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- actionSilentInstall-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public H()V
    .locals 3

    :try_start_0
    const-string v0, "HuaweiBaseImpl  actionEnableWifi"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setWifiDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  actionEnableWifi error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- actionKillApp"

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->killApplicationProcess(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- actionKillApp-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public K0()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableMicrophone"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setMicrophoneDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  \u2014 enableMicrophone-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public L(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "HuaweiBaseImpl  -- actionScreenShot"

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
    sget-object v1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/huawei/android/app/admin/DeviceControlManager;->captureScreen(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

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

    if-eqz v2, :cond_2

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

    :cond_2
    :goto_3
    return-object p1

    :goto_4
    if-eqz v2, :cond_3

    .line 16
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
    :cond_3
    :goto_5
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    const-string v1, "HuaweiBaseImpl  -- actionScreenShot-error:"

    .line 20
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    const-string v0, "HuaweiBaseImpl  -- getDisallowedUninstallPackageList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DevicePackageManager;->getDisallowedUninstallPackageList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  --- getDisallowedUninstallPackageList-error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

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

    const-string v0, "HuaweiBaseImpl  -- getAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DevicePackageManager;->getInstallPackageWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- getAppWhiteList-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public N(J)Z
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- setSystemTime"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/android/app/admin/DeviceControlManager;->setSysTime(Landroid/content/ComponentName;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HuaweiBaseImpl  -- setSystemTime-error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "does not have device manager MDM permission"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "No active admin owned"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "HuaweiBaseImpl has no huawei cer "

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->W0()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->X0()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->C0()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->Y0()V

    const/4 p2, 0x1

    .line 5
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setTimeAndDateSetDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setTimeAndDateSetDisabled-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 7
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/qd;->j:Lcom/huawei/android/app/admin/DeviceTelephonyManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p2}, Lcom/huawei/android/app/admin/DeviceTelephonyManager;->setAirplaneModeDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setAirplaneModeDisabled-error:"

    .line 8
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 9
    :goto_1
    :try_start_2
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setSafeModeDisabled(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setSafeModeDisabled-error:"

    .line 10
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 11
    :goto_2
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.ndwill.swd.appstore"

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p1, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Lcom/huawei/android/app/admin/DevicePackageManager;->addDisabledDeactivateMdmPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- addDisabledDeactivateMdmPackages-error:"

    .line 15
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 16
    :goto_3
    :try_start_4
    sget-object p1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setAndroidAnimationDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- setAndroidAnimationDisabled-error:"

    .line 17
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 18
    :goto_4
    :try_start_5
    sget-object p1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setSearchIndexDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- setSearchIndexDisabled-error:"

    .line 19
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 20
    :goto_5
    :try_start_6
    sget-object p1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setAddUserDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p1

    const-string p2, "HuaweiBaseImpl setadduserdisable-error:"

    .line 21
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 22
    :goto_6
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->B()V

    return-void
.end method

.method public O0()V
    .locals 3

    :try_start_0
    const-string v0, "HuaweiBaseImpl  actionDisableWifi"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setWifiDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  actionDisableWifi error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public P()Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceControlManager;->isEyeComfortTurnedOn(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HuaweiBaseImpl  -- getEyeProtectModeStatus status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- getEyeProtectModeStatus-error: "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return v0
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

    const-string v0, "HuaweiBaseImpl  -- removeSuperWhiteListForSys"

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

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->removeSuperWhiteListForHwSystemManger(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- removeSuperWhiteListForSys-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- actionSilentUnInstall"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/android/app/admin/DevicePackageManager;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- actionSilentUnInstall-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Q0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiBaseImpl  -- removeDisallowedUninstallPackages"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->removeDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- removeDisallowedUninstallPackages-error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public R(I)V
    .locals 7

    const-string v0, "HuaweiBaseImpl  -- setControlMode"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setControlMode"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- setControlMode-error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public S()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableSMS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setSMSDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableSMS-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    const-string p1, "HuaweiBaseImpl  -- actionActiveDeviceAdmin"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object p2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Lcom/huawei/android/app/admin/DeviceControlManager;->setSilentActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HuaweiBaseImpl  -- actionActiveDeviceAdmin-error:"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public W0()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disable StatusBarExpandPanel"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setStatusBarExpandPanelDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setStatusBarExpandPanelDisabled-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public X()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enable StatusBarExpandPanel"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setStatusBarExpandPanelDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setStatusBarExpandPanelDisabled-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public X0()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setRestoreFactoryDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableFactory-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Y0()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- setBluetoothDataTransferDisable"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->k:Lcom/huawei/android/app/admin/DeviceBluetoothManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceBluetoothManager;->setBluetoothDataTransferDisable(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setBluetoothDataTransferDisable-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Z()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setChangeWallpaperDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl "

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Z0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiBaseImpl setCustomSettingsMenu"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceControlManager;->setCustomSettingsMenu(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setCustomSettingsMenu-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceControlManager;->setCustomSettingsMenu(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "HuaweiBaseImpl  --- setCustomSettingsMenu-error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
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

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->m:Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;->getSSIDWhiteList(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  getSSIDWhiteList error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    const-string p1, "HuaweiBaseImpl  -- enableSdCard"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setExternalStorageDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- enableSdCard-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c0()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "HuaweiBaseImpl  -- getAllowNotificationApps"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DevicePackageManager;->getAllowNotificationApps(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- getAllowNotificationApps-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
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

    const-string v0, "HuaweiBaseImpl  -- setSuperWhiteListForSys"

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

    const-string v1, "HuaweiBaseImpl  -- \u8bbe\u7f6e\u53ef\u4fe1\u4efb\u5e94\u7528:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/qd;->l:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->setSuperWhiteListForHwSystemManger(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    :cond_0
    const-string p1, "HuaweiBaseImpl  -- set super white list for hw system manager"

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- setSuperWhiteListForSys-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableBack"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setBackButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableBack-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableBluetooth"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setBluetoothDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableBluetooth-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableCamera"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->b:Landroid/app/admin/DevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .line 3
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableCamera-error = "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 4

    const-string v0, "HuaweiBaseImpl  -- disableGPS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setGPSDisabled(Landroid/content/ComponentName;Z)V

    .line 3
    sget-object v1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/app/admin/DeviceControlManager;->turnOnGPS(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "HuaweiBaseImpl  -- disableGPS-error:"

    .line 4
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 5
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setLocationServiceDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setLocationServiceDisabled-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableHome()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableHome"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setHomeButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableHome-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableMobileData()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableMobileData"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setDataConnectivityDisabled(Landroid/content/ComponentName;Z)V

    .line 3
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceControlManager;->turnOnMobiledata(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableMobileData-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/jc;->disableShortPressPower()V

    return-void
.end method

.method public disableOTA()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableOTA"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setSystemUpdateDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableOTA-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableOTG()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableOTG"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setUSBOtgDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableOTG-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableRecent"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setTaskButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableRecent-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableScreenShot-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableSpeech()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableSpeech"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setVoiceDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableSpeech-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableUsb"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "HuaweiBaseImpl  -- disableUsb-error1 = "

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setDevelopmentOptionDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableUsb-error2 = "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableVolume()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableVolume"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setVolumeAdjustDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableVolume-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- actionDisableApp packageName="

    .line 1
    invoke-static {v0, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->addDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- actionDisableApp-error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableBack"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setBackButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableBack-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableBluetooth"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setBluetoothDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableBluetooth-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableCamera"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->b:Landroid/app/admin/DevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 3
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableCamera-error = "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 4

    const-string v0, "HuaweiBaseImpl  -- enableGPS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setGPSDisabled(Landroid/content/ComponentName;Z)V

    .line 3
    sget-object v1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/app/admin/DeviceControlManager;->turnOnGPS(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "HuaweiBaseImpl  -- enableGPS-error:"

    .line 4
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 5
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setLocationServiceDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- setLocationServiceDisabled-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableHome()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableHome"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setHomeButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableHome-error = "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableMobileData()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableMobileData"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setDataConnectivityDisabled(Landroid/content/ComponentName;Z)V

    .line 3
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceControlManager;->turnOnMobiledata(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableMobileData-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/jc;->enableShortPressPower()V

    return-void
.end method

.method public enableOTA()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableOTA"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setSystemUpdateDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableOTA-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableOTG()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableOTG"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setUSBOtgDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableOTG-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableRecent"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setTaskButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableRecent-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableScreenShot-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableSpeech()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableSpeech"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setVoiceDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableSpeech-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableUsb"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "HuaweiBaseImpl  -- enableUsb-error = "

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setDevelopmentOptionDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HuaweiBaseImpl  -- setDevelopmentOptionDisabled result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableUsb-error2 = "

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableVolume()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableVolume"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setVolumeAdjustDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableVolume-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setRestoreFactoryDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableFactory-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- actionRebootDevice"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceControlManager;->rebootDevice(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- actionRebootDevice-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public g0()V
    .locals 3

    const-string v0, "enableSMS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setSMSDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  \u2014 enableSMS-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h0()V
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- actionShutdown"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceControlManager;->shutdownDevice(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- actionShutdown-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableNavigationBar"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setNavigationBarDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableNavigationBar-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public j()Z
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- readSpeechStatus"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->isVoiceDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- readSpeechStatus-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x1

    return v0
.end method

.method public j0(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/qd;->m:Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;->removeSSIDFromWhiteList(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  removeSSIDFromWhiteList error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public k()Z
    .locals 3

    const-string v0, "HuaweiBaseImpl   -- checkMDMCer"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->isGPSDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3
    sget-object v1, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setGPSDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HuaweiBaseImpl  -- checkMDMCer-error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "does not have MDM_LOCATION permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "No active admin owned"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
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
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->addDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- actionDisableApps-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public n0(Ljava/util/List;)V
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
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->getIgnoreFrequentRelaunchAppList(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->removeIgnoreFrequentRelaunchAppList(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    .line 4
    :cond_0
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->addIgnoreFrequentRelaunchAppList(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- addIgnoreFrequentRelaunchAppList-error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    const-string v0, "HuaweiBaseImpl  -- getPersistentApp"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->getPersistentApp(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- getPersistentApp-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public o0()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- enableFileShare"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setFileShareDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HuaweiBaseImpl  -- enableFileShare state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- enableFileShare-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public p(Z)I
    .locals 5

    const-string v0, "HuaweiBaseImpl  -- getControlMode"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "getControlMode"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    sget-object v3, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 4
    :cond_0
    sget-object p1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- getControlMode-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    return v2
.end method

.method public p0()Z
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- readSMSStatus"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->isSMSDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- readSMSStatus-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x1

    return v0
.end method

.method public q()Ljava/util/List;
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
    const-string v0, "HuaweiBaseImpl ---getDisableApps "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->getDisallowedRunningApp(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl ---getDisableApps error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public q0(Z)V
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- controlEyeProtectMode"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceControlManager;->turnOnEyeComfort(Landroid/content/ComponentName;Z)Z

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaweiBaseImpl  -- controlEyeProtectMode isOk : "

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

    const-string v0, "HuaweiBaseImpl  -- controlEyeProtectMode-error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public removePersistentApp(Ljava/util/List;)V
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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaweiBaseImpl  -- removePersistentApp == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->removePersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- removePersistentApp-error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
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

    const-string v0, "HuaweiBaseImpl  -- setAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hem/qd;->M0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DevicePackageManager;->removeInstallPackageWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->addInstallPackageWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HuaweiBaseImpl  -- set app white list end:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huawei/hem/qd;->M0()Ljava/util/List;

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

    const-string v0, "HuaweiBaseImpl  -- setAppWhiteList-error:"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public s0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiBaseImpl   -- disableInstallSource"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->disableInstallSource(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- disableInstallSource-error = "

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public t(Z)V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- actionResetFactory"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setRestoreFactoryDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "HuaweiBaseImpl  -- actionResetFactory-error:"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/huawei/hem/qd;->b:Landroid/app/admin/DevicePolicyManager;

    :try_start_1
    const-string v0, "WipeSoldier -- wipeDataIncludeSDCard.........."

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataIncludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 9
    :cond_0
    sget-object p1, Lcom/huawei/hem/qd;->b:Landroid/app/admin/DevicePolicyManager;

    .line 10
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    const-string p1, "WipeSoldier -- wipeDataExcludeSDCard.........."

    .line 11
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataExcludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_1
    return-void
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

    const-string v0, "HuaweiBaseImpl  -- getSuperWhiteListForSys"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->l:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->getSuperWhiteListForHwSystemManger(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- getSuperWhiteListForSys-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public v0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiBaseImpl  -- actionClearCache"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.android.launcher3"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.ndwill.swd.appstore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DevicePackageManager;->clearPackageData(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- actionClearCache-error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public w()V
    .locals 3

    const-string v0, "HuaweiBaseImpl  -- disableMicrophone"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setMicrophoneDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HuaweiBaseImpl  -- disableMicrophone-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public w0(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiBaseImpl  -- removeAllowNotificationApps"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->e:Lcom/huawei/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->removeAllowNotificationApps(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- removeAllowNotificationApps-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public x(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/qd;->m:Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceWifiPolicyManager;->addSSIDToWhiteList(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  addSSIDToWhiteList error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HuaweiBaseImpl  -- actionEnableApp"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/huawei/hem/qd;->h:Lcom/huawei/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->removeDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- actionEnableApp-error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 2

    const-string p1, "HuaweiBaseImpl  -- disableSdCard"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/qd;->d:Lcom/huawei/android/app/admin/DeviceRestrictionManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/huawei/android/app/admin/DeviceRestrictionManager;->setExternalStorageDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HuaweiBaseImpl  -- disableSdCard-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
