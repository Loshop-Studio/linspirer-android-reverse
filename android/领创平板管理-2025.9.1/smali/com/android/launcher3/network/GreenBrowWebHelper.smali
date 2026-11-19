# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/GreenBrowWebHelper;
.super Ljava/lang/Object;
.source "GreenBrowWebHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GreenBrowWebHelper"

.field public static mInstances:Lcom/android/launcher3/network/GreenBrowWebHelper;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 3
    iput-object v0, p0, Lcom/android/launcher3/network/GreenBrowWebHelper;->mContext:Landroid/content/Context;

    .line 4
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    iput-object v0, p0, Lcom/android/launcher3/network/GreenBrowWebHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 6
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/GreenBrowWebHelper;->mHttpCore:Lcom/huawei/hem/rb;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/network/GreenBrowWebHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/GreenBrowWebHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstances()Lcom/android/launcher3/network/GreenBrowWebHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/GreenBrowWebHelper;->mInstances:Lcom/android/launcher3/network/GreenBrowWebHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/launcher3/network/GreenBrowWebHelper;

    invoke-direct {v0}, Lcom/android/launcher3/network/GreenBrowWebHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/network/GreenBrowWebHelper;->mInstances:Lcom/android/launcher3/network/GreenBrowWebHelper;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/launcher3/network/GreenBrowWebHelper;->mInstances:Lcom/android/launcher3/network/GreenBrowWebHelper;

    return-object v0
.end method


# virtual methods
.method public getBrowUrlFromServer()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 2
    new-instance v1, Lcom/android/launcher3/network/params/Params;

    iget-object v2, p0, Lcom/android/launcher3/network/GreenBrowWebHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v2, p0, Lcom/android/launcher3/network/GreenBrowWebHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/android/launcher3/network/RequestUrl;->GET_BROW_URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/network/GreenBrowWebHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v1, :cond_0

    .line 7
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 8
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 9
    iput-object v1, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/android/launcher3/network/GreenBrowWebHelper$1;

    const-class v1, Lcom/android/launcher3/model/UrlInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/GreenBrowWebHelper$1;-><init>(Lcom/android/launcher3/network/GreenBrowWebHelper;Ljava/lang/Class;)V

    .line 13
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "GreenBrowWebHelper----getBrowUrlFromServer error : "

    .line 15
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public handle()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GreenBrowWebHelperis in offline model or not logined no need pull brow url"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/network/GreenBrowWebHelper;->getBrowUrlFromServer()V

    return-void
.end method
