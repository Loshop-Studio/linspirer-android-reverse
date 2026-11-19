.class public Lcom/alibaba/sdk/android/push/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/g/a$b;,
        Lcom/alibaba/sdk/android/push/g/a$a;
    }
.end annotation


# static fields
.field public static e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field public static f:Lcom/alibaba/sdk/android/push/g/a;

.field public static final g:[Ljava/lang/String;

.field public static final h:Landroid/content/IntentFilter;

.field public static final i:Landroid/content/IntentFilter;


# instance fields
.field public volatile a:Lcom/alibaba/sdk/android/push/g/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/push/g/a$a<",
            "Lcom/alibaba/sdk/android/push/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Z

.field public final j:Lcom/alibaba/sdk/android/push/g/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MPS:AppRegister"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    const-string v0, "amdcopen.m.taobao.com"

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->g:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->h:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->i:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/push/g/a$b;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/g/a$b;-><init>(Lcom/alibaba/sdk/android/push/g/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/a;->j:Lcom/alibaba/sdk/android/push/g/a$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->b:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/push/g/a;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/push/g/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/push/g/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/push/g/a;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/alibaba/sdk/android/push/g/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/a;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/alibaba/sdk/android/push/g/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/a;->i()V

    return-void
.end method

.method private b(ZJ)V
    .locals 7

    const-string v0, "AliyunPush"

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init agoo config appkey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/alibaba/sdk/android/ams/common/b/b;->d()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/sdk/android/push/g/a;->g:[Ljava/lang/String;

    invoke-static {v5}, Lanet/channel/strategy/dispatch/DispatchConstants;->setAmdcServerDomain([Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lanet/channel/AwcnConfig;->setWifiInfoEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    invoke-static {v5}, Lanet/channel/AwcnConfig;->setCarrierInfoEnable(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    invoke-static {v5}, Lanet/channel/AwcnConfig;->setAccsSessionCreateForbiddenInBg(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :try_start_3
    invoke-static {v1, v5}, Lcom/taobao/agoo/TaobaoRegister;->setEnv(Landroid/content/Context;I)V

    new-instance v6, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v6}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    invoke-virtual {v6, v3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    const-string v4, "acs4public.m.taobao.com"

    invoke-virtual {v3, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    const-string v4, "accscdn4public.m.taobao.com"

    invoke-virtual {v3, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAccsHeartbeatEnable(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/taobao/accs/AccsClientConfig$Builder;->setConfigEnv(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/accs/AccsClientConfig$Builder;->loopChannelStart(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->loopChannelInterval(J)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    move-result-object p1

    invoke-static {v1, v0}, Lcom/taobao/agoo/TaobaoRegister;->setAccsConfigTag(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/taobao/accs/ACCSClient;->init(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    new-instance p1, Lcom/alibaba/sdk/android/push/g/a$1;

    invoke-direct {p1, p0, v2}, Lcom/alibaba/sdk/android/push/g/a$1;-><init>(Lcom/alibaba/sdk/android/push/g/a;Lcom/alibaba/sdk/android/ams/common/b/b;)V

    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->setReportPushArrive(Lcom/huawei/hem/n0;)V
    :try_end_3
    .catch Lcom/taobao/accs/AccsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic g()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-object v0
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/common/util/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a;->j:Lcom/alibaba/sdk/android/push/g/a$b;

    sget-object v2, Lcom/alibaba/sdk/android/push/g/a;->h:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a;->j:Lcom/alibaba/sdk/android/push/g/a$b;

    sget-object v2, Lcom/alibaba/sdk/android/push/g/a;->i:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v3, "Fail to register broad"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/alibaba/sdk/android/push/common/util/AppInfoUtil;->isChannelProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/c/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/c/a;->a()Lcom/alibaba/sdk/android/push/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/c/a;->b()V

    :cond_1
    return-void
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/push/common/util/AppInfoUtil;->getChannelServiceData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/push/b/f;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->s:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/b/f;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/alibaba/sdk/android/push/b/f;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->r:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/b/f;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/alibaba/sdk/android/push/b/f;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->t:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/b/f;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw v0
.end method

.method private j()V
    .locals 7

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/a;->values()[Lcom/alibaba/sdk/android/push/common/a/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/sdk/android/push/common/util/AppInfoUtil;->isComponentExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/a;->c()Z

    move-result v4

    const-string v5, "\u672a\u914d\u7f6e"

    if-nez v4, :cond_0

    sget-object v4, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; \u5efa\u8bae\u914d\u7f6e,\u53ef\u6709\u6548\u63d0\u9ad8\u63a8\u9001\u5230\u8fbe\u7387"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/push/b/f;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->u:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/b/f;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "Already startReg, skip."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->y:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->y:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->c:Z

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/a;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    new-instance v0, Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/g/a$a;-><init>(Lcom/alibaba/sdk/android/push/g/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    new-instance v1, Lcom/alibaba/sdk/android/push/g/a$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/push/g/a$2;-><init>(Lcom/alibaba/sdk/android/push/g/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Lcom/alibaba/sdk/android/push/g/c;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    sget-object p1, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "getLooper called."

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/alibaba/sdk/android/push/PushControlService$ConnectionChangeListener;)V
    .locals 2

    :try_start_0
    const-string v0, "AliyunPush"

    invoke-static {v0}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/g/a$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/push/g/a$3;-><init>(Lcom/alibaba/sdk/android/push/g/a;Lcom/alibaba/sdk/android/push/PushControlService$ConnectionChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ACCSClient;->addConnectionListener(Lcom/taobao/accs/ConnectionListener;)V
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/push/g/a;->b(ZJ)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/sdk/android/push/g/a;->b(ZJ)V

    return-void
.end method

.method public c()Z
    .locals 1

    :try_start_0
    const-string v0, "AliyunPush"

    invoke-static {v0}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ACCSClient;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    :try_start_0
    const-string v0, "AliyunPush"

    invoke-static {v0}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ACCSClient;->reconnect()V
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lcom/taobao/agoo/TaobaoRegister;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->c:Z

    return-void
.end method

.method public f()V
    .locals 1

    :try_start_0
    const-string v0, "AliyunPush"

    invoke-static {v0}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ACCSClient;->disconnect()V
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
