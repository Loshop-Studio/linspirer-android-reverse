.class public Lcom/alibaba/sdk/android/emas/EmasSender;
.super Ljava/lang/Object;
.source "EmasSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/emas/EmasSender$Builder;,
        Lcom/alibaba/sdk/android/emas/EmasSender$a;,
        Lcom/alibaba/sdk/android/emas/EmasSender$b;
    }
.end annotation


# static fields
.field public static final BUILD_REQ_DATA_DONE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "EmasSender"

.field public static sHandler:Landroid/os/Handler;


# instance fields
.field public mBackground:Z

.field public mCacheManager:Lcom/alibaba/sdk/android/emas/c;

.field public mDiskCacheManager:Lcom/alibaba/sdk/android/emas/e;

.field public final mPackDataExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mSendManager:Lcom/alibaba/sdk/android/emas/j;

.field public final mSingleLogLimitCapacity:I


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)V
    .locals 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mBackground:Z

    .line 4
    new-instance v0, Lcom/alibaba/sdk/android/emas/EmasSender$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/emas/EmasSender$1;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mPackDataExecutor:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$000(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSingleLogLimitCapacity:I

    .line 6
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$100(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/alibaba/sdk/android/emas/e;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Landroid/app/Application;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$300(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$400(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$500(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/emas/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/e;

    .line 9
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$600(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v1

    .line 10
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$700(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v2

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$800(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v3

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/emas/e;->a(III)V

    .line 12
    :cond_0
    new-instance v4, Lcom/alibaba/sdk/android/emas/j;

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/e;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/sdk/android/emas/j;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender;Lcom/alibaba/sdk/android/emas/e;)V

    iput-object v4, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    .line 13
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Landroid/app/Application;

    move-result-object v5

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$900(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$400(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1000(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1100(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/sdk/android/emas/j;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$300(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/j;->setHost(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1300(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/j;->a(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1400(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/j;->openHttp(Z)V

    .line 19
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1500(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/j;->a(Z)V

    .line 20
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1600(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/j;->a(I)V

    .line 21
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1700(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Lcom/alibaba/sdk/android/emas/PreSendHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/PreSendHandler;)V

    .line 22
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/j;->e()V

    .line 23
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1800(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1900(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 24
    new-instance v0, Lcom/alibaba/sdk/android/emas/c;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1900(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v2

    .line 25
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$2000(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/emas/c;-><init>(Lcom/alibaba/sdk/android/emas/j;II)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mCacheManager:Lcom/alibaba/sdk/android/emas/c;

    .line 26
    new-instance v0, Lcom/alibaba/sdk/android/emas/i;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/emas/i;-><init>()V

    .line 27
    new-instance v1, Lcom/alibaba/sdk/android/emas/EmasSender$2;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/emas/EmasSender$2;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/i;->a(Lcom/alibaba/sdk/android/emas/i$a;)V

    .line 28
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 29
    :cond_1
    new-instance p1, Lcom/alibaba/sdk/android/emas/EmasSender$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/sdk/android/emas/EmasSender$a;-><init>(Landroid/os/Looper;Lcom/alibaba/sdk/android/emas/EmasSender;)V

    sput-object p1, Lcom/alibaba/sdk/android/emas/EmasSender;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;Lcom/alibaba/sdk/android/emas/EmasSender$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/emas/EmasSender;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)V

    return-void
.end method

.method public static synthetic access$2102(Lcom/alibaba/sdk/android/emas/EmasSender;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mBackground:Z

    return p1
.end method

.method public static synthetic access$2200(Lcom/alibaba/sdk/android/emas/EmasSender;)Lcom/alibaba/sdk/android/emas/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mCacheManager:Lcom/alibaba/sdk/android/emas/c;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/alibaba/sdk/android/emas/EmasSender;)Lcom/alibaba/sdk/android/emas/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/alibaba/sdk/android/emas/EmasSender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSingleLogLimitCapacity:I

    return p0
.end method

.method public static synthetic access$2500()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/sdk/android/emas/EmasSender;->sHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public changeHost(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/emas/j;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mCacheManager:Lcom/alibaba/sdk/android/emas/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/c;->flush()V

    :cond_0
    return-void
.end method

.method public isBackground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mBackground:Z

    return v0
.end method

.method public openHttp(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/emas/j;->openHttp(Z)V

    return-void
.end method

.method public send(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v10, p0

    .line 1
    iget-object v0, v10, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/j;->a()Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/SendService;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v10, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/j;->a()Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/SendService;->getChangeHost()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v11, v10, Lcom/alibaba/sdk/android/emas/EmasSender;->mPackDataExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Lcom/alibaba/sdk/android/emas/EmasSender$b;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/sdk/android/emas/EmasSender$b;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    :goto_0
    const-string v0, "EmasSender send failed. appkey or host is empty."

    .line 5
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/j;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/emas/j;->setUserNick(Ljava/lang/String;)V

    return-void
.end method
