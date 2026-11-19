# RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。
.class public Lcom/android/launcher3/network/DeviceInfoUploadHelper;
.super Ljava/lang/Object;
.source "DeviceInfoUploadHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceInfoUploadHelper "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# RE I/O 读取字符串偏好（SharedPreferences.getString）。
.method public static uploadInfo()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 3
    new-instance v1, Lcom/huawei/hem/rb;

    invoke-direct {v1}, Lcom/huawei/hem/rb;-><init>()V

    .line 4
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    invoke-static {}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->getCloudPushService()Lcom/alibaba/sdk/android/push/CloudPushService;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Lcom/alibaba/sdk/android/push/CloudPushService;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, v2, Lcom/huawei/hem/y5;->K:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 9
    iget-object v4, v4, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v5, "push_token"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    iput-object v4, v2, Lcom/huawei/hem/y5;->K:Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v4, v2, Lcom/huawei/hem/y5;->K:Ljava/lang/String;

    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "DeviceInfoUploadHelper last token is not empty and tokens are the same no need upload"

    .line 13
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    :try_start_0
    new-instance v4, Lcom/android/launcher3/model/DeviceInfoParams;

    invoke-direct {v4, v0}, Lcom/android/launcher3/model/DeviceInfoParams;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 16
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 17
    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/DeviceInfoParams;->setBrand(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/DeviceInfoParams;->setDeviceid(Ljava/lang/String;)V

    .line 19
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/DeviceInfoParams;->setSystemversion(Ljava/lang/String;)V

    .line 21
    invoke-static {v0}, Lcom/huawei/hem/de;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/DeviceInfoParams;->setRomavailablesize(Ljava/lang/String;)V

    .line 22
    invoke-static {v0}, Lcom/huawei/hem/de;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/DeviceInfoParams;->setRomtotalsize(Ljava/lang/String;)V

    .line 23
    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/DeviceInfoParams;->setRomversion(Ljava/lang/String;)V

    .line 25
    invoke-static {v0}, Lcom/huawei/hem/de;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/DeviceInfoParams;->setWifimacaddress(Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Lcom/huawei/hem/de;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/DeviceInfoParams;->setSimserialnumber(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/DeviceInfoParams;->setToken(Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Lcom/huawei/hem/de;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/model/DeviceInfoParams;->setAndroid_id(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    const-string v5, "com.linspirer.device.setdevice"

    .line 30
    invoke-virtual {v0, v5}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 31
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 32
    new-instance v4, Lcom/huawei/hem/vb;

    invoke-direct {v4, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 33
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 34
    iput-object v1, v4, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 35
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    iput-object v0, v4, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/android/launcher3/network/DeviceInfoUploadHelper$1;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/network/DeviceInfoUploadHelper$1;-><init>(Ljava/lang/Class;Lcom/huawei/hem/y5;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
