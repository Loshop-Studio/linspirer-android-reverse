# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/HiScreenHelper;
.super Lcom/huawei/hem/r4;
.source "HiScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/HiScreenHelper$HiScreenHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HiScreenHelper"


# instance fields
.field public mLogoPath:Ljava/lang/String;

.field public mScreenPartSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;"
        }
    .end annotation
.end field

.field public onHiBoardChangeListener:Lcom/huawei/hem/l3;

.field public onMainScreenChangeListener:Lcom/huawei/hem/m3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/r4;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/HiScreenHelper;->mScreenPartSettings:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/HiScreenHelper;Lcom/android/launcher3/model/HiBoardScreen;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/HiScreenHelper;->handleHiBoardResult(Lcom/android/launcher3/model/HiBoardScreen;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/network/HiScreenHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/network/HiScreenHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher3/network/HiScreenHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/HiScreenHelper$HiScreenHolder;->access$000()Lcom/android/launcher3/network/HiScreenHelper;

    move-result-object v0

    return-object v0
.end method

.method private handleHiBoardResult(Lcom/android/launcher3/model/HiBoardScreen;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getScreenPartSettingsDao()Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/model/HiBoardScreen;->getModule_setting()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/launcher3/network/HiScreenHelper;->mScreenPartSettings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/launcher3/network/HiScreenHelper;->mLogoPath:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/network/HiScreenHelper;->updateView(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/android/launcher3/db/model/ScreenPartSettings;

    invoke-direct {v3}, Lcom/android/launcher3/db/model/ScreenPartSettings;-><init>()V

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/ScreenPartSettings;->setPosition(I)V

    .line 12
    invoke-virtual {p1}, Lcom/android/launcher3/model/HiBoardScreen;->getLogo_path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/ScreenPartSettings;->setB_img_path(Ljava/lang/String;)V

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v3, p0, Lcom/android/launcher3/network/HiScreenHelper;->mScreenPartSettings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-virtual {p1}, Lcom/android/launcher3/model/HiBoardScreen;->getLogo_path()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/network/HiScreenHelper;->mLogoPath:Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "HiScreenHelperhiboard data is same with last no need handle"

    .line 17
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "HiScreenHelperhiboard data is not same need handle"

    .line 18
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 20
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx(Ljava/lang/Iterable;)V

    .line 21
    invoke-virtual {p1}, Lcom/android/launcher3/model/HiBoardScreen;->getLogo_path()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/network/HiScreenHelper;->updateView(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private updateView(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/HiScreenHelper;->onMainScreenChangeListener:Lcom/huawei/hem/m3;

    if-eqz v0, :cond_2

    .line 2
    check-cast v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    if-eqz v0, :cond_1

    const-string v1, "BaseHomeFragment  -- onMainScreenChanged --------------------- "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    iput-object p1, v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r:Ljava/util/List;

    .line 5
    iput-object p2, v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->q:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p2, "BaseHomeFragment has no hiboard"

    .line 7
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    iput v1, v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    .line 9
    invoke-virtual {v0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n()V

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 11
    iput p2, v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r(Z)V

    .line 13
    invoke-virtual {v0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n()V

    .line 14
    :goto_0
    iput-boolean v1, v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/launcher3/network/HiScreenHelper;->onHiBoardChangeListener:Lcom/huawei/hem/l3;

    if-eqz p2, :cond_3

    .line 17
    check-cast p2, Lcom/android/launcher3/fragment/home/HiBoardFragment;

    .line 18
    invoke-virtual {p2, p1}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->j(Ljava/util/List;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getLogoPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/HiScreenHelper;->mLogoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenPartSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/HiScreenHelper;->mScreenPartSettings:Ljava/util/List;

    return-object v0
.end method

.method public setLogoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/HiScreenHelper;->mLogoPath:Ljava/lang/String;

    return-void
.end method

.method public setOnHiBoardChangeListener(Lcom/huawei/hem/l3;)Lcom/android/launcher3/network/HiScreenHelper;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/HiScreenHelper;->onHiBoardChangeListener:Lcom/huawei/hem/l3;

    return-object p0
.end method

.method public setOnMainScreenChangeListener(Lcom/huawei/hem/m3;)Lcom/android/launcher3/network/HiScreenHelper;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/HiScreenHelper;->onMainScreenChangeListener:Lcom/huawei/hem/m3;

    return-object p0
.end method

.method public setScreenPartSettings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/HiScreenHelper;->mScreenPartSettings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/network/HiScreenHelper;->mScreenPartSettings:Ljava/util/List;

    return-void
.end method

.method public updateScreenSettings()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HiScreenHelper -- Unable to request the ScreenSettings data for unknown reason ."

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 4
    new-instance v1, Lcom/android/launcher3/network/params/Params;

    iget-object v2, p0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v2, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    const-string v1, "com.linspirer.setting.screen"

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/huawei/hem/r4;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v1, :cond_1

    .line 9
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 10
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 11
    iput-object v1, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/android/launcher3/network/HiScreenHelper$1;

    const-class v1, Lcom/android/launcher3/model/HiBoardScreen;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/HiScreenHelper$1;-><init>(Lcom/android/launcher3/network/HiScreenHelper;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "HiScreenHelper -- get HiScreen Settings error = "

    .line 16
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
