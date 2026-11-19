# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/LicenseHelper;
.super Ljava/lang/Object;
.source "LicenseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/LicenseHelper$LicenseHelperHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LicenseHelper "


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public mLicenseCallBack:Lcom/huawei/hem/i3;

.field public userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/LicenseHelper;->mContext:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/network/LicenseHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 7
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/LicenseHelper;->mHttpCore:Lcom/huawei/hem/rb;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/LicenseHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/LicenseHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/LicenseHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/LicenseHelper;->mLicenseCallBack:Lcom/huawei/hem/i3;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/network/LicenseHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/LicenseHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher3/network/LicenseHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/LicenseHelper$LicenseHelperHolder;->access$000()Lcom/android/launcher3/network/LicenseHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setCallBack(Lcom/huawei/hem/i3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/LicenseHelper;->mLicenseCallBack:Lcom/huawei/hem/i3;

    return-void
.end method

.method public startCheck(Landroid/content/Context;ZZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/LicenseHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->u()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    const-string p2, "LicenseHelper not from login but license is empty need check"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    const-class p2, Lcom/android/launcher3/activity/LicenseActivity;

    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/launcher3/network/LicenseHelper;->startRegisterLicense(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public startRegisterLicense(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "LicenseHelper begin to checkLicense from server"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/android/launcher3/network/params/LicenseParmas;

    iget-object v1, p0, Lcom/android/launcher3/network/LicenseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/network/params/LicenseParmas;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/launcher3/network/params/LicenseParmas;->setLicenseserial(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/LicenseParmas;->setDeviceid(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/LicenseParmas;->setDevicesn(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    const-string v2, "com.linspirer.license.register"

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/network/LicenseHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v0, :cond_1

    .line 12
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 13
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->LICENSE_URL:Ljava/lang/String;

    .line 14
    iput-object v0, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/android/launcher3/network/LicenseHelper$1;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/network/LicenseHelper$1;-><init>(Lcom/android/launcher3/network/LicenseHelper;Ljava/lang/Class;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 19
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper;->mLicenseCallBack:Lcom/huawei/hem/i3;

    if-eqz p1, :cond_2

    .line 22
    check-cast p1, Lcom/huawei/hem/l2;

    invoke-virtual {p1}, Lcom/huawei/hem/l2;->b()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "LicenseHelper license is empty or release control no need check"

    .line 23
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
