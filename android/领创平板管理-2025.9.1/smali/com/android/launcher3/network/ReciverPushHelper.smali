# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/ReciverPushHelper;
.super Ljava/lang/Object;
.source "ReciverPushHelper.java"


# static fields
.field public static final PMT_COMMAND:I = 0x1

.field public static final PMT_MESSAGE:I = 0x3

.field public static final PMT_STRATEGICS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ReciverPushHelper"

.field public static instance:Lcom/android/launcher3/network/ReciverPushHelper;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public pushMsgDao:Lcom/android/launcher3/db/model/PushMsgDao;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mHttpCore:Lcom/huawei/hem/rb;

    .line 3
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getPushMsgDao()Lcom/android/launcher3/db/model/PushMsgDao;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/launcher3/network/ReciverPushHelper;->pushMsgDao:Lcom/android/launcher3/db/model/PushMsgDao;

    .line 6
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 7
    iput-object v0, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/network/ReciverPushHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/ReciverPushHelper;->showMsg(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/ReciverPushHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/ReciverPushHelper;->parserPullMsg(Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/network/ReciverPushHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/ReciverPushHelper;->instance:Lcom/android/launcher3/network/ReciverPushHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/launcher3/network/ReciverPushHelper;

    invoke-direct {v0}, Lcom/android/launcher3/network/ReciverPushHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/network/ReciverPushHelper;->instance:Lcom/android/launcher3/network/ReciverPushHelper;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/launcher3/network/ReciverPushHelper;->instance:Lcom/android/launcher3/network/ReciverPushHelper;

    return-object v0
.end method

.method private parserPullMsg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/PushMsg;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ReciverPushHelper---none device msg or command---"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/db/model/PushMsg;

    .line 5
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/PushMsg;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 8
    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/db/model/PushMsg;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/PushMsg;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/PushMsg;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "command_applist"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "command_dynamic_device_info"

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "command_tactics_updated"

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/PushMsg;->getActive()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/launcher3/network/ReciverPushHelper;->reportServer(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    .line 15
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/PushMsg;->getActive()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v2, v1}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 17
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "command"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 19
    iget-object v1, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/launcher3/activity/ShowPushMsgActivty;

    invoke-static {v1, v2, p1}, Lcom/huawei/hem/y4;->X(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 20
    iget-object p1, p0, Lcom/android/launcher3/network/ReciverPushHelper;->pushMsgDao:Lcom/android/launcher3/db/model/PushMsgDao;

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    :cond_6
    return-void
.end method

.method private showMsg(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/PushMsg;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ReciverPushHelper -- \u6570\u636e\u89e3\u6790\u5b8c\u6bd5\uff0c\u6267\u884c\u6d88\u606f"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    move-object v1, p1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    iget-object v1, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/launcher3/activity/ShowPushMsgActivty;

    invoke-static {v1, v2, v0}, Lcom/huawei/hem/y4;->X(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/db/model/PushMsg;

    .line 7
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 8
    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/db/model/PushMsg;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/network/ReciverPushHelper;->pushMsgDao:Lcom/android/launcher3/db/model/PushMsgDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getPushMessage(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 5
    new-instance v1, Lcom/android/launcher3/network/params/CommandDetailParams;

    iget-object v2, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/CommandDetailParams;-><init>(Landroid/content/Context;)V

    .line 6
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 7
    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/launcher3/network/params/CommandDetailParams;->setType(I)V

    const-string p1, "com.linspirer.device.getcommanddetail"

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-nez p1, :cond_1

    .line 12
    new-instance p1, Lcom/huawei/hem/rb;

    invoke-direct {p1}, Lcom/huawei/hem/rb;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mHttpCore:Lcom/huawei/hem/rb;

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz p1, :cond_2

    .line 14
    new-instance v1, Lcom/huawei/hem/vb;

    invoke-direct {v1, p1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 15
    sget-object p1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 16
    iput-object p1, v1, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iput-object p1, v1, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 19
    new-instance p1, Lcom/android/launcher3/network/ReciverPushHelper$1;

    const-class v0, Lcom/android/launcher3/db/model/PushMsg;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/network/ReciverPushHelper$1;-><init>(Lcom/android/launcher3/network/ReciverPushHelper;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {v1, p1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 21
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReciverPushHelper  ======>pullToMSg and JSONException == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pullCommandFromServer()V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ReciverPushHelper email is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lcom/huawei/hem/rb;

    invoke-direct {v1}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mHttpCore:Lcom/huawei/hem/rb;

    .line 6
    new-instance v1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 7
    new-instance v2, Lcom/android/launcher3/network/params/CommandDetailParams;

    iget-object v3, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/network/params/CommandDetailParams;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v2, v0}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    const-string v0, "com.linspirer.device.getcommand"

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 10
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/network/ReciverPushHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v0, :cond_1

    .line 12
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 13
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 14
    iput-object v0, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/android/launcher3/network/ReciverPushHelper$2;

    const-class v1, Lcom/android/launcher3/db/model/PushMsg;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/ReciverPushHelper$2;-><init>(Lcom/android/launcher3/network/ReciverPushHelper;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "ReciverPushHelper -- JSONException : "

    .line 20
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reportServer(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    .line 2
    new-instance v1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 3
    new-instance v2, Lcom/android/launcher3/network/params/ReportCommandParams;

    invoke-direct {v2, p3}, Lcom/android/launcher3/network/params/ReportCommandParams;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v3, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    invoke-virtual {v3}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p1}, Lcom/android/launcher3/network/params/ReportCommandParams;->setCommand(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, p2}, Lcom/android/launcher3/network/params/ReportCommandParams;->setActive(I)V

    const-string v3, "com.linspirer.device.commandreport"

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 9
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 11
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 12
    iput-object v0, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/android/launcher3/network/ReciverPushHelper$3;

    const-class v5, Ljava/lang/Boolean;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p3

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/network/ReciverPushHelper$3;-><init>(Lcom/android/launcher3/network/ReciverPushHelper;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "ReciverPushHelper push command report JSONException == "

    .line 17
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
