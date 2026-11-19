.class public Lcom/huawei/hem/nd;
.super Lcom/huawei/hem/jc;
.source "HonorImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/nd;

.field public static c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

.field public static d:Lcom/hihonor/android/app/admin/DeviceControlManager;

.field public static e:Lcom/hihonor/android/app/admin/DevicePackageManager;

.field public static f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

.field public static g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

.field public static h:Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;

.field public static i:Lcom/hihonor/android/app/admin/DeviceBluetoothManager;

.field public static j:Lcom/hihonor/android/app/admin/DeviceTelephonyManager;

.field public static k:Lcom/hihonor/android/app/admin/DeviceHwSystemManager;

.field public static l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

.field public static m:Lcom/hihonor/android/app/admin/DevicePasswordManager;

.field public static n:Lcom/hihonor/android/app/admin/DeviceP2PManager;

.field public static o:Landroid/app/admin/DevicePolicyManager;

.field public static p:Landroid/content/ComponentName;

.field public static q:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method

.method public static W0(Landroid/content/Context;Ljava/lang/Class;)Lcom/huawei/hem/nd;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/nd;->b:Lcom/huawei/hem/nd;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/huawei/hem/nd;

    invoke-direct {v0}, Lcom/huawei/hem/nd;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->b:Lcom/huawei/hem/nd;

    .line 3
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    .line 4
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceControlManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceControlManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    .line 5
    new-instance v0, Lcom/hihonor/android/app/admin/DevicePackageManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DevicePackageManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    .line 6
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    .line 7
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    .line 8
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->h:Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;

    .line 9
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceBluetoothManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceBluetoothManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->i:Lcom/hihonor/android/app/admin/DeviceBluetoothManager;

    .line 10
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceTelephonyManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceTelephonyManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->j:Lcom/hihonor/android/app/admin/DeviceTelephonyManager;

    .line 11
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceHwSystemManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceHwSystemManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->k:Lcom/hihonor/android/app/admin/DeviceHwSystemManager;

    .line 12
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    .line 13
    new-instance v0, Lcom/hihonor/android/app/admin/DevicePasswordManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DevicePasswordManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->m:Lcom/hihonor/android/app/admin/DevicePasswordManager;

    .line 14
    new-instance v0, Lcom/hihonor/android/app/admin/DeviceP2PManager;

    invoke-direct {v0}, Lcom/hihonor/android/app/admin/DeviceP2PManager;-><init>()V

    sput-object v0, Lcom/huawei/hem/nd;->n:Lcom/hihonor/android/app/admin/DeviceP2PManager;

    const-string v0, "device_policy"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    sput-object v0, Lcom/huawei/hem/nd;->o:Landroid/app/admin/DevicePolicyManager;

    .line 16
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    .line 17
    sput-object p0, Lcom/huawei/hem/nd;->q:Landroid/content/Context;

    .line 18
    :cond_0
    sget-object p0, Lcom/huawei/hem/nd;->b:Lcom/huawei/hem/nd;

    return-object p0
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

    :try_start_0
    const-string v0, "HonorImpl ---addAllowNotificationApps "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->addAllowNotificationApps(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---addAllowNotificationApps error:"

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

    :try_start_0
    const-string v0, "HonorImpl ---addDisallowedUninstallPackages "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->addDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---addDisallowedUninstallPackages error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public B()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl disableChangeWallpaper"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setChangeWallpaperDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable change wallpaper  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "secure_gesture_navigation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  disableNavigationBar exception:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public C0()V
    .locals 3

    const-string v0, "HonorImpl disableFileShare"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setFileShareDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable file share  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public D0()V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl ---enableInstallPackage "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->enableInstallPackage(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---enableInstallPackage error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public E()V
    .locals 3

    const-string v0, "HonorImpl disableSDupgrade"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSdCardUpdateDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable sdupgrade  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    :try_start_0
    const-string v0, "HonorImpl ---updatePersistentApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->addPersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---updatePersistentApp error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl ---actionSilentInstall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---actionSilentInstall error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public G0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;->getNetworkAccessAppList(Landroid/content/ComponentName;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HonorImpl ---getNetworkAccessAppWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  ---getNetworkAccessAppWhiteList-error:"

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

.method public H()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl  actionEnableWifi"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setWifiDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  actionEnableWifi error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public H0()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl  -- enableStatusBar"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enableStatusBar exception "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public I()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl  -- disableStatusBar"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disableStatusBar exception "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
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

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;->addNetworkAccessAppList(Landroid/content/ComponentName;Ljava/util/ArrayList;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  ---setNetworkAccessAppWhiteList-error:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl ---actionKillApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->killApplicationProcess(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---actionKillApp error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public J0(IZ)V
    .locals 8

    const-string v0, "HonorImpl  -- enableEyeProtect"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableEyesProtect"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    aput-object v3, v2, v5

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HonorImpl  -- enableEyeProtect-error:"

    .line 4
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public K0()V
    .locals 3

    const-string v0, "HonorImpl  -- enableMicrophone"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setMicrophoneDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable micropphone  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public L(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "HonorImpl  -- actionScreenShot"

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

    .line 4
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10
    :cond_1
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 11
    :try_start_0
    sget-object v1, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->captureScreen(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 15
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

    .line 16
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 18
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    return-object p1

    .line 19
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 20
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catch_3
    move-exception v1

    .line 21
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :goto_5
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    const-string v1, "HonorImpl  -- actionScreenShot-error:"

    .line 23
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

    :try_start_0
    const-string v0, "HonorImpl ---getDisallowedUninstallPackageList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->getDisallowedUninstallPackageList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---getDisallowedUninstallPackageList error:"

    .line 3
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

    :try_start_0
    const-string v0, "HonorImpl ---getAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->getInstallPackageTrustList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ------getAppWhiteList error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public N(J)Z
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl  -- setSystemTime"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->setSysTime(Landroid/content/ComponentName;J)V
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

    const-string v0, "HonorImpl  -- setSystemTime-error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "does not have device manager MDM permission"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HonorImpl has no huawei cer "

    .line 6
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "HonorImpl set search index disable:"

    const-string v1, "HonorImpl systemInit"

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    sget-object v3, Lcom/huawei/hem/nd;->o:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HonorImpl ---setDeviceOwnerApp:"

    .line 3
    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v3, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setDeviceOwnerApp"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5
    sget-object v4, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    aput-object v6, v5, v1

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v3, "HonorImpl is Already deviceowner APP"

    .line 6
    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "HonorImpl ---setDeviceOwnerApp Exception error:"

    .line 7
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v3, "HonorImpl  setDefaultLauncher"

    .line 8
    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    sget-object v3, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v4, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, p1, p2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->setDefaultLauncher(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string p2, "HonorImpl set default launcher exception:"

    .line 10
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    :try_start_2
    const-string p1, "HonorImpl  setStatusBarExpandPanelDisabled"

    .line 11
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setStatusBarExpandPanelDisabled(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    const-string p2, "HonorImpl disable status bar expand  exception:"

    .line 13
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    :try_start_3
    const-string p1, "HonorImpl  setSafeModeDisabled"

    .line 14
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSafeModeDisabled(Landroid/content/ComponentName;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    const-string p2, "HonorImpl disable safe mode  exception:"

    .line 16
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_3
    :try_start_4
    const-string p1, "HonorImpl  setMultiWindowDisabled"

    .line 17
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setMultiWindowDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    const-string p2, "HonorImpl disable muitiwindow  exception:"

    .line 19
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_4
    :try_start_5
    const-string p1, "HonorImpl  setMediaControlDisabled"

    .line 20
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->setMediaControlDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    const-string p2, "HonorImpl media control disable:"

    .line 22
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_5
    :try_start_6
    const-string p1, "HonorImpl  setAirplaneModeDisabled"

    .line 23
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/huawei/hem/nd;->j:Lcom/hihonor/android/app/admin/DeviceTelephonyManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceTelephonyManager;->setAirplaneModeDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p1

    const-string p2, "HonorImpl airplane mode disable:"

    .line 25
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_6
    :try_start_7
    const-string p1, "HonorImpl  setAddUserDisabled"

    .line 26
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 27
    sget-object p1, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setAddUserDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p1

    const-string p2, "HonorImpl add user disable:"

    .line 28
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_7
    :try_start_8
    const-string p1, "HonorImpl  setTimeAndDateSetDisabled"

    .line 29
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 30
    sget-object p1, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setTimeAndDateSetDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception p1

    const-string p2, "HonorImpl set time and date  disable:"

    .line 31
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_8
    :try_start_9
    const-string p1, "HonorImpl  setSearchIndexDisabled"

    .line 32
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setSearchIndexDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception p1

    .line 34
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_9
    :try_start_a
    const-string p1, "HonorImpl  setAndroidAnimationDisabled"

    .line 35
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setAndroidAnimationDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception p1

    .line 37
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_a
    :try_start_b
    const-string p1, "HonorImpl  setApplicationLockDisabled"

    .line 38
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setApplicationLockDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception p1

    const-string p2, "HonorImpl set application lock disable:"

    .line 40
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_b
    :try_start_c
    const-string p1, "HonorImpl  setQuickToolsDisabled"

    .line 41
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 42
    sget-object p1, Lcom/huawei/hem/nd;->m:Lcom/hihonor/android/app/admin/DevicePasswordManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DevicePasswordManager;->setQuickToolsDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_c

    :catchall_c
    move-exception p1

    const-string p2, "HonorImpl set quick tools disable:"

    .line 43
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_c
    :try_start_d
    const-string p1, "HonorImpl  setWifiP2PDisabled"

    .line 44
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 45
    sget-object p1, Lcom/huawei/hem/nd;->n:Lcom/hihonor/android/app/admin/DeviceP2PManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceP2PManager;->setWifiP2PDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_d

    :catchall_d
    move-exception p1

    const-string p2, "HonorImpl set wifi p2p disable:"

    .line 46
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_d
    :try_start_e
    const-string p1, "HonorImpl  -- setPowerSaveModeDisabled "

    .line 47
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 48
    sget-object p1, Lcom/huawei/hem/nd;->k:Lcom/hihonor/android/app/admin/DeviceHwSystemManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Lcom/hihonor/android/app/admin/DeviceHwSystemManager;->setPowerSaveModeDisabled(Landroid/content/ComponentName;Ljava/lang/Boolean;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_e

    :catchall_e
    move-exception p1

    const-string p2, "HonorImpl  -- setPowerSaveModeDisabled error:"

    .line 49
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_e
    :try_start_f
    const-string p1, "HonorImpl  -- setSendNotificationDisabled "

    .line 50
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 51
    sget-object p1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object p2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSendNotificationDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_f

    :catchall_f
    move-exception p1

    const-string p2, "HonorImpl setNotificationDisabled:"

    .line 52
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 53
    :goto_f
    invoke-virtual {p0, v1}, Lcom/huawei/hem/nd;->p(Z)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 54
    sget-object p1, Lcom/huawei/hem/nd;->q:Landroid/content/Context;

    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.hihonor.videoeditor"

    const-string v1, "com.huawei.videoeditor.storytemplate.StoryTemplateActivity"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 55
    sget-object p1, Lcom/huawei/hem/nd;->q:Landroid/content/Context;

    new-instance p2, Landroid/content/ComponentName;

    const-string v1, "com.hihonor.photos"

    const-string v2, "com.huawei.gallery.app.SelectSlotAlbumActivity"

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 56
    sget-object p1, Lcom/huawei/hem/nd;->q:Landroid/content/Context;

    new-instance p2, Landroid/content/ComponentName;

    const-string v2, "com.huawei.photos.feature.collages.SelectMaterialActivity"

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 57
    sget-object p1, Lcom/huawei/hem/nd;->q:Landroid/content/Context;

    new-instance p2, Landroid/content/ComponentName;

    const-string v2, "com.huawei.photos.feature.collages.CollagesActivity"

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 58
    sget-object p1, Lcom/huawei/hem/nd;->q:Landroid/content/Context;

    new-instance p2, Landroid/content/ComponentName;

    const-string v1, "com.huawei.videoeditor.editor.maineditor.app.MainEditActivity"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->V0()V

    .line 60
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->C0()V

    return-void
.end method

.method public O0()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl  actionDisableWifi"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setWifiDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  actionDisableWifi error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
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

    const-string v0, "HonorImpl  -- removeSuperWhiteListForSys"

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
    sget-object v0, Lcom/huawei/hem/nd;->k:Lcom/hihonor/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceHwSystemManager;->removeSuperTrustListForHwSystemManger(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  -- removeSuperWhiteListForSys-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl ---actionSilentUnInstall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/hihonor/android/app/admin/DevicePackageManager;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---actionSilentUnInstall error:"

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

    :try_start_0
    const-string v0, "HonorImpl ---removeDisallowedUninstallPackages "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->removeDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---removeDisallowedUninstallPackages error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public R(I)V
    .locals 2

    const-string v0, "HonorImpl  -- setControlMode"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceControlManager;->setControlMode(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  -- setControlMode-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public S()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl disableSMS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSMSDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable sms  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public T(ZJLjava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HonorImpl  ==setScheduledPowerOn ==when:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    move v3, p1

    move-object v4, p4

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setScheduledPowerOn(Landroid/content/ComponentName;ZLjava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HonorImpl  actionTimingPowerOn exception:"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "HonorImpl  --- setUrlWhiteList-result=="

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;->clearNetworkList(Landroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "HonorImpl  ---removeNetworkList-error:"

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-static {v4}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v5, "^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,6}$"

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HonorImpl  --- \u6dfb\u52a0\u57df\u540d:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    sget-object v4, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5, v5, v3}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;->addNetworkList(Landroid/content/ComponentName;ZZLjava/util/ArrayList;)Z

    move-result p1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HonorImpl  --- \u6dfb\u52a0IP:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    sget-object v3, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, v3, v5, v1, v2}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;->addNetworkList(Landroid/content/ComponentName;ZZLjava/util/ArrayList;)Z

    move-result p1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "HonorImpl  -- setUrlWhiteList-none url need add"

    .line 17
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    const-string v0, "HonorImpl  -- setUrlWhiteList-error:"

    .line 18
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return v1
.end method

.method public V0()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl ---disableFactory "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setRestoreFactoryDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---disableFactory error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public W(ZJLjava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HonorImpl  ==setScheduledPowerOff ==when:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v3, 0x0

    move v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setScheduledPowerOff(Landroid/content/ComponentName;ZLjava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HonorImpl  actionTimingPowerOff exception:"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public X0(Ljava/util/List;)V
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
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->setCustomSettingsMenu(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  -- setCustomSettingsMenu-error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceControlManager;->setCustomSettingsMenu(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "HonorImpl  --- setCustomSettingsMenu-error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public Y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/nd;->o:Landroid/app/admin/DevicePolicyManager;

    sget-object v0, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HonorImpl ---getWifiMacAddress:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  --- getWifiMacAddress--error=="

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    const-string p1, "unknown"

    return-object p1
.end method

.method public Z()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl enableChangeWallpaper"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setChangeWallpaperDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable change wallpaper  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
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
    sget-object v0, Lcom/huawei/hem/nd;->h:Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;->getSsidTrustList(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  getSSIDWhiteList error:"

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

.method public b0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HonorImpl  -- showWifiAdvanced "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "HonorImpl  -- showWifiAdvanced"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hem/nd;->X0(Ljava/util/List;)V

    .line 4
    sget-object p1, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object v0, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setWIFIeditDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  -- showWifiAdvanced exception "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    :try_start_0
    const-string p1, "HonorImpl enable sdcard "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v0, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setExternalStorageDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl enable sdcard  exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    :try_start_0
    const-string v0, "HonorImpl ---getAllowNotificationApps "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->getAllowNotificationApps(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---getAllowNotificationApps error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

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

    const-string v0, "HonorImpl  -- setSuperWhiteListForSys"

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

    const-string v1, "HonorImpl  -- \u8bbe\u7f6e\u53ef\u4fe1\u4efb\u5e94\u7528:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/nd;->k:Lcom/hihonor/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceHwSystemManager;->setSuperTrustListForHwSystemManger(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    :cond_0
    const-string p1, "HonorImpl  -- set super white list for hw system manager"

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  -- setSuperWhiteListForSys-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 3

    const-string v0, "HonorImpl disableBack "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setBackButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable back  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setBluetoothDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "HonorImpl diable bluetooth exception:"

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/nd;->i:Lcom/hihonor/android/app/admin/DeviceBluetoothManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/hihonor/android/app/admin/DeviceBluetoothManager;->setBluetoothDataTransferDisable(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HonorImpl diable bluetooth transfer exception:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableCamera()V
    .locals 3

    const-string v0, "HonorImpl  -- disableCamera"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->o:Landroid/app/admin/DevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;
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

    const-string v1, "HonorImpl  -- disableCamera-error = "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 3

    const-string v0, "HonorImpl  -- disableGPS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setLocationServiceDisabled(Landroid/content/ComponentName;Z)Z

    .line 3
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->turnOnGPS(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  -- disableGPS-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 3

    const-string v0, "HonorImpl disableHome "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setHomeButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable home  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl disableLongPressPower"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setPowerDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable long power  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableMobileData()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl disableMobileData"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setDataConnectivityDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl diable mobile data exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->disableShortPressPower()V

    return-void
.end method

.method public disableOTA()V
    .locals 3

    const-string v0, "HonorImpl  -- disableOTA"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSystemUpdateDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl diable OTA  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableOTG()V
    .locals 3

    const-string v0, "HonorImpl disableOTG "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "HonorImpl disable otg  "

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setUSBOtgDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable otg  exception:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 3

    const-string v0, "HonorImpl disableRecent "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setTaskButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable recent  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableScreenShot()V
    .locals 3

    const-string v0, "HonorImpl  -- disableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setManualScreenCaptureDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable screen shot  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 3

    const-string v0, "HonorImpl disableShortPressPower"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSleepByPowerButtonDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable short power exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableSpeech()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl disableSpeech"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setVoiceDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable speech  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 4

    const-string v0, "HonorImpl disable adb  exception:"

    const-string v1, "HonorImpl disableUsb "

    .line 1
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    :try_start_0
    sget-object v2, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v3, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "HonorImpl disable usb  exception:"

    .line 3
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v2, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v3, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setAdbDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/hihonor/android/app/admin/DeviceControlManager;->turnOnUsbDebugMode(Landroid/content/ComponentName;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public disableVolume()V
    .locals 3

    const-string v0, "HonorImpl  -- disableVolume"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setVolumeAdjustDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable volume adjust  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl ---actionDisableApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->addDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---actionDisableApp error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e0()Z
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl ---isActiveAdmin "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceControlManager;->isForcedActiveDeviceAdmin(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---isActiveAdmin error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return v0
.end method

.method public enableBack()V
    .locals 3

    const-string v0, "HonorImpl enableBack "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setBackButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable back  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setBluetoothDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable bluetooth exception:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/nd;->i:Lcom/hihonor/android/app/admin/DeviceBluetoothManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceBluetoothManager;->setBluetoothDataTransferDisable(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HonorImpl diable bluetooth transfer exception:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableCamera()V
    .locals 3

    const-string v0, "HonorImpl  -- enableCamera"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->o:Landroid/app/admin/DevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;
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

    const-string v1, "HonorImpl  -- enableCamera-error = "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 3

    const-string v0, "HonorImpl  -- enableGPS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setLocationServiceDisabled(Landroid/content/ComponentName;Z)Z

    .line 3
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->turnOnGPS(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  -- enableGPS-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 3

    const-string v0, "HonorImpl enableHome "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setHomeButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable home  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl enableLongPressPower"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setPowerDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable long power  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableMobileData()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl enableMobileData"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setDataConnectivityDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable mobile data exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceControlManager;->forceMobiledataOn(Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HonorImpl force mobile data exception:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->enableShortPressPower()V

    return-void
.end method

.method public enableOTA()V
    .locals 3

    const-string v0, "HonorImpl  -- enableOTA"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSystemUpdateDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable OTA  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableOTG()V
    .locals 3

    const-string v0, "HonorImpl enableOTG "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "HonorImpl enable otg  "

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setUSBOtgDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable otg  exception:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 3

    const-string v0, "HonorImpl enableRecent "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setTaskButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable recent  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableScreenShot()V
    .locals 3

    const-string v0, "HonorImpl  -- enableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setManualScreenCaptureDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable screen shot  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 3

    const-string v0, "HonorImpl enableShortPressPower"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSleepByPowerButtonDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl disable short power  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableSpeech()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl enable speech  "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setVoiceDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable speech  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 3

    const-string v0, "HonorImpl enableUsb "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "HonorImpl enable usb  exception:"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setAdbDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "HonorImpl enable adb  exception:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_1
    :try_start_2
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->turnOnUsbDebugMode(Landroid/content/ComponentName;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v1, "HonorImpl disable adb  exception:"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public enableVolume()V
    .locals 3

    const-string v0, "HonorImpl  -- enableVolume"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setVolumeAdjustDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable volume adjust  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl ---enableFactory "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setRestoreFactoryDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---enableFactory error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl  -- actionRebootDevice"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceControlManager;->rebootDevice(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl reboot device  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public g0()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl enableSMS"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSMSDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable sms  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl ---cleanNetworkAccessAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;->clearNetworkAccessAppList(Landroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---cleanNetworkAccessAppWhiteList-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h0()V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl  -- actionShutdown"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceControlManager;->shutdownDevice(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl shut down  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "secure_gesture_navigation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  enableNavigationBar exception:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
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
    sget-object v0, Lcom/huawei/hem/nd;->h:Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;->removeSsidFromTrustList(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  removeSSIDFromWhiteList error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public k()Z
    .locals 3

    const-string v0, "HonorImpl   -- checkMDMCer"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->isGPSDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3
    sget-object v1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setGPSDisabled(Landroid/content/ComponentName;Z)V
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

    const-string v2, "HonorImpl  -- checkMDMCer-error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "does not have MDM_LOCATION permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public l0()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl  -- clearAllowStartApps "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->setTaskLockAppList(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  -- clearAllowStartApps error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public m0(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "HonorImpl  -- setAllowStartApps "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->l0()V

    .line 3
    sget-object v0, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->setTaskLockAppList(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  -- setAllowStartApps error:"

    .line 4
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

    :try_start_0
    const-string v0, "HonorImpl ---getPersistentApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->getPersistentApp(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---getPersistentApp error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public o0()V
    .locals 3

    const-string v0, "HonorImpl enableFileShare"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setFileShareDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable file share  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public p(Z)I
    .locals 1

    const-string v0, "HonorImpl  -- getControlMode"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    sget-object p1, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hihonor/android/app/admin/DeviceControlManager;->getControlMode(Landroid/content/ComponentName;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object p1, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v0, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Lcom/hihonor/android/app/admin/DeviceControlManager;->getControlMode(Landroid/content/ComponentName;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  -- getControlMode-error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x1

    return p1
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
    const-string v0, "HonorImpl ---getDisableApps "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->getDisallowedRunningApp(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ---getDisableApps error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public q0(Z)V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl  -- controlEyeProtectMode"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceControlManager;->turnOnEyeComfort(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl control eye protected exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HonorImpl  -- hideWifiAdvanced "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "HonorImpl  -- hideWifiAdvanced"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "wifi_proxy"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/huawei/hem/nd;->X0(Ljava/util/List;)V

    .line 5
    sget-object p1, Lcom/huawei/hem/nd;->l:Lcom/hihonor/android/app/admin/DeviceSettingsManager;

    sget-object v0, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/hihonor/android/app/admin/DeviceSettingsManager;->setWIFIeditDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  -- hideWifiAdvanced exception "

    .line 6
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

    :try_start_0
    const-string v0, "HonorImpl ---removePersistentApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->removePersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---removePersistentApp error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    :try_start_0
    const-string v0, "HonorImpl ---remove app white list "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->getInstallPackageTrustList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/hihonor/android/app/admin/DevicePackageManager;->removeInstallPackageTrustList(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl ------remove app white list error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "HonorImpl ---setAppWhiteList "

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->addInstallPackageTrustList(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "HonorImpl ---setAppWhiteList error:"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    const/4 p1, 0x1

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

    :try_start_0
    const-string v0, "HonorImpl ---disableInstallSource "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->disableInstallSource(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---disableInstallSource error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public t(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/nd;->f()V

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/nd;->o:Landroid/app/admin/DevicePolicyManager;

    :try_start_0
    const-string v0, "WipeSoldier -- wipeDataIncludeSDCard.........."

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataIncludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/huawei/hem/nd;->o:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    .line 8
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    const-string p1, "WipeSoldier -- wipeDataExcludeSDCard.........."

    .line 9
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataExcludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public t0()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "HonorImpl ---getNetworkList:"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;->getNetworkList(Landroid/content/ComponentName;ZZ)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    sget-object v3, Lcom/huawei/hem/nd;->g:Lcom/hihonor/android/app/admin/DeviceNetworkManager;

    sget-object v4, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/hihonor/android/app/admin/DeviceNetworkManager;->getNetworkList(Landroid/content/ComponentName;ZZ)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  ---getUrlWhiteList-error:"

    .line 9
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
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

    const-string v0, "HonorImpl  -- getSuperWhiteListForSys"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->k:Lcom/hihonor/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/hihonor/android/app/admin/DeviceHwSystemManager;->getSuperTrustListForHwSystemManger(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl  -- getSuperWhiteListForSys-error:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()V
    .locals 3

    :try_start_0
    const-string v0, "HonorImpl  -- storageUnmount"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->d:Lcom/hihonor/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceControlManager;->unmountUsbDevices(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl unmount usb devices :"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
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

    :try_start_0
    const-string v0, "HonorImpl ---actionClearCache "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v2, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/hihonor/android/app/admin/DevicePackageManager;->clearPackageData(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---actionClearCache error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 3

    const-string v0, "HonorImpl  -- disableMicrophone"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setMicrophoneDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl diable micropphone  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    :try_start_0
    const-string v0, "HonorImpl ---removeAllowNotificationApps "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/nd;->e:Lcom/hihonor/android/app/admin/DevicePackageManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DevicePackageManager;->removeAllowNotificationApps(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---removeAllowNotificationApps error:"

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
    sget-object v0, Lcom/huawei/hem/nd;->h:Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/hihonor/android/app/admin/DeviceWifiPolicyManager;->addSsidToTrustList(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl  addSSIDToWhiteList error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "HonorImpl ---actionEnableApp "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/huawei/hem/nd;->f:Lcom/hihonor/android/app/admin/DeviceApplicationManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Lcom/hihonor/android/app/admin/DeviceApplicationManager;->removeDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl ---actionEnableApp error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z()V
    .locals 3

    const-string v0, "HonorImpl enableSDupgrade"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v1, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setSdCardUpdateDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "HonorImpl enable sdupgrade  exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 2

    :try_start_0
    const-string p1, "HonorImpl disable sdcard "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/huawei/hem/nd;->c:Lcom/hihonor/android/app/admin/DeviceRestrictionManager;

    sget-object v0, Lcom/huawei/hem/nd;->p:Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/hihonor/android/app/admin/DeviceRestrictionManager;->setExternalStorageDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HonorImpl disable sdcard  exception:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
