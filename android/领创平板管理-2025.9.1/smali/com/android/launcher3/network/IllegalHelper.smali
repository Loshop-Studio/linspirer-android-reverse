# RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。
.class public Lcom/android/launcher3/network/IllegalHelper;
.super Ljava/lang/Object;
.source "IllegalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/IllegalHelper$IllegalHolder;,
        Lcom/android/launcher3/network/IllegalHelper$IllegalConfig;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IllegalHelper "


# instance fields
.field public illegalCallBack:Lcom/huawei/hem/h3;

.field public illegals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/Illegal;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public mUserInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    .line 5
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mContext:Landroid/content/Context;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->illegals:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mHttpCore:Lcom/huawei/hem/rb;

    .line 9
    invoke-direct {p0}, Lcom/android/launcher3/network/IllegalHelper;->initData()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/IllegalHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/IllegalHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/IllegalHelper;Lcom/android/launcher3/db/model/Illegal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/IllegalHelper;->handleIllegal(Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/network/IllegalHelper;)Lcom/huawei/hem/h3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/IllegalHelper;->illegalCallBack:Lcom/huawei/hem/h3;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/network/IllegalHelper;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/db/model/IllegalEventDao;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/network/IllegalHelper;->insertDB(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/db/model/IllegalEventDao;)V

    return-void
.end method

.method private getIllegalEvent(Ljava/lang/String;)Lcom/android/launcher3/db/model/Illegal;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->illegals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/db/model/Illegal;

    .line 2
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/android/launcher3/network/IllegalHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper$IllegalHolder;->access$000()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object v0

    return-object v0
.end method

