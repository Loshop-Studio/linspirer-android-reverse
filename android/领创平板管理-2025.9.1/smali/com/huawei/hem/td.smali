.class public Lcom/huawei/hem/td;
.super Lcom/huawei/hem/jc;
.source "HuaweiEmui3Impl.java"


# static fields
.field public static b:Lcom/huawei/hem/td;

.field public static c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

.field public static d:Landroid/content/ComponentName;

.field public static e:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

.field public static f:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/td;

    invoke-direct {v0}, Lcom/huawei/hem/td;-><init>()V

    sput-object v0, Lcom/huawei/hem/td;->b:Lcom/huawei/hem/td;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method

.method public static W0(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hem/td;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "HuaweiEmui3Impl"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    .line 2
    new-instance p1, Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    invoke-direct {p1, p0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    .line 3
    sput-object p0, Lcom/huawei/hem/td;->f:Landroid/content/Context;

    .line 4
    :try_start_0
    new-instance p0, Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    invoke-direct {p0}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;-><init>()V

    sput-object p0, Lcom/huawei/hem/td;->e:Lcom/huawei/android/app/admin/DeviceHwSystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "huawei_emui3  create DeviceHwSystemManager model error:"

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_0
    sget-object p0, Lcom/huawei/hem/td;->b:Lcom/huawei/hem/td;

    return-object p0
.end method


# virtual methods
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

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->L0()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hem/td;->Q0(Ljava/util/List;)V

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->addDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "add disallowed uninstall  exception:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public B0(Ljava/util/List;)V
    .locals 1
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hem/td;->y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "huawei_emui3 silent install error:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->getNetworkAccessAppWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "get network access appwhite exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->cleanNetworkAccessAppWhiteList(Landroid/content/ComponentName;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->addNetworkAccessAppWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set network access appwhite exception:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
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

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->getDisallowedUninstallPackageList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "get disallow uninstall exception:"

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

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->getInstallPackageWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 getAppWhiteList== exception:"

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

.method public N(J)Z
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setSysTime(Landroid/content/ComponentName;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "huawei_emui3 setSystemTime== exception:"

    .line 2
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "huawei_emui3 "

    const-string v1, "system init start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->getIPWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ips====>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->b(Ljava/lang/String;)V

    .line 5
    :try_start_0
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setCustomLauncher(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string v1, "huawei_emui3 set custom launcher exception:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 7
    :goto_0
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setForbidKillAppWhitelist(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    const-string v1, "huawei_emui3 set forbid kill app  exception:"

    .line 10
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    const/4 p2, 0x1

    .line 11
    :try_start_2
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setCustomSettings(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    const-string v2, "huawei_emui3 set custom setting  exception:"

    .line 12
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 13
    :goto_2
    :try_start_3
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setStatusBarExpandPanelDisabled(Landroid/content/ComponentName;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    const-string v2, "huawei_emui3 set status bar exception:"

    .line 14
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 15
    :goto_3
    :try_start_4
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->enableInstallPackage(Landroid/content/ComponentName;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    const-string v2, "huawei_emui3 install package exception:"

    .line 16
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 17
    :goto_4
    :try_start_5
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setDeviceAdminActivate(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    const-string v1, "huawei_emui3 actionActiveDeviceAdmin:"

    .line 18
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 19
    :goto_5
    :try_start_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.deskclock"

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.calendar"

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->addAllowNotificationApps(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p1

    const-string v1, "HuaweiImpl:"

    .line 23
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 24
    :goto_6
    invoke-virtual {p0}, Lcom/huawei/hem/td;->V0()V

    .line 25
    :try_start_7
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setSafeModeDisabled(Landroid/content/ComponentName;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p1

    const-string v1, "huawei_emui3 safe model exception:"

    .line 26
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 27
    :goto_7
    :try_start_8
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setTimeModifyDisabled(Landroid/content/ComponentName;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception p1

    const-string v1, "huawei_emui3 set time modify exception:"

    .line 28
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 29
    :goto_8
    :try_start_9
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setShareInterfaceDisabled(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception p1

    const-string p2, "huawei_emui3 set share exception:"

    .line 30
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_9
    const-string p1, "system init end"

    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {v0, p1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "huawei_emui3 silent uninstall error:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->removeDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "remove disallow uninstall exception:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public R(I)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setControlMode(Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set control mode exception:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->X0()Z

    move-result v0

    const-string v1, "huawei_emui3 set url white list exception:"

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->cleanNetworkAccessWhiteList(Landroid/content/ComponentName;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->addNetworkAccessWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setIPWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public V0()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setFactoryResetDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "disable factory exception:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public final X0()Z
    .locals 7

    const-string v0, "ro.build.date"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/de;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "yyyyMMddHHmmss"

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> destTime == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, 0x1258749f02c0L

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", romBuildTime == "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const-string v0, "==> using new interface"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "==> using old interface"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    :cond_1
    return v2
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

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v0, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setWifiAdvancedMenuHidden(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "huawei_emui3 show wifi advance== exception:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v0, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setExternalStorageDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "enable sdcard exception:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 3
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
    sget-object v0, Lcom/huawei/hem/td;->e:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hem/td;->e:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->getSuperWhiteListForHwSystemManger(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super applist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/huawei/hem/td;->e:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->removeSuperWhiteListForHwSystemManger(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/huawei/hem/td;->e:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;->setSuperWhiteListForHwSystemManger(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    :cond_2
    const-string p1, "set super white list for hw system manager"

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set super white exception:"

    .line 9
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setBackButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 disable back error:"

    .line 2
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
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setBluetoothDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "huawei_emui3 setBluetoothDisabled error:"

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setBluetoothTransferFileDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "huawei_emui3 setBluetoothTransferFileDisabled error:"

    .line 4
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 5
    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setBluetoothSendFileDisabled(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v1, "huawei_emui3 setBluetoothSendFileDisabled error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public disableCamera()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 disable camera error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableFireWall()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->cleanNetworkAccessWhiteList(Landroid/content/ComponentName;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->cleanNetworkAccessAppWhiteList(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "disable firewall exception:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/huawei/hem/td;->V(Ljava/util/List;)Z

    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setGpsDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 disable gps error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setGpsStatus(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "huawei_emui3 disable gps status error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableHome()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setHomeButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 disable home  error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableMobileData()V
    .locals 4

    const-string v0, "huawei_emui3 disableMobileData== exception:"

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setDataConnectivityDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->openMobileData(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/td;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/td;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/td;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/td;->disableShortPressPower()V

    return-void
.end method

.method public disableOTG()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setOTGUSBDiskDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "disable otg exception:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setRecentTaskButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 disable recent error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setPowerKeyDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 disable short press error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableSpeech()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setVoiceDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "huawei_emui3 setVoiceDisabled== exception:"

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setSMSDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "huawei_emui3 setSMSDisabled== exception:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableUsb()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "huawei_emui3  setUSBDataDisabled error:"

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setAdbDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "huawei_emui3  setAdbDisabled error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableVolume()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setVolumeKeyDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 disable volume error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setApplicationDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "huawei_emui3 disable app  error:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setBackButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 enable home error:"

    .line 2
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
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setBluetoothDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 setBluetoothDisabled error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setBluetoothTransferFileDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "huawei_emui3 setBluetoothTransferFileDisabled error:"

    .line 4
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 5
    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setBluetoothSendFileDisabled(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v1, "huawei_emui3 setBluetoothSendFileDisabled error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public enableCamera()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 enable camera error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setGpsDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 enable gps error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setGpsStatus(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "huawei_emui3 enable gps status error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableHome()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setHomeButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 enable home  error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableMobileData()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setDataConnectivityDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 enable mobile data:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->openMobileData(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "huawei_emui3 enableMobileData== exception:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/td;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/td;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/td;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/td;->enableShortPressPower()V

    return-void
.end method

.method public enableOTG()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setOTGUSBDiskDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "enable otg exception:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setRecentTaskButtonDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 enable recent error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setPowerKeyDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 enable short press error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableSpeech()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setVoiceDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "huawei_emui3 enable setVoiceDisabled== exception:"

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setSMSDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "huawei_emui3 enable setSMSDisabled== exception:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableUsb()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "huawei_emui3  setUSBDataDisabled error:"

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 3
    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setAdbDisabled(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "huawei_emui3  setAdbDisabled error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableVolume()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setVolumeKeyDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 enable volume error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setFactoryResetDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "enable factory exception:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->rebootDevice(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 actionRebootDevice error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->cleanNetworkAccessAppWhiteList(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "clean network access appwhite exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public h0()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->shutdownDevice(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 actionShutdown error:"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public k0(Ljava/util/List;)V
    .locals 1
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hem/td;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p(Z)I
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v0, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->getControlMode(Landroid/content/ComponentName;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "get control mode exception:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x1

    return p1
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

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v0, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setWifiAdvancedMenuHidden(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "huawei_emui3 hide wifi advance== exception:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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
    const-string v0, "huawei_emui3 setAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/td;->M0()Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->removeInstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->addInstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "huawei_emui3 setAppWhiteList== exception:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 4

    const-string v0, "huawei_emui3 set factory reset error:"

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/td;->f()V

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "M2-A01w"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "M2-A01L"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HUAWEI M2-A01W"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HUAWEI M2-801W"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HUAWEI M2-803L"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HUAWEI M2-A01L"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 9
    sget-object v2, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v3, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setFactoryReset(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    .line 10
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lcom/huawei/hem/td;->f:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    :try_start_1
    const-string v0, "WipeSoldier -- wipeDataIncludeSDCard.........."

    .line 12
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataIncludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 16
    :cond_3
    :try_start_2
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setFactoryReset(Landroid/content/ComponentName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 17
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public t0()Ljava/util/List;
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
    invoke-virtual {p0}, Lcom/huawei/hem/td;->X0()Z

    move-result v0

    const-string v1, "huawei_emui3 get url white exception:"

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->getNetworkAccessWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->getIPWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v2, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->clearPackageData(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "huawei_emui3 actionClearCache== exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v1, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setApplicationDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "huawei_emui3 enable app  error:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/td;->c:Lcom/huawei/android/app/admin/HwDevicePolicyManager;

    sget-object v0, Lcom/huawei/hem/td;->d:Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/huawei/android/app/admin/HwDevicePolicyManager;->setExternalStorageDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "disable sdcard exception:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
