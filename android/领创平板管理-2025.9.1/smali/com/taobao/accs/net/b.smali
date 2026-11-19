.class public abstract Lcom/taobao/accs/net/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final ACCS_RECEIVE_TIMEOUT:I = 0x9c40

.field public static final INAPP:I = 0x1

.field public static final SERVICE:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Landroid/content/Context;

.field public e:Lcom/taobao/accs/data/d;

.field public f:I

.field public volatile g:Z

.field public h:Lcom/taobao/accs/client/c;

.field public i:Lcom/taobao/accs/AccsClientConfig;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/taobao/accs/net/b;->f:I

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/taobao/accs/net/b;->n:J

    .line 5
    iput-boolean v0, p0, Lcom/taobao/accs/net/b;->g:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/taobao/accs/net/BaseConnection$1;

    invoke-direct {v1, p0}, Lcom/taobao/accs/net/BaseConnection$1;-><init>(Lcom/taobao/accs/net/b;)V

    iput-object v1, p0, Lcom/taobao/accs/net/b;->l:Ljava/util/LinkedHashMap;

    .line 8
    iput p2, p0, Lcom/taobao/accs/net/b;->c:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    .line 10
    invoke-static {p3}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object p2

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "BaseConnection config null!!"

    invoke-static {v1, v3, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :try_start_0
    new-instance v1, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v1}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/taobao/accs/ACCSManager;->getDefaultAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 14
    invoke-virtual {v1, p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    move-result-object p2
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 15
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "BaseConnection build config"

    invoke-static {v1, v3, p3, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 19
    new-instance p2, Lcom/taobao/accs/data/d;

    invoke-direct {p2, p1, p0}, Lcom/taobao/accs/data/d;-><init>(Landroid/content/Context;Lcom/taobao/accs/net/b;)V

    iput-object p2, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    .line 20
    iget p1, p0, Lcom/taobao/accs/net/b;->c:I

    iput p1, p2, Lcom/taobao/accs/data/d;->b:I

    .line 21
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "new connection"

    invoke-static {p1, p3, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "DISCONNECTED"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DISCONNECTING"

    goto :goto_0

    :cond_1
    const-string v1, "CONNECTING"

    goto :goto_0

    :cond_2
    const-string v1, "CONNECTED"

    :cond_3
    :goto_0
    return-object v1
.end method

.method public abstract a()V
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 16
    :try_start_0
    sget-object v1, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 17
    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 18
    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    .line 19
    invoke-static {v1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    goto :goto_0

    .line 20
    :cond_0
    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 21
    sget-object v1, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    .line 22
    invoke-static {v1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setSendConnectInfoByService(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :catchall_0
    :try_start_2
    new-instance v2, Lanet/channel/Config$Builder;

    invoke-direct {v2}, Lanet/channel/Config$Builder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v3}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 26
    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanet/channel/Config$Builder;->setAppSecret(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 27
    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanet/channel/Config$Builder;->setAuthCode(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 29
    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanet/channel/Config$Builder;->setTag(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object v1

    .line 31
    invoke-static {p1, v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Lanet/channel/Config;)V

    const-string p1, "acs"

    .line 32
    iget-object v1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    :cond_2
    const-string p1, "open"

    .line 33
    :cond_3
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http2"

    const-string v4, "0rtt"

    invoke-static {v3, v4, p1, v0}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lanet/channel/strategy/StrategyTemplate;->registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 34
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "initAwcn"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void
.end method

.method public abstract a(Lcom/taobao/accs/data/Message;Z)V
.end method

.method public a(Ljava/lang/String;ZJ)V
    .locals 7

    .line 1
    new-instance v6, Lcom/taobao/accs/net/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/net/c;-><init>(Lcom/taobao/accs/net/b;Ljava/lang/String;JZ)V

    .line 2
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, p3, p4, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public abstract a(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract a(ZZ)V
.end method

.method public a(Lcom/taobao/accs/data/Message;I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget v2, p1, Lcom/taobao/accs/data/Message;->R:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    return v0

    .line 4
    :cond_0
    iget v2, p1, Lcom/taobao/accs/data/Message;->R:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/taobao/accs/data/Message;->R:I

    int-to-long v2, p2

    .line 5
    iput-wide v2, p1, Lcom/taobao/accs/data/Message;->Q:J

    .line 6
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reSend dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " retryTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/taobao/accs/data/Message;->R:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p2, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    const-wide/16 v2, 0x0

    iput-wide v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    .line 10
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iput-wide v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    .line 11
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iget v2, p1, Lcom/taobao/accs/data/Message;->R:I

    iput v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->retry_times:I

    .line 12
    iget p2, p1, Lcom/taobao/accs/data/Message;->R:I

    if-ne p2, v1, :cond_1

    const-string p2, "accs"

    const-string v2, "resend"

    const-string v3, "total"

    const-wide/16 v4, 0x0

    .line 13
    invoke-static {p2, v2, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move v1, v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "reSend error"

    invoke-static {v2, v3, p2, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v2, Lcom/taobao/accs/AccsErrorCode;->SEND_LOCAL_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/taobao/accs/AccsErrorCode;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    :cond_1
    :goto_1
    return v1
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    .line 32
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v4

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InAppConnection"

    const-string v3, "getHost"

    .line 35
    invoke-static {v1, v3, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-object v2
.end method

.method public abstract b()V
.end method

.method public b(I)V
    .locals 4

    if-gez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dataId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "reSendAck"

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/taobao/accs/net/b;->l:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    if-eqz p1, :cond_0

    const/16 v0, 0x1388

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;I)Z

    const-wide/16 v0, 0x0

    const-string p1, "accs"

    const-string v2, "resend"

    const-string v3, "ack"

    .line 30
    invoke-static {p1, v2, v3, v0, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 36
    :try_start_0
    new-instance v0, Lcom/taobao/accs/net/e;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/net/e;-><init>(Lcom/taobao/accs/net/b;Landroid/content/Context;)V

    const-wide/16 v1, 0x2710

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startChannelService"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/taobao/accs/data/Message;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v1, Lcom/taobao/accs/data/Message;->c:Z

    const-string v3, "dataId"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v6, v4

    const-string v3, "sendMessage ready no network"

    invoke-static {v2, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v3, Lcom/taobao/accs/AccsErrorCode;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    const-wide/16 v7, 0x0

    if-eq v2, v6, :cond_1

    .line 5
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    iget-object v2, v2, Lcom/taobao/accs/data/d;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    iget-object v10, v1, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_1
    move-wide v9, v7

    :goto_0
    const-wide/16 v11, -0x1

    cmp-long v2, v9, v11

    if-nez v2, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v6, v4

    const-string v3, "sendMessage ready server limit high"

    invoke-static {v2, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v3, Lcom/taobao/accs/AccsErrorCode;->SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    :cond_2
    const-wide/16 v11, -0x3e8

    cmp-long v2, v9, v11

    if-nez v2, :cond_3

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v6, v4

    const-string v3, "sendMessage ready server limit high for brush"

    invoke-static {v2, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v3, Lcom/taobao/accs/AccsErrorCode;->SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    :cond_3
    cmp-long v2, v9, v7

    const-string v8, "delay"

    const/4 v11, 0x4

    const/4 v12, 0x3

    const-string v13, "type"

    const/4 v14, 0x6

    if-lez v2, :cond_5

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v17, v8

    iget-wide v7, v0, Lcom/taobao/accs/net/b;->n:J

    cmp-long v15, v15, v7

    if-lez v15, :cond_4

    .line 11
    iput-wide v9, v1, Lcom/taobao/accs/data/Message;->Q:J

    goto :goto_1

    :cond_4
    add-long/2addr v7, v9

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lcom/taobao/accs/data/Message;->Q:J

    .line 13
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/taobao/accs/data/Message;->Q:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/taobao/accs/net/b;->n:J

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v3, v8, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v8, v4

    aput-object v13, v8, v6

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v3

    invoke-static {v3}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v12

    aput-object v17, v8, v11

    iget-wide v9, v1, Lcom/taobao/accs/data/Message;->Q:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x5

    aput-object v3, v8, v2

    const-string v2, "sendMessage ready delayed"

    invoke-static {v7, v2, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    move-object/from16 v17, v8

    .line 15
    iget-object v7, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string v8, "accs"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "sendMessage ready"

    if-eqz v7, :cond_6

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v7

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v3, v9, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v9, v4

    aput-object v13, v9, v6

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v3

    invoke-static {v3}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v12

    aput-object v17, v9, v11

    iget-wide v10, v1, Lcom/taobao/accs/data/Message;->Q:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x5

    aput-object v3, v9, v2

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_6
    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v7}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v7

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v3, v9, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v9, v4

    aput-object v13, v9, v6

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v3

    invoke-static {v3}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v12

    aput-object v17, v9, v11

    iget-wide v10, v1, Lcom/taobao/accs/data/Message;->Q:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x5

    aput-object v3, v9, v2

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_7
    :goto_2
    :try_start_0
    iget-object v2, v0, Lcom/taobao/accs/net/b;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 20
    iget-object v2, v0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/accs/net/b;->j:Ljava/lang/String;

    .line 21
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->g()Z

    move-result v2

    if-nez v2, :cond_9

    .line 22
    invoke-virtual/range {p0 .. p2}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_3

    .line 23
    :cond_9
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v3, Lcom/taobao/accs/AccsErrorCode;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    const-string v7, "\u91cd\u8bd5\u6216\u8005\u5ef6\u671f\u65f6\u8d85\u65f6\uff0c\u4e0d\u53d1\u9001"

    invoke-virtual {v3, v7}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/taobao/accs/AccsErrorCode;->getAllDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 24
    :catch_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    .line 25
    iget-object v3, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v7, Lcom/taobao/accs/AccsErrorCode;->MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string v6, "size"

    aput-object v6, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "sendMessage ready queue full"

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public abstract c()Lcom/taobao/accs/ut/a/c;
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "buildAuthUrl"

    invoke-static {v2, v4, v1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    .line 5
    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "auth?1="

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&2="

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&3="

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object p1, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "&4="

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "&5="

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/taobao/accs/net/b;->c:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&6="

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&7="

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&8="

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/taobao/accs/net/b;->c:I

    const/16 v0, 0xdd

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "1.1.2"

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&9="

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&10="

    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&11="

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&12="

    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&13="

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&14="

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&15="

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&16="

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&17="

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&19="

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->k()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&20="

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getStoreId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/taobao/accs/net/d;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/d;-><init>(Lcom/taobao/accs/net/b;)V

    iput-object v0, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->g()V

    .line 4
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    const-wide/32 v2, 0x9c40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/b;->p:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/net/b;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/taobao/accs/client/c;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/c;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "configTag"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "new ClientManager"

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/taobao/accs/client/c;

    iget-object v1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/accs/client/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/c;

    return-object v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getSecurity()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract l()Z
.end method

.method public abstract m()I
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/taobao/accs/client/c;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/taobao/accs/net/b;->g:Z

    return-void
.end method
