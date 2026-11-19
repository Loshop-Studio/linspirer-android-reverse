# RE note 初次登录请求的客户端编排入口。
.class public Lcom/android/launcher3/network/InitLoginHelper;
.super Lcom/huawei/hem/q4;
.source "InitLoginHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InitLoginHelper"

.field public static initLoginHelper:Lcom/android/launcher3/network/InitLoginHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/q4;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/network/InitLoginHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hem/q4;->saveUserDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher3/network/InitLoginHelper;ZLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/network/InitLoginHelper;->syncISVLoginState(ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher3/network/InitLoginHelper;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/q4;->executeLoginSuccessLogic(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/network/InitLoginHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/InitLoginHelper;->initLoginHelper:Lcom/android/launcher3/network/InitLoginHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/launcher3/network/InitLoginHelper;

    invoke-direct {v0}, Lcom/android/launcher3/network/InitLoginHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/network/InitLoginHelper;->initLoginHelper:Lcom/android/launcher3/network/InitLoginHelper;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/launcher3/network/InitLoginHelper;->initLoginHelper:Lcom/android/launcher3/network/InitLoginHelper;

    return-object v0
.end method

.method private initISVLoginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p7, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {p7}, Lcom/huawei/hem/y5;->R()Z

    move-result p7

    if-nez p7, :cond_3

    sget-object p7, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v0, 0x0

    invoke-interface {p7, v0}, Lcom/huawei/hem/ic;->p(Z)I

    move-result p7

    const/4 v1, 0x2

    if-ne p7, v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lcom/huawei/hem/de;->v(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_1

    const-string p2, "\u672a\u83b7\u53d6\u5230\u8bbe\u5907\u6807\u8bc6\uff0c\u8bf7\u8054\u7cfb\u7ba1\u7406\u5458"

    .line 4
    invoke-static {p1, p2, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/InitLoginHelper;->syncISVLoginState(ZLandroid/content/Context;)V

    return-void

    .line 6
    :cond_1
    new-instance p7, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {p7}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 7
    new-instance v0, Lcom/android/launcher3/network/params/InitLoginParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/network/params/InitLoginParams;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0, p2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p5}, Lcom/android/launcher3/network/params/InitLoginParams;->setSchoolid(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p6}, Lcom/android/launcher3/network/params/InitLoginParams;->setClassname(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p3}, Lcom/android/launcher3/network/params/InitLoginParams;->setUsername(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p8}, Lcom/android/launcher3/network/params/InitLoginParams;->setInterest_class(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p7, p2}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 14
    sget-object p2, Lcom/android/launcher3/network/RequestUrl;->INIT_MEHTOD:Ljava/lang/String;

    invoke-virtual {p7, p2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 15
    :try_start_0
    iget-object p2, p0, Lcom/huawei/hem/r4;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz p2, :cond_2

    .line 16
    new-instance p3, Lcom/huawei/hem/vb;

    invoke-direct {p3, p2}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 17
    sget-object p2, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 18
    iput-object p2, p3, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 19
    invoke-static {p7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 20
    iput-object p2, p3, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    const-string p2, "initHandler"

    .line 21
    iput-object p2, p3, Lcom/huawei/hem/tb;->b:Ljava/lang/Object;

    .line 22
    new-instance p2, Lcom/android/launcher3/network/InitLoginHelper$1;

    const-class p5, Lcom/android/launcher3/model/UserInfo;

    invoke-direct {p2, p0, p5, p4, p1}, Lcom/android/launcher3/network/InitLoginHelper$1;-><init>(Lcom/android/launcher3/network/InitLoginHelper;Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 23
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "InitLoginHelper -- initISVLoginUser error = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const p2, 0x7f0c0080

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

# RE I/O 读取字符串偏好（SharedPreferences.getString）。
.method private offlineInitLoginByDaite(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/y5;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 4
    iget-object v1, v1, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v2, "mobile"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/huawei/hem/y5;->e:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/huawei/hem/y5;->e:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitLoginHelper -- offlineInitLoginByDaite mobileLocal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , emailLocal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/network/InitLoginHelper;->syncISVLoginState(ZLandroid/content/Context;)V

    .line 11
    iget-object p2, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p2, p1}, Lcom/huawei/hem/y5;->e0(Z)V

    .line 12
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordAccountOfflineLogin()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/network/InitLoginHelper;->syncISVLoginState(ZLandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private offlineInitLoginBySeewo(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/InitLoginHelper;->syncISVLoginState(ZLandroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/y5;->e0(Z)V

    .line 3
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordAccountOfflineLogin()V

    return-void
.end method

.method private syncISVLoginState(ZLandroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitLoginHelper syncISVLoginState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 2
    instance-of v0, p2, Lcom/android/launcher3/activity/LoginActivity;

    const-string v1, "isOK"

    if-nez v0, :cond_1

    const-string v0, "zhongyukejiao"

    const-string v2, "huihong"

    if-eq v0, v2, :cond_1

    const-string v2, "meiwo"

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send broadcast to isv by init twice status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher3.mdm.INIT_USER_TWICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-nez p1, :cond_2

    const-string p1, "InitLoginHelper logined failed need logout"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8
    invoke-static {p2, p1}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "InitLoginHelper sendInitLoginStatus "

    .line 9
    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send broadcast to isv by init status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher3.mdm.INIT_USER_OK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public startInitLogin(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/r4;->isDoubleClickOrTooFast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "userid"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "username"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "schoolid"

    .line 4
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "classname"

    .line 5
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "txurl"

    .line 6
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "token"

    .line 7
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "classid"

    .line 8
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const-string v7, "interestClass"

    .line 9
    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 10
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {v9}, Lcom/huawei/hem/l9;->O([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 12
    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "InitLoginHelperinterest class:"

    .line 13
    invoke-static {v9, v5}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/huawei/hem/l9;->O([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 16
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v9, p2

    goto :goto_0

    :cond_2
    move-object v9, v5

    :goto_0
    const-string p2, "InitLoginHelper -- account: "

    const-string v5, " , username: "

    const-string v7, " , schoolid: "

    .line 17
    invoke-static {p2, v3, v5, v0, v7}, Lcom/huawei/hem/f6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , classname: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , txurl: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , token: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , jdclassid: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,interest = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v4, v3

    goto :goto_1

    :cond_3
    move-object v4, v0

    .line 19
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, ""

    move-object v7, p2

    goto :goto_2

    :cond_4
    move-object v7, v1

    :goto_2
    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    .line 20
    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/network/InitLoginHelper;->initISVLoginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method
