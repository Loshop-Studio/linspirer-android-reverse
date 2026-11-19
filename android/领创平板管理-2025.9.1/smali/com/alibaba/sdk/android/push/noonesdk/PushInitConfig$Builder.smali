.class public Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public application:Landroid/app/Application;

.field public disableChannelProcess:Z

.field public disableChannelProcessHeartbeat:Z

.field public disableForegroundCheck:Z

.field public loopInterval:J

.field public loopStartChannel:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->appSecret:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableChannelProcess:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableChannelProcessHeartbeat:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->loopStartChannel:Z

    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->loopInterval:J

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableForegroundCheck:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->application:Landroid/app/Application;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableChannelProcess:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->loopStartChannel:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->loopInterval:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableForegroundCheck:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableChannelProcessHeartbeat:Z

    return p0
.end method


# virtual methods
.method public appKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public appSecret(Ljava/lang/String;)Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method public application(Landroid/app/Application;)Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->application:Landroid/app/Application;

    return-object p0
.end method

.method public build()Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;-><init>(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)V

    return-object v0
.end method

.method public disableChannelProcess(Z)Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableChannelProcess:Z

    return-object p0
.end method

.method public disableChannelProcessheartbeat(Z)Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableChannelProcessHeartbeat:Z

    return-object p0
.end method

.method public disableForegroundCheck(Z)Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->disableForegroundCheck:Z

    return-object p0
.end method

.method public loopInterval(J)Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->loopInterval:J

    return-object p0
.end method

.method public loopStartChannel(Z)Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->loopStartChannel:Z

    return-object p0
.end method
