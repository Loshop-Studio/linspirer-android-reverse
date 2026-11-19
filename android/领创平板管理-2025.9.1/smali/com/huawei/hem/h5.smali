.class public Lcom/huawei/hem/h5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeReceiver.java"


# static fields
.field public static a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string p1, "NetworkChangeReceiver ===onAvailable==="

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    sget-wide v2, Lcom/huawei/hem/h5;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    return-void

    .line 5
    :cond_0
    sput-wide v0, Lcom/huawei/hem/h5;->a:J

    .line 6
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 7
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 8
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->M()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hem/y4;->G(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 11
    invoke-static {}, Lcom/huawei/hem/ce;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 12
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    .line 13
    aget-object v5, v2, v4

    .line 14
    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    const-string p1, "has no permission no need sync time"

    .line 15
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v1, :cond_9

    .line 16
    invoke-static {}, Lcom/android/launcher3/network/ControlHelper;->getInstance()Lcom/android/launcher3/network/ControlHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/ControlHelper;->reportControlStatus()V

    .line 17
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 18
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->R()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 19
    :cond_5
    sget-object p1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 20
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 21
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->G(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XP12"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "zhongyukejiao"

    const-string v0, "dongfangwendao"

    if-ne p1, v0, :cond_7

    .line 24
    :cond_6
    sget-object p1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 25
    invoke-static {p1}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->pullSynchronizeTimeBoolean(Landroid/content/Context;)V

    .line 26
    :cond_7
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    invoke-static {}, Lcom/android/launcher3/network/ReciverPushHelper;->getInstance()Lcom/android/launcher3/network/ReciverPushHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/ReciverPushHelper;->pullCommandFromServer()V

    .line 28
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 29
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_8

    const-string p1, "NetworkChangeReceiver  no need update userInfo"

    .line 31
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_8
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    .line 33
    new-instance v1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 34
    new-instance v2, Lcom/android/launcher3/network/params/Params;

    .line 35
    sget-object v3, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 36
    invoke-direct {v2, v3}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v2, p1}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/android/launcher3/network/RequestUrl;->UPDATE_USER_INFO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 39
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/huawei/hem/vb;

    invoke-direct {p1, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 41
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 42
    iput-object v0, p1, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iput-object v0, p1, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/huawei/hem/g5;

    const-class v1, Lcom/android/launcher3/model/UpdatedUserInfo;

    invoke-direct {v0, p0, v1}, Lcom/huawei/hem/g5;-><init>(Lcom/huawei/hem/h5;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p1, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    .line 47
    :goto_2
    invoke-static {}, Lcom/android/launcher3/network/LocationHelper;->getInstance()Lcom/android/launcher3/network/LocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/LocationHelper;->startLocation()V

    .line 48
    invoke-static {}, Lcom/android/launcher3/network/DeviceInfoUploadHelper;->uploadInfo()V

    .line 49
    invoke-static {}, Lcom/android/launcher3/network/TacticsHelper;->getInstance()Lcom/android/launcher3/network/TacticsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/TacticsHelper;->request()V

    .line 50
    invoke-static {}, Lcom/huawei/hem/r5;->a()Lcom/huawei/hem/r5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/r5;->b()V

    .line 51
    :cond_9
    invoke-static {}, Lcom/huawei/hem/y4;->z()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 52
    invoke-static {}, Lcom/android/launcher3/network/ReciverPushHelper;->getInstance()Lcom/android/launcher3/network/ReciverPushHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/ReciverPushHelper;->pullCommandFromServer()V

    :cond_a
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const-string p1, "NetworkChangeReceiver ===onCapabilitiesChanged==="

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    const-string p1, "NetworkChangeReceiver ===onLinkPropertiesChanged==="

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    const-string p1, "NetworkChangeReceiver ===onLosing==="

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p1, "NetworkChangeReceiver ===onLost==="

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "NetworkChangeReceiver ===onUnavailable==="

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
