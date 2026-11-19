# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/LocationHelper$LocationHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LocationHelper "


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field public mLocationListener:Lcom/amap/api/location/AMapLocationListener;

.field public mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

.field public mUserInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 5
    new-instance v0, Lcom/android/launcher3/network/LocationHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/network/LocationHelper$1;-><init>(Lcom/android/launcher3/network/LocationHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationListener:Lcom/amap/api/location/AMapLocationListener;

    .line 6
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 7
    iput-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mContext:Landroid/content/Context;

    .line 8
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 9
    iput-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/LocationHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/LocationHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/network/LocationHelper;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/LocationHelper;->handleLocation(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/LocationHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/LocationHelper;->stopLoaction()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/network/LocationHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/LocationHelper$LocationHolder;->access$200()Lcom/android/launcher3/network/LocationHelper;

    move-result-object v0

    return-object v0
.end method

.method private handleLocation(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LocationHelper location sucess"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    .line 4
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    .line 7
    :goto_0
    new-instance v2, Lcom/android/launcher3/db/model/LocationInfo;

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v0, p1, v1}, Lcom/android/launcher3/db/model/LocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v2}, Lcom/android/launcher3/network/LocationHelper;->prepareUpload(Lcom/android/launcher3/db/model/LocationInfo;)V

    goto :goto_1

    :cond_0
    const-string v0, "LocationHelper location Error, ErrCode:"

    .line 10
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private initLocation()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/android/launcher3/network/LocationHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationListener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 3
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 4
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    return-void
.end method

.method private prepareUpload(Lcom/android/launcher3/db/model/LocationInfo;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "LocationHelper no need upload"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/launcher3/db/model/LocationInfo;->setEmail(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/launcher3/network/LocationHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/db/model/LocationInfo;->setUsername(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/DaoSession;->getLocationInfoDao()Lcom/android/launcher3/db/model/LocationInfoDao;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    const-string v3, "LocationHelper  db location size too large need clear"

    .line 11
    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 13
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 15
    invoke-direct {p0, v2, v1, v0}, Lcom/android/launcher3/network/LocationHelper;->uploadLocation(Ljava/util/List;Lcom/android/launcher3/db/model/LocationInfoDao;Ljava/lang/String;)V

    return-void
.end method

.method private stopLoaction()V
    .locals 1

    const-string v0, "LocationHelper location over and stop location server"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :cond_0
    return-void
.end method

.method private uploadLocation(Ljava/util/List;Lcom/android/launcher3/db/model/LocationInfoDao;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/LocationInfo;",
            ">;",
            "Lcom/android/launcher3/db/model/LocationInfoDao;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/ListParams;

    iget-object v1, p0, Lcom/android/launcher3/network/LocationHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/network/params/ListParams;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p3}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/launcher3/network/params/ListParams;->setReportlist(Ljava/util/List;)V

    .line 4
    new-instance p1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {p1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    const-string p3, "com.linspirer.device.setlocations"

    .line 6
    invoke-virtual {p1, p3}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 7
    new-instance p3, Lcom/huawei/hem/rb;

    invoke-direct {p3}, Lcom/huawei/hem/rb;-><init>()V

    .line 8
    new-instance v0, Lcom/huawei/hem/vb;

    invoke-direct {v0, p3}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    const-string p3, "https://bd.linspirer.com:883/public-interface.php"

    .line 9
    iput-object p3, v0, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object p1, v0, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 12
    new-instance p1, Lcom/android/launcher3/network/LocationHelper$2;

    const-class p3, Ljava/lang/Boolean;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/launcher3/network/LocationHelper$2;-><init>(Lcom/android/launcher3/network/LocationHelper;Ljava/lang/Class;Lcom/android/launcher3/db/model/LocationInfoDao;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public startLocation()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/LocationHelper;->initLocation()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    return-void
.end method
