# RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。
.class public Lcom/android/launcher3/network/UrlWhiteHelper;
.super Ljava/lang/Object;
.source "UrlWhiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/UrlWhiteHelper$UrlWhiteHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UrlWhiteHelper "


# instance fields
.field public defaultUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->mContext:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->mHttpCore:Lcom/huawei/hem/rb;

    .line 9
    invoke-direct {p0}, Lcom/android/launcher3/network/UrlWhiteHelper;->initDefaultUrls()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/UrlWhiteHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/UrlWhiteHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UrlWhiteHelper  -- hem msg = "

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

.method public static synthetic access$100(Lcom/android/launcher3/network/UrlWhiteHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/UrlWhiteHelper;->prepareToWriteUrls(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/network/UrlWhiteHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/network/UrlWhiteHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/UrlWhiteHelper;->handleByNoNeedRequest()V

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
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hem/license/HemLicenseManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hem/license/HemLicenseManager;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/huawei/hem/e5;->a:Lcom/huawei/hem/e5;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/license/HemLicenseManager;->setStatusListener(Lcom/huawei/hem/license/HemLicenseStatusListener;)V

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hem/license/HemLicenseManager;->activeLicense()Lcom/huawei/hem/w7;

    :cond_0
    return-void
.end method

.method private convertIPs(Ljava/util/List;)Ljava/util/List;
    .locals 8
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
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/ce;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".0/24"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "\\."

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "."

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v7, v1, v3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".0-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v3

    const-string v3, ".255"

    invoke-static {v2, v1, v3}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v2, ".0.0/16"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".0.0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v4

    const-string v3, ".255.255"

    invoke-static {v2, v1, v3}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v0

    :cond_3
    return-object p1
.end method

.method public static getInstance()Lcom/android/launcher3/network/UrlWhiteHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/UrlWhiteHelper$UrlWhiteHolder;->access$000()Lcom/android/launcher3/network/UrlWhiteHelper;

    move-result-object v0

    return-object v0
.end method

# RE I/O 读取字符串偏好（SharedPreferences.getString）。
.method private handleByNoNeedRequest()V
    .locals 4

    const-string v0, "UrlWhiteHelper write url by no need request from server or request error"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/y5;->I:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 5
    iget-object v1, v1, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v2, "server_url_white_list"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iput-object v1, v0, Lcom/huawei/hem/y5;->I:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/huawei/hem/y5;->I:Ljava/lang/String;

    const-string v1, ","

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/network/UrlWhiteHelper;->prepareToWriteUrls(Ljava/util/List;)V

    return-void
.end method

.method private initDefaultUrls()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "download.ndwill.com.w.kunlunea.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "appstore.ndwill.com.w.kunlunea.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "appstore.ndwill.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "ndwill.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "linspirer.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "60.205.182.110"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "ip.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "cgicol.amap.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "apilocate.amap.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "apiinit.amap.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "restapi.amap.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "logs.amap.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "mpush-api.aliyun.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "acs4public.m.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "accscdn4public.m.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "msgacs.cn-zhangjiakou.aliyuncs.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "jmacs.cn-zhangjiakou.aliyuncs.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "192.168.0.0/16"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "60.205.86.234"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "60.205.176.16"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "47.95.50.184"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "hshh.org"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "pool.ntp.org"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "adups.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "adups.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "mayitek.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "ota.lenovo.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "ota-cdn.lenovo.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "ziyacloud.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "asia.pool.ntp.org"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "mdmconsole.smartedu.lenovo.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "redstone.net.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "update.platform.hihonorcloud.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "ntp3.aliyun.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "2.android.pool.ntp.org"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "tensafe.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "log.aliyuncs.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "connectivitycheck.platform.hicloud.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "hemmdm-drcn.op.dbankcloud.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "contentcenter-drcn.dbankcdn.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    const-string v1, "hem2c-drcn.op.dbankcloud.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

# RE I/O 读取字符串偏好（SharedPreferences.getString）、保存字符串偏好（SharedPreferences$Editor.putString）。
.method private prepareToWriteUrls(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "zyyx.cc"

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "zykj.org"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v1, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->s()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    .line 11
    invoke-static {v1, v2}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 14
    iget-object v3, v2, Lcom/huawei/hem/y5;->t0:Ljava/lang/String;

    const-string v4, "total_url_md5"

    if-nez v3, :cond_2

    .line 15
    iget-object v3, v2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    const/4 v5, 0x0

    .line 16
    iget-object v3, v3, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    iput-object v3, v2, Lcom/huawei/hem/y5;->t0:Ljava/lang/String;

    .line 18
    :cond_2
    iget-object v2, v2, Lcom/huawei/hem/y5;->t0:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "UrlWhiteHelper  white url are same no need write to system ."

    .line 20
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher3/network/UrlWhiteHelper;->convertIPs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/network/UrlWhiteHelper;->writeUrls(Ljava/util/List;)V

    .line 22
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v2, v0, Lcom/huawei/hem/y5;->I:Ljava/lang/String;

    if-eq v2, p1, :cond_4

    .line 24
    iput-object p1, v0, Lcom/huawei/hem/y5;->I:Ljava/lang/String;

    .line 25
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 26
    iget-object v2, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "server_url_white_list"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    iget-object p1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 29
    iput-object v1, p1, Lcom/huawei/hem/y5;->t0:Ljava/lang/String;

    .line 30
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 31
    iget-object v0, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private writeUrls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UrlWhiteHelper  \u9700\u8981\u5173\u6ce8\u7684\u65e5\u5fd7\uff0c\u7f51\u5740\u767d\u540d\u5355\u662f\u5426\u5305\u542b\u7a7a\u683c\u548c\u7279\u6b8a\u7b26\u53f7\uff1a"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ic;->V(Ljava/util/List;)Z

    return-void
.end method


# virtual methods
.method public getLspDefaultUrl()Ljava/util/List;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->defaultUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public request()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UrlWhiteHelper  other case no need request"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/android/launcher3/network/UrlWhiteHelper;->handleByNoNeedRequest()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/network/UrlWhiteHelper;->checkHemActive()V

    .line 5
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 6
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->WHITE_URL_METHOD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/android/launcher3/network/params/Params;

    iget-object v2, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v2, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->mHttpCore:Lcom/huawei/hem/rb;

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

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, v2, Lcom/huawei/hem/tb;->d:Z

    .line 17
    new-instance v0, Lcom/android/launcher3/network/UrlWhiteHelper$1;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/UrlWhiteHelper$1;-><init>(Lcom/android/launcher3/network/UrlWhiteHelper;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 18
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "UrlWhiteHelper request white url exception "

    .line 19
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 20
    invoke-direct {p0}, Lcom/android/launcher3/network/UrlWhiteHelper;->handleByNoNeedRequest()V

    :goto_0
    return-void
.end method

.method public writeUrlFromLocal()V
    .locals 2

    const-string v0, "UrlWhiteHelper application init must write white url"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/network/UrlWhiteHelper;->request()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "UrlWhiteHelper disable firewall need clear white urls or device is release control"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/network/UrlWhiteHelper;->writeUrls(Ljava/util/List;)V

    :goto_1
    return-void
.end method
