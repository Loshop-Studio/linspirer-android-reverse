.class public Lcom/alibaba/sdk/android/push/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/CloudPushService;


# static fields
.field public static a:Lcom/alibaba/sdk/android/push/b/b;


# instance fields
.field public b:Lcom/alibaba/sdk/android/push/b/a;

.field public c:Landroid/content/Context;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/b/b;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/push/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/sdk/android/push/b/b;)Lcom/alibaba/sdk/android/push/b/a;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/a;

    return-object p0
.end method

.method public static a()Lcom/alibaba/sdk/android/push/b/b;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/push/b/b;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "call register"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->a()Lcom/alibaba/sdk/android/push/g/a;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/b/b$23;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/sdk/android/push/b/b$23;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/g/a;->a(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/d/a;->a(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/d/a;

    move-result-object p2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/push/d/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->b()V

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object p2

    invoke-interface {p2}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/push/a/a;->a()Lcom/alibaba/sdk/android/push/a/a;

    move-result-object v0

    const-string v1, "3.7.6"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alibaba/sdk/android/push/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/a/a;->a()Lcom/alibaba/sdk/android/push/a/a;

    move-result-object p1

    new-instance p2, Lcom/alibaba/sdk/android/push/b/b$25;

    invoke-direct {p2, p0}, Lcom/alibaba/sdk/android/push/b/b$25;-><init>(Lcom/alibaba/sdk/android/push/b/b;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/push/a/a;->a(Lcom/alibaba/sdk/android/push/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/alibaba/sdk/android/push/b/b;Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/sdk/android/push/b/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/b/b;->d:Z

    return p1
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p3

    const-string v0, "please call PushServiceFactory.init first"

    invoke-virtual {p3, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p3, Lcom/alibaba/sdk/android/push/common/a/d;->w:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->d:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p3

    const-string v0, "push disabled"

    invoke-virtual {p3, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    sget-object p3, Lcom/alibaba/sdk/android/push/common/a/d;->v:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/sender/SdkInfo;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/sender/SdkInfo;-><init>()V

    const-string v1, "push"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->setSdkId(Ljava/lang/String;)Lcom/alibaba/sdk/android/sender/SdkInfo;

    const-string v1, "3.7.6"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->setSdkVersion(Ljava/lang/String;)Lcom/alibaba/sdk/android/sender/SdkInfo;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->setAppKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/sender/SdkInfo;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->a()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->asyncSend(Landroid/app/Application;Lcom/alibaba/sdk/android/sender/SdkInfo;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->asyncSend(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/push/b/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "Initialize Mobile Push service..."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/push/b/a;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/a;

    :cond_0
    const/16 v4, 0xa

    const/4 v5, 0x5

    new-instance v6, Lcom/alibaba/sdk/android/push/b/b$1;

    invoke-direct {v6, p0}, Lcom/alibaba/sdk/android/push/b/b$1;-><init>(Lcom/alibaba/sdk/android/push/b/b;)V

    const-string v2, "push"

    const-string v3, "3.7.6"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/alibaba/sdk/android/crashdefend/CrashDefendApi;->registerCrashDefendSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/sdk/android/crashdefend/CrashDefendCallback;)V

    return-void
.end method

.method public addAlias(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/sdk/android/push/b/b$2;-><init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string p1, "addAlias"

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bindAccount(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/sdk/android/push/b/b$26;-><init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string p1, "bindAccount"

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bindPhoneNumber(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/sdk/android/push/b/b$21;-><init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string p1, "bindPhoneNumber"

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bindTag(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/push/b/b$28;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/push/b/b$28;-><init>(Lcom/alibaba/sdk/android/push/b/b;I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string p1, "bindTag"

    invoke-direct {p0, p1, p4, v6}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkPushChannelStatus(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$17;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$17;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string v1, "checkPushChannelStatus"

    invoke-direct {p0, v1, p1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearNotifications()V
    .locals 3

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$14;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/b/b$14;-><init>(Lcom/alibaba/sdk/android/push/b/b;)V

    const-string v1, "clearNotifications"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clickMessage(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$19;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$19;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V

    const-string p1, "clickMessage"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public closeDoNotDisturbMode()V
    .locals 3

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$7;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/b/b$7;-><init>(Lcom/alibaba/sdk/android/push/b/b;)V

    const-string v1, "closeDoNotDisturbMode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismissMessage(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$18;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$18;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V

    const-string p1, "dismissMessage"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    const-string v0, "getDeviceId"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getUTDeviceId()Ljava/lang/String;
    .locals 2

    const-string v0, "getUTDeviceId"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public listAliases(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$4;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string v1, "listAlias"

    invoke-direct {p0, v1, p1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public listTags(ILcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/sdk/android/push/b/b$30;-><init>(Lcom/alibaba/sdk/android/push/b/b;ILcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string p1, "listTags"

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppStart()V
    .locals 0

    return-void
.end method

.method public declared-synchronized register(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string v0, "context null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/d;->q:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    const-string v0, "register context null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "register"

    new-instance v1, Lcom/alibaba/sdk/android/push/b/b$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/sdk/android/push/b/b$12;-><init>(Lcom/alibaba/sdk/android/push/b/b;Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 0

    if-eqz p4, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/d;->x:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    const-string p2, "\u8bf7\u4f7f\u7528PushServiceFactory.init(Context appContext, String appKey, String appSecret)\u52a8\u6001\u8bbe\u7f6eappKey appSecret"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->msg(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeAlias(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/sdk/android/push/b/b$3;-><init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string p1, "removeAlias"

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$13;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$13;-><init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/String;)V

    const-string p1, "setAppSecret"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$11;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$11;-><init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/String;)V

    const-string p1, "setAppKey"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDebug(Z)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$24;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$24;-><init>(Lcom/alibaba/sdk/android/push/b/b;Z)V

    const-string p1, "setDebug"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDoNotDisturb(IIIILcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 8

    new-instance v7, Lcom/alibaba/sdk/android/push/b/b$6;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sdk/android/push/b/b$6;-><init>(Lcom/alibaba/sdk/android/push/b/b;IIIILcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string p1, "setDoNotDisturb"

    invoke-direct {p0, p1, p5, v7}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLogLevel(I)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$5;-><init>(Lcom/alibaba/sdk/android/push/b/b;I)V

    const-string p1, "setLogLevel"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNotificationLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$9;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$9;-><init>(Lcom/alibaba/sdk/android/push/b/b;Landroid/graphics/Bitmap;)V

    const-string p1, "setNotificationLargeIcon"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNotificationSmallIcon(I)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$10;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$10;-><init>(Lcom/alibaba/sdk/android/push/b/b;I)V

    const-string p1, "setNotificationSmallIcon"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNotificationSoundFilePath(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$8;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$8;-><init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/String;)V

    const-string p1, "setNotificationSoundFilePath"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPushIntentService(Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$20;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$20;-><init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/Class;)V

    const-string p1, "setPushIntentService"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public turnOffPushChannel(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$16;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$16;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string v1, "turnOffPushChannel"

    invoke-direct {p0, v1, p1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public turnOnPushChannel(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$15;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$15;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string v1, "turnOnPushChannel"

    invoke-direct {p0, v1, p1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unbindAccount(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$27;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$27;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string v1, "unbindAccount"

    invoke-direct {p0, v1, p1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unbindPhoneNumber(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b$22;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/b$22;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string v1, "unbindPhoneNumber"

    invoke-direct {p0, v1, p1, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unbindTag(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/push/b/b$29;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/push/b/b$29;-><init>(Lcom/alibaba/sdk/android/push/b/b;I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    const-string p1, "unBindTag"

    invoke-direct {p0, p1, p4, v6}, Lcom/alibaba/sdk/android/push/b/b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;Ljava/lang/Runnable;)Z

    return-void
.end method
