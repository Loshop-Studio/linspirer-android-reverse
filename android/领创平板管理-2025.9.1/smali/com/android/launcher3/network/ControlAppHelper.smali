# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/ControlAppHelper;
.super Ljava/lang/Object;
.source "ControlAppHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ControlAppHelper"

.field public static instance:Lcom/android/launcher3/network/ControlAppHelper;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/network/ControlAppHelper;->mContext:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    iput-object p1, p0, Lcom/android/launcher3/network/ControlAppHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 5
    new-instance p1, Lcom/huawei/hem/rb;

    invoke-direct {p1}, Lcom/huawei/hem/rb;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/network/ControlAppHelper;->mHttpCore:Lcom/huawei/hem/rb;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/network/ControlAppHelper;Lcom/android/launcher3/model/ControlAppInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/ControlAppHelper;->dealApp(Lcom/android/launcher3/model/ControlAppInfo;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/ControlAppHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/ControlAppHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dealApp(Lcom/android/launcher3/model/ControlAppInfo;)V
    .locals 3

    const-string v0, "ControlAppHelperpull dealApp 1"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "ControlAppHelperpull dealApp 2"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "ControlAppHelperpull dealApp 3 "

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/model/ControlAppInfo;->getEnable_apps()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/ControlAppInfo;->getDisable_apps()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->m(Ljava/util/List;)V

    .line 8
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ic;->u0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/network/ControlAppHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/ControlAppHelper;->instance:Lcom/android/launcher3/network/ControlAppHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/launcher3/network/ControlAppHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/network/ControlAppHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/network/ControlAppHelper;->instance:Lcom/android/launcher3/network/ControlAppHelper;

    .line 3
    :cond_0
    sget-object p0, Lcom/android/launcher3/network/ControlAppHelper;->instance:Lcom/android/launcher3/network/ControlAppHelper;

    return-object p0
.end method


# virtual methods
.method public request()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ControlAppHelper no need request tactics"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    const-string v1, "com.linspirer.app.getdisableenableapps"

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/android/launcher3/network/params/Params;

    iget-object v2, p0, Lcom/android/launcher3/network/ControlAppHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v2, p0, Lcom/android/launcher3/network/ControlAppHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/launcher3/network/ControlAppHelper;->mHttpCore:Lcom/huawei/hem/rb;

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
    new-instance v0, Lcom/android/launcher3/network/ControlAppHelper$1;

    const-class v1, Lcom/android/launcher3/model/ControlAppInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/ControlAppHelper$1;-><init>(Lcom/android/launcher3/network/ControlAppHelper;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 15
    throw v0
.end method
