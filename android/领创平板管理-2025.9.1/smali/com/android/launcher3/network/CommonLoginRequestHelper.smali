# RE note 领创普通登录的客户端请求入口。服务端验权需单独验证。
.class public Lcom/android/launcher3/network/CommonLoginRequestHelper;
.super Lcom/huawei/hem/q4;
.source "CommonLoginRequestHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CommonLoginRequestHelper"

.field public static commonLoginRequestHelper:Lcom/android/launcher3/network/CommonLoginRequestHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/q4;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher3/network/CommonLoginRequestHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hem/q4;->saveUserDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/launcher3/network/CommonLoginRequestHelper;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/q4;->executeLoginSuccessLogic(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher3/network/CommonLoginRequestHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/CommonLoginRequestHelper;->commonLoginRequestHelper:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-direct {v0}, Lcom/android/launcher3/network/CommonLoginRequestHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/network/CommonLoginRequestHelper;->commonLoginRequestHelper:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/launcher3/network/CommonLoginRequestHelper;->commonLoginRequestHelper:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    return-object v0
.end method


# virtual methods
.method public onlineLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/de;->v(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p2, "\u672a\u83b7\u53d6\u5230\u8bbe\u5907\u6807\u8bc6\uff0c\u8bf7\u8054\u7cfb\u7ba1\u7406\u5458"

    .line 4
    invoke-static {p1, p2, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    const v0, 0x7f0c00dc

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 7
    new-instance v2, Lcom/android/launcher3/network/params/LoginParams;

    invoke-direct {v2, p1}, Lcom/android/launcher3/network/params/LoginParams;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v2, p2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p3}, Lcom/android/launcher3/network/params/LoginParams;->setPassword(Ljava/lang/String;)V

    const-string p2, "com.ndwill.swd.appstore"

    .line 10
    invoke-static {p2, p1}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/network/params/LoginParams;->setAppstore_version(Ljava/lang/String;)V

    const-string p2, "com.android.launcher3"

    .line 11
    invoke-static {p2, p1}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/network/params/LoginParams;->setLauncher_version(Ljava/lang/String;)V

    .line 12
    sget-object p2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, p2}, Lcom/android/launcher3/network/params/LoginParams;->setRom_version(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/network/params/LoginParams;->setSn(Ljava/lang/String;)V

    .line 15
    sget-object p2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, p2}, Lcom/android/launcher3/network/params/LoginParams;->setRom_version(Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/huawei/hem/de;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/network/params/LoginParams;->setAndroid_id(Ljava/lang/String;)V

    .line 18
    sget-object p2, Lcom/android/launcher3/network/RequestUrl;->LOGIN_METHOD:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 19
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/huawei/hem/r4;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz p2, :cond_2

    .line 21
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, p2}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 22
    sget-object p2, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 23
    iput-object p2, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 25
    iput-object p2, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 26
    new-instance p2, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;

    const-class v5, Lcom/android/launcher3/model/UserInfo;

    move-object v3, p2

    move-object v4, p0

    move v6, p4

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;-><init>(Lcom/android/launcher3/network/CommonLoginRequestHelper;Ljava/lang/Class;ZLjava/lang/String;Landroid/content/Context;)V

    .line 27
    invoke-virtual {v2, p2}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 28
    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 29
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 30
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const p2, 0x7f0c00d8

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const p2, 0x7f0c0080

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