.method private handleIllegal(Lcom/android/launcher3/db/model/Illegal;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/Illegal;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/Illegal;->isEliminate_data()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, v1}, Lcom/huawei/hem/ic;->t(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/Illegal;->isLock_workspace()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hem/y4;->q(Landroid/content/Context;)V

    .line 6
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/16 v0, 0xa

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/y5;->d0(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/t3;->b:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getIllegalDao()Lcom/android/launcher3/db/model/IllegalDao;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper;->illegals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private insertDB(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/db/model/IllegalEventDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/IllegalEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/IllegalEvent;",
            ">;",
            "Lcom/android/launcher3/db/model/IllegalEventDao;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const-string p1, "IllegalHelper illegal db cache is too large need clear"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 4
    :cond_0
    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    const-string p1, "IllegalHelper  illeag upload failed need cache to db"

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method private isIllegal(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/t3;->c()Lcom/android/launcher3/db/model/ItemAppDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/db/model/ItemAppDao$Properties;->IsForceApps:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/db/model/ItemApp;

    .line 6
    invoke-virtual {v3}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "IllegalHelper has no force apps"

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return v2

    .line 9
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/IllegalEvent;",
            ">;",
            "Lcom/android/launcher3/db/model/Illegal;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "IllegalHelper device is release no need upload"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "IllegalHelper upload illegal logs"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getIllegalEventDao()Lcom/android/launcher3/db/model/IllegalEventDao;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v6

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    move-object v7, p1

    .line 10
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-static {v6}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_2
    :try_start_0
    new-instance p1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {p1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 14
    new-instance v1, Lcom/android/launcher3/network/params/ListParams;

    iget-object v2, p0, Lcom/android/launcher3/network/IllegalHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/ListParams;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/ListParams;->setReportlist(Ljava/util/List;)V

    .line 16
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    const-string v0, "com.linspirer.device.setdeviceillegal"

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 18
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v0, :cond_3

    .line 20
    new-instance v8, Lcom/huawei/hem/vb;

    invoke-direct {v8, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    const-string v0, "https://bd.linspirer.com:883/public-interface.php"

    .line 21
    iput-object v0, v8, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, v8, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 24
    new-instance p1, Lcom/android/launcher3/network/IllegalHelper$1;

    const-class v3, Ljava/lang/Boolean;

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/network/IllegalHelper$1;-><init>(Lcom/android/launcher3/network/IllegalHelper;Ljava/lang/Class;Lcom/android/launcher3/db/model/IllegalEventDao;Lcom/android/launcher3/db/model/Illegal;Ljava/util/List;Ljava/util/List;)V

    .line 25
    invoke-virtual {v8, p1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 26
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "IllegalHelper  upload illegal Exception"

    .line 28
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
# RE I/O 读取字符串偏好（SharedPreferences.getString）、保存字符串偏好（SharedPreferences$Editor.putString）。
.method public recordChangeSIM(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/y5;->n0:Ljava/lang/String;

    const-string v2, "sim_info"

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    const/4 v3, 0x0

    .line 4
    iget-object v1, v1, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/huawei/hem/y5;->n0:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/huawei/hem/y5;->n0:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "IllegalHelper plug sim but not change sim "

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    .line 10
    iget-object v1, v0, Lcom/huawei/hem/y5;->n0:Ljava/lang/String;

    if-eq v1, p1, :cond_2

    .line 11
    iput-object p1, v0, Lcom/huawei/hem/y5;->n0:Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 13
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const-string v0, "change_simcard"

    .line 15
    invoke-direct {p0, v0}, Lcom/android/launcher3/network/IllegalHelper;->getIllegalEvent(Ljava/lang/String;)Lcom/android/launcher3/db/model/Illegal;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->isEnable()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "IllegalHelper record plug sim "

    .line 17
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 18
    new-instance v2, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v2}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    .line 19
    invoke-virtual {v2, v0}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->getNotify_admin()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setNotify(I)V

    .line 24
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->getEliminate_data()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setReset(I)V

    .line 25
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->getLock_workspace()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setLock(I)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "IllegalHelper has no change sim check "

    .line 29
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public recordConnectUsb()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/t3;->d()Lcom/android/launcher3/db/model/ManageDeviceDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "IllegalHelper record device manage is empty "

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/ManageDevice;

    .line 6
    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_connect_usb()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IllegalHelper usb is allow to use "

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "IllegalHelper record usb connect "

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v0}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    const-string v1, "usb_plug_in"

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_to_pc"

    .line 12
    invoke-direct {p0, v2}, Lcom/android/launcher3/network/IllegalHelper;->getIllegalEvent(Ljava/lang/String;)Lcom/android/launcher3/db/model/Illegal;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/Illegal;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/Illegal;->getNotify_admin()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setNotify(I)V

    .line 15
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/Illegal;->getEliminate_data()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setReset(I)V

    .line 16
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/Illegal;->getLock_workspace()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setLock(I)V

    .line 17
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public recordDisconnectUsb()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/t3;->d()Lcom/android/launcher3/db/model/ManageDeviceDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/ManageDevice;

    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_connect_usb()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IllegalHelper usb is allow to use "

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "IllegalHelper record usb disconnect event "

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v0}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    const-string v1, "usb_plug_out"

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public recordInstalledApp(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "prohibited_app"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/launcher3/network/IllegalHelper;->getIllegalEvent(Ljava/lang/String;)Lcom/android/launcher3/db/model/Illegal;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    new-instance v4, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v4}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    .line 5
    invoke-virtual {v4, v0}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->getNotify_admin()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setNotify(I)V

    .line 9
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->getEliminate_data()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setReset(I)V

    .line 10
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/Illegal;->getLock_workspace()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setLock(I)V

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v3}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "IllegalHelper record install illegal app"

    .line 14
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public recordInternalStorageOverFlow(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "IllegalHelper internal storage overflow event no need record by email is empty"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "IllegalHelper internal storage overflow need upload illegal event"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v1}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    const-string v2, "internal_storage_overflow"

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public recordNoPermission(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "IllegalHelper no permission event no need reocrd by email is empty"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "IllegalHelper permission not granted need upload illegal event"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v1}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    const-string v2, "not_granted_permission"

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public recordOpenBluetooth()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/t3;->d()Lcom/android/launcher3/db/model/ManageDeviceDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/ManageDevice;

    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ManageDevice;->isCommand_bluetooth()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IllegalHelper bluetooth is allow to use "

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance v0, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v0}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    const-string v1, "open_bluetooth"

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public recordSD(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->D()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "IllegalHelper sdcard allow to use"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->w()I

    move-result v0

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    const-string p1, "IllegalHelper otg allow to use"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalHelper record sd illegal event"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {p1}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    if-eqz p2, :cond_2

    const-string p2, "sdcard_plug_in"

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/android/launcher3/network/IllegalHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c008b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, "sdcard_plug_out"

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/android/launcher3/network/IllegalHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c008e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public recordSpecialInterface(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "IllegalHelper no permission event no need record by email is empty"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "IllegalHelper special interface used need upload illegal event"

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v1}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    const-string v2, "special_interfaces_used"

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public recordUninstallApp(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/IllegalHelper;->isIllegal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalHelper record uninstall force app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/android/launcher3/db/model/IllegalEvent;

    invoke-direct {v0}, Lcom/android/launcher3/db/model/IllegalEvent;-><init>()V

    const-string v1, "uninstall_app"

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEvent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setDescription(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setEmail(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/db/model/IllegalEvent;->setClienttime(Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V

    return-void
.end method

.method public setIllegalCallBack(Lcom/huawei/hem/h3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/IllegalHelper;->illegalCallBack:Lcom/huawei/hem/h3;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/Illegal;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->illegals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper;->illegals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
