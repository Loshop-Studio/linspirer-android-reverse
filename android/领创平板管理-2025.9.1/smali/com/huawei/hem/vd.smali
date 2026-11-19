.class public Lcom/huawei/hem/vd;
.super Lcom/huawei/hem/pd;
.source "HuaweiEmui8Impl.java"


# static fields
.field public static o:Lcom/huawei/hem/vd;

.field public static p:Lcom/huawei/android/app/admin/DeviceP2PManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hem/pd;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static a1(Landroid/content/Context;Ljava/lang/Class;)Lcom/huawei/hem/vd;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/vd;->o:Lcom/huawei/hem/vd;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/huawei/hem/vd;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hem/vd;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/huawei/hem/vd;->o:Lcom/huawei/hem/vd;

    .line 3
    new-instance p0, Lcom/huawei/android/app/admin/DeviceP2PManager;

    invoke-direct {p0}, Lcom/huawei/android/app/admin/DeviceP2PManager;-><init>()V

    sput-object p0, Lcom/huawei/hem/vd;->p:Lcom/huawei/android/app/admin/DeviceP2PManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/huawei/hem/vd;->o:Lcom/huawei/hem/vd;

    return-object p0
.end method


# virtual methods
.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "huawei_emui8"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v1}, Lcom/huawei/hem/qd;->V0(Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/huawei/hem/pd;->O(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "huawei_emui8----system init start"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, p2}, Lcom/huawei/android/app/admin/DeviceControlManager;->setDefaultLauncher(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string p1, "huawei_emui8-setWifiP2PDisabled-start"

    .line 6
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/huawei/hem/vd;->p:Lcom/huawei/android/app/admin/DeviceP2PManager;

    sget-object p2, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/huawei/android/app/admin/DeviceP2PManager;->setWifiP2PDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string p2, "huawei_emui8-setWifiP2PDisabled-error:"

    .line 8
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    const-string p1, "sysyem init end"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {v0, p1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
