.class public Lcom/huawei/hem/zd;
.super Lcom/huawei/hem/ae;
.source "LenovoCSDK5Impl.java"


# static fields
.field public static g:Lcom/huawei/hem/zd;


# instance fields
.field public e:Lcom/huawei/hem/c0;

.field public f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/ae;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/zd$a;

    invoke-direct {v0, p0}, Lcom/huawei/hem/zd$a;-><init>(Lcom/huawei/hem/zd;)V

    iput-object v0, p0, Lcom/huawei/hem/zd;->f:Landroid/content/ServiceConnection;

    .line 3
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/app/csdk/CSDKManager;

    invoke-direct {v0, p1}, Landroid/app/csdk/CSDKManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    .line 5
    sput-object p1, Lcom/huawei/hem/ae;->d:Landroid/content/Context;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->X0()V

    return-void
.end method


# virtual methods
.method public C0()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --disableFileShare "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/huawei/hem/ae;->C0()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disallowBluetoothShareV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --disallowBluetoothShareV3-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    const-string v0, "LenovoCSDK5Impl --getNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->X0()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    invoke-static {v0, v1}, Lcom/huawei/hem/b0;->a(Landroid/content/Context;Lcom/huawei/hem/c0;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --csdk5 getNetworkAccessAppWhiteList -error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    const-string v0, "LenovoCSDK5Impl --setNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->X0()V

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->h()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    :try_start_0
    sget-object v1, Lcom/huawei/hem/ae;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/huawei/hem/bc;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/huawei/hem/c0;->y2(Ljava/lang/String;)Lcn/com/microtrust/firewall/aidl/AFWRes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl -- setNetworkAccessAppWhiteList error:"

    .line 8
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/huawei/hem/ae;->O(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :try_start_0
    const-string p2, "LenovoCSDK5Impl disallowWifiDirectV3"

    .line 2
    invoke-static {p2}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->disallowWifiDirectV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string v0, "LenovoCSDK5Impl --disallowWifiDirectV3-error:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string p2, "LenovoCSDK5Impl disallowSetNotificationVolumV3"

    .line 5
    invoke-static {p2}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 6
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->disallowSetNotificationVolumV3(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    const-string v0, "LenovoCSDK5Impl --disallowSetNotificationVolumV3--error:"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    :try_start_2
    const-string p2, "LenovoCSDK5Impl disallowDevModeV3"

    .line 8
    invoke-static {p2}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 9
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->disallowDevModeV3(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    const-string v0, "LenovoCSDK5Impl --disallowDevModeV3-error:"

    .line 10
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_2
    :try_start_3
    const-string p2, "LenovoCSDK5Impl disableMultiUser_v3"

    .line 11
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->disableMultiUser_v3(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    const-string v0, "LenovoCSDK5Impl disableMultiUser_v3 error"

    .line 13
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_3
    :try_start_4
    const-string p2, "LenovoCSDK5Impl disallowMultiUserV3"

    .line 14
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 15
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->disallowMultiUserV3(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    const-string v0, "LenovoCSDK5Impl disallowMultiUserV3 error"

    .line 16
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_4
    :try_start_5
    const-string p2, "LenovoCSDK5Impl disallowAirplaneMode_v3"

    .line 17
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 18
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->disallowAirplaneMode_v3(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p2

    const-string v0, "LenovoCSDK5Impl disallowAirplaneMode_v3 error"

    .line 19
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_5
    :try_start_6
    const-string p2, "LenovoCSDK5Impl disallowAirplaneModeV3"

    .line 20
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 21
    sget-object p2, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {p2, p1}, Landroid/app/csdk/CSDKManager;->disallowAirplaneModeV3(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p1

    const-string p2, "LenovoCSDK5Impl disallowAirplaneModeV3 error"

    .line 22
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 23
    :goto_6
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->V0()V

    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "LenovoCSDK5Impl --setUrlWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->X0()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    invoke-interface {v0}, Lcom/huawei/hem/c0;->I0()Lcn/com/microtrust/firewall/aidl/AFWRes;

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    const-string v1, "*"

    invoke-interface {v0, v1}, Lcom/huawei/hem/c0;->H1(Ljava/lang/String;)Lcn/com/microtrust/firewall/aidl/AFWRes;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    invoke-interface {v1, v0}, Lcom/huawei/hem/c0;->G2(Ljava/lang/String;)Lcn/com/microtrust/firewall/aidl/AFWRes;

    move-result-object v1

    .line 9
    iget-boolean v1, v1, Lcn/com/microtrust/firewall/aidl/AFWRes;->a:Z

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LenovoCSDK5Impl -- csdk5 setUrlWhiteList url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",state:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LenovoCSDK5Impl -- setUrlWhiteList error:"

    .line 11
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public V0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/huawei/hem/ae;->V0()V

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "LenovoCSDK5Impl disallowFactoryReset_v3"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->disallowFactoryReset_v3(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoCSDK5Impl disallowFactoryReset_v3 error"

    .line 4
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v1, "LenovoCSDK5Impl disallowFactoryResetV3"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->disallowFactoryResetV3(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDK5Impl disallowFactoryResetV3 error"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public final X0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    if-nez v0, :cond_0

    const-string v0, "LenovoCSDK5Impl --bindAFWService"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "cn.com.microtrust.firewall.IAFWService"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cn.com.microtrust.firewall"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    sget-object v0, Lcom/huawei/hem/ae;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hem/zd;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
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
    invoke-super {p0, p1}, Lcom/huawei/hem/ae;->b0(Ljava/util/List;)V

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "LenovoCSDK5Impl enableWifiAdvanceSettingsV3"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->disallowWifiAdvanceSettingsV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl enableWifiAdvanceSettingsV3 error"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v0, "LenovoCSDK5Impl enableWifiAdvanceSettings_v3"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->disallowWifiadvancesettings_v3(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "LenovoCSDK5Impl enableWifiAdvanceSettings_v3 error"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --disableBluetooth "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/huawei/hem/ae;->disableBluetooth()V

    :try_start_0
    const-string v0, "LenovoCSDK5Impl --disallowBluetoothV3 "

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disallowBluetoothV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --disallowBluetoothV3 -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v0, "LenovoCSDK5Impl --enableBluetoothV3 "

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableBluetoothV3(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --enableBluetoothV3 -error:"

    .line 8
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableFireWall()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --disableFireWall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->X0()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/c0;->j2(Z)Lcn/com/microtrust/firewall/aidl/AFWRes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl -- disableFireWall error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 3

    const-string v0, "LenovoCSDK5Impl --disableGPS "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/huawei/hem/ae;->disableGPS()V

    :try_start_0
    const-string v0, "LenovoCSDK5Impl --disallowLocationV3 "

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disallowLocationV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --disallowLocationV3 -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableLocationV3(Z)Z

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LenovoCSDK5Impl disable--enableLocationV3 state:"

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

    const-string v1, "LenovoCSDK5Impl --enableLocationV3 true:"

    .line 8
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public disableScreenShot()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --disableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/huawei/hem/ae;->disableScreenShot()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableCaptureScreenV3(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --enableCaptureScreenV3-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --enableBluetooth "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/huawei/hem/ae;->enableBluetooth()V

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disallowBluetoothV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --enableBluetooth -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v0, "LenovoCSDK5Impl --enableBluetoothV3 "

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableBluetoothV3(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --enableBluetoothV3 -error:"

    .line 8
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableFireWall()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --enableFireWall "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->X0()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/c0;->j2(Z)Lcn/com/microtrust/firewall/aidl/AFWRes;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LenovoCSDK5Impl  read fire wall status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    invoke-interface {v1}, Lcom/huawei/hem/c0;->n1()Lcn/com/microtrust/firewall/aidl/AFWRes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl -- enableFireWall error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 3

    const-string v0, "LenovoCSDK5Impl --enableGPS "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/huawei/hem/ae;->enableGPS()V

    :try_start_0
    const-string v0, "LenovoCSDK5Impl enable--disallowLocationV3 "

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disallowLocationV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl enable--disallowLocationV3 -error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_0
    :try_start_1
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableLocationV3(Z)Z

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LenovoCSDK5Impl --enableLocationV3 state:"

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

    const-string v1, "LenovoCSDK5Impl --enableLocationV3 true:"

    .line 8
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public enableScreenShot()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --enableScreenShot"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/huawei/hem/ae;->enableScreenShot()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->enableCaptureScreenV3(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --enableCaptureScreenV3-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/huawei/hem/ae;->f()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "LenovoCSDK5Impl enableFactoryReset_v3"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->disallowFactoryReset_v3(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "LenovoCSDK5Impl enableFactoryReset_v3 error"

    .line 4
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v1, "LenovoCSDK5Impl enableFactoryResetV3"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v1, v0}, Landroid/app/csdk/CSDKManager;->disallowFactoryResetV3(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "LenovoCSDK5Impl enableFactoryResetV3 error"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --cleanNetworkAccessAppWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->X0()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    invoke-interface {v0}, Lcom/huawei/hem/c0;->p3()Lcn/com/microtrust/firewall/aidl/AFWRes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl -- cleanNetworkAccessAppWhiteList error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public o0()V
    .locals 2

    const-string v0, "LenovoCSDK5Impl --enableFileShare "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/huawei/hem/ae;->o0()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/csdk/CSDKManager;->disallowBluetoothShareV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl --disallowBluetoothShareV3-error:"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hem/ae;->r(Ljava/util/List;)V

    const/4 p1, 0x1

    :try_start_0
    const-string v0, "LenovoCSDK5Impl disallowWifiAdvanceSettingsV3"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->disallowWifiAdvanceSettingsV3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl disallowWifiAdvanceSettingsV3 error"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    :try_start_1
    const-string v0, "LenovoCSDK5Impl disallowWifiadvancesettings_v3"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    invoke-virtual {v0, p1}, Landroid/app/csdk/CSDKManager;->disallowWifiadvancesettings_v3(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "LenovoCSDK5Impl disallowWifiadvancesettings_v3 error"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
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

    const-string v0, "LenovoCSDK5Impl --getUrlWhiteList "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/zd;->X0()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/zd;->e:Lcom/huawei/hem/c0;

    invoke-interface {v0}, Lcom/huawei/hem/c0;->P()Lcn/com/microtrust/firewall/aidl/AFWRes;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcn/com/microtrust/firewall/aidl/AFWRes;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LenovoCSDK5Impl -- getUrlWhiteList error:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
