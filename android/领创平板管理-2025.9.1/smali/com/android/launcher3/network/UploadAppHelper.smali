# RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。
.class public Lcom/android/launcher3/network/UploadAppHelper;
.super Ljava/lang/Object;
.source "UploadAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/UploadAppHelper$UploadAppHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UploadAppHelper "


# instance fields
.field public ltkSpUtil:Lcom/huawei/hem/p5;

.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/huawei/hem/p5$b;->a:Lcom/huawei/hem/p5;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/UploadAppHelper;->ltkSpUtil:Lcom/huawei/hem/p5;

    .line 5
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/UploadAppHelper;->mHttpCore:Lcom/huawei/hem/rb;

    .line 6
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 7
    iput-object v0, p0, Lcom/android/launcher3/network/UploadAppHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/UploadAppHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/UploadAppHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/UploadAppHelper;)Lcom/huawei/hem/p5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/UploadAppHelper;->ltkSpUtil:Lcom/huawei/hem/p5;

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher3/network/UploadAppHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/UploadAppHelper$UploadAppHolder;->access$000()Lcom/android/launcher3/network/UploadAppHelper;

    move-result-object v0

    return-object v0
.end method

.method private getUploadApps(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/network/params/UploadAppItem;",
            ">;"
        }
    .end annotation

    const-string v0, ";"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "UploadAppHelper  get alread install apps "

    .line 2
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2}, Lcom/huawei/hem/ic;->M0()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, Lcom/huawei/hem/q0;->F()Ljava/util/List;

    move-result-object v2

    .line 6
    :cond_0
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    invoke-static {v4, v0}, Lcom/huawei/hem/l9;->Q(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 12
    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x2000

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 16
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 17
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/launcher3/network/UploadAppHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    new-instance v6, Lcom/android/launcher3/network/params/UploadAppItem;

    invoke-direct {v6}, Lcom/android/launcher3/network/params/UploadAppItem;-><init>()V

    .line 19
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    .line 21
    invoke-virtual {v6, v8}, Lcom/android/launcher3/network/params/UploadAppItem;->setIsWhiteApp(I)V

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v6, v5}, Lcom/android/launcher3/network/params/UploadAppItem;->setIsWhiteApp(I)V

    .line 23
    :goto_2
    invoke-virtual {v7, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/network/params/UploadAppItem;->setAppname(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v6, v4}, Lcom/android/launcher3/network/params/UploadAppItem;->setPackagename(Ljava/lang/String;)V

    .line 25
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v4}, Lcom/android/launcher3/network/params/UploadAppItem;->setVersioncode(I)V

    .line 26
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/network/params/UploadAppItem;->setVersionname(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadAppHelper  get alread install apps exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_6
    return-object v1
.end method

# RE I/O 读取字符串偏好（SharedPreferences.getString）、读取整数偏好（SharedPreferences.getInt）。
.method private isNeedUpload()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/launcher3/network/UploadAppHelper;->ltkSpUtil:Lcom/huawei/hem/p5;

    .line 5
    iget-object v3, v2, Lcom/huawei/hem/p5;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, v2, Lcom/huawei/hem/p5;->c:Lcom/huawei/hem/ac;

    .line 7
    iget-object v3, v3, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v4, "appupload_date"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iput-object v3, v2, Lcom/huawei/hem/p5;->a:Ljava/lang/String;

    .line 9
    :cond_1
    iget-object v2, v2, Lcom/huawei/hem/p5;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/network/UploadAppHelper;->ltkSpUtil:Lcom/huawei/hem/p5;

    .line 12
    iget v3, v0, Lcom/huawei/hem/p5;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 13
    iget-object v3, v0, Lcom/huawei/hem/p5;->c:Lcom/huawei/hem/ac;

    .line 14
    iget-object v3, v3, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v4, "app_status_changed"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 15
    iput v3, v0, Lcom/huawei/hem/p5;->b:I

    .line 16
    :cond_3
    iget v0, v0, Lcom/huawei/hem/p5;->b:I

    if-ne v0, v2, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 1
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private uploadAppList()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/network/UploadAppHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/network/UploadAppHelper;->getUploadApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "UploadAppHelper  no need upload apps"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/android/launcher3/network/params/ListParams;

    iget-object v2, p0, Lcom/android/launcher3/network/UploadAppHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/ListParams;-><init>(Landroid/content/Context;)V

    .line 5
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/ListParams;->setReportlist(Ljava/util/List;)V

    .line 9
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    const-string v2, "com.linspirer.device.setdeviceapps"

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 11
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/launcher3/network/UploadAppHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v1, :cond_1

    .line 13
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    const-string v1, "https://bd.linspirer.com:883/public-interface.php"

    .line 14
    iput-object v1, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/android/launcher3/network/UploadAppHelper$1;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/UploadAppHelper$1;-><init>(Lcom/android/launcher3/network/UploadAppHelper;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAndUpload()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/UploadAppHelper;->isNeedUpload()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UploadAppHelper no need upload "

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/network/UploadAppHelper;->uploadAppList()V

    return-void
.end method

.method public uploadApps()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UploadAppHelper no need upload"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/network/UploadAppHelper;->uploadAppList()V

    return-void
.end method
