.class public Lcom/b2b/rom/ISamsungDevice;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public d:Lcom/huawei/hem/h0;

.field public e:Lcom/b2b/rom/X;

.field public f:Lcom/huawei/hem/e0;

.field public g:Lcom/b2b/rom/W;

.field public h:Ljava/lang/Object;

.field public i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Samsung-IMDM"

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v0, "2.0.2"

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->e:Lcom/b2b/rom/X;

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->g:Lcom/b2b/rom/W;

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->h:Ljava/lang/Object;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/b2b/rom/ISamsungDevice;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Samsung-IMDM"

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v0, "2.0.2"

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->e:Lcom/b2b/rom/X;

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->g:Lcom/b2b/rom/W;

    iput-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->h:Ljava/lang/Object;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/b2b/rom/ISamsungDevice;->i:J

    iput-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->c:Landroid/content/Context;

    new-instance p1, Lcom/b2b/rom/X;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/b2b/rom/X;-><init>(Lcom/b2b/rom/ISamsungDevice;B)V

    iput-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->e:Lcom/b2b/rom/X;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.knoxinterfaceagent"

    const-string v2, "com.samsung.knoxinterfaceagent.RemoteKnoxService"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/b2b/rom/ISamsungDevice;->e:Lcom/b2b/rom/X;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance p1, Lcom/b2b/rom/W;

    invoke-direct {p1, p0, v0}, Lcom/b2b/rom/W;-><init>(Lcom/b2b/rom/ISamsungDevice;B)V

    iput-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->g:Lcom/b2b/rom/W;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.customee"

    const-string v1, "com.samsung.customee.CustomDeviceService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->g:Lcom/b2b/rom/W;

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->h:Ljava/lang/Object;

    iget-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ISamsungDevice:newInstance:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread ID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Main Thread ID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$0(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/b2b/rom/ISamsungDevice;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2(Lcom/b2b/rom/ISamsungDevice;Lcom/huawei/hem/h0;)V
    .locals 0

    iput-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    return-void
.end method

.method public static synthetic access$3(Lcom/b2b/rom/ISamsungDevice;Lcom/huawei/hem/e0;)V
    .locals 0

    iput-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    return-void
.end method

.method public static synthetic access$4(Lcom/b2b/rom/ISamsungDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/b2b/rom/ISamsungDevice;->checkRemoteService()V

    return-void
.end method

.method public static synthetic access$5(Lcom/b2b/rom/ISamsungDevice;)Lcom/huawei/hem/h0;
    .locals 0

    iget-object p0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    return-object p0
.end method

.method public static synthetic access$6(Lcom/b2b/rom/ISamsungDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/b2b/rom/ISamsungDevice;->checkCustomService()V

    return-void
.end method

.method public static synthetic access$7(Lcom/b2b/rom/ISamsungDevice;)Lcom/huawei/hem/e0;
    .locals 0

    iget-object p0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    return-object p0
.end method

.method private declared-synchronized checkCustomService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "waiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-wide v0, p0, Lcom/b2b/rom/ISamsungDevice;->i:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized checkRemoteService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "waiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-wide v0, p0, Lcom/b2b/rom/ISamsungDevice;->i:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSdCardState(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setSdCardState:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "setSdCardState: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/C;

    invoke-direct {v1, p0, p1}, Lcom/b2b/rom/C;-><init>(Lcom/b2b/rom/ISamsungDevice;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/h0;->u1(Z)Z

    move-result p1

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addNetworkAccessAppWhiteList(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addNetworkAccessAppWhiteList:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "addNetworkAccessAppWhiteList: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/D;

    invoke-direct {v1, p0, p1}, Lcom/b2b/rom/D;-><init>(Lcom/b2b/rom/ISamsungDevice;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/h0;->r2(Ljava/util/List;)V

    iget-object p1, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v0, "addNetworkAccessAppWhiteList finished"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public allowFirmwareDownload()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "allowFirmwareDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "allowFirmwareDownload: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/E;

    invoke-direct {v1, p0}, Lcom/b2b/rom/E;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public appWhiteListRead()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appWhiteListRead:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->y0()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public appWhiteListWrite(Ljava/util/List;)Z
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appWhiteListWrite:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "appWhiteListWrite: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/r;

    invoke-direct {v1, p0, p1}, Lcom/b2b/rom/r;-><init>(Lcom/b2b/rom/ISamsungDevice;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/h0;->i0(Ljava/util/List;)Z

    move-result p1

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public clearLockedScreenPassword()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "clearLockedScreenPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "clearLockedScreenPassword: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/p;

    invoke-direct {v1, p0}, Lcom/b2b/rom/p;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->C2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableApp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disableApp:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableApp: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/U;

    invoke-direct {v1, p0, p1}, Lcom/b2b/rom/U;-><init>(Lcom/b2b/rom/ISamsungDevice;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/h0;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableAppDetail()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableAppDetail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableAppDetail: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/Q;

    invoke-direct {v1, p0}, Lcom/b2b/rom/Q;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableBack()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableBack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableBack: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/d;

    invoke-direct {v1, p0}, Lcom/b2b/rom/d;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->e2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableBluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableBluetooth: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/H;

    invoke-direct {v1, p0}, Lcom/b2b/rom/H;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableCamera()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableCamera: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/S;

    invoke-direct {v1, p0}, Lcom/b2b/rom/S;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->B0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableGPS()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableGPS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableGPS: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/t;

    invoke-direct {v1, p0}, Lcom/b2b/rom/t;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->L2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableHome()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableHome"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableHome: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/b;

    invoke-direct {v1, p0}, Lcom/b2b/rom/b;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->h0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableHomeLongFunc()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableHomeLongFunc"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableHomeLongFunc: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/P;

    invoke-direct {v1, p0}, Lcom/b2b/rom/P;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->Q1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableLockScreenIcon()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableLockScreenIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableLockScreenIcon: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/L;

    invoke-direct {v1, p0}, Lcom/b2b/rom/L;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableLongPressPower()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableLongPressPower"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableLongPressPower: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/m;

    invoke-direct {v1, p0}, Lcom/b2b/rom/m;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->M1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableOtgStorage()V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableOtgStorage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableOtgStorage: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/A;

    invoke-direct {v1, p0}, Lcom/b2b/rom/A;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/huawei/hem/h0;->x0(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v2, "disableOtgStorage:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableRecent()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableRecent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableRecent: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/f;

    invoke-direct {v1, p0}, Lcom/b2b/rom/f;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->U()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableScreensHots()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableScreensHots"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableScreensHots: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/J;

    invoke-direct {v1, p0}, Lcom/b2b/rom/J;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->Z()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableSdCard()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableSdCard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b2b/rom/ISamsungDevice;->setSdCardState(Z)Z

    return-void
.end method

.method public disableSettingSectionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableSettingSectionMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableSettingSectionMenu: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/N;

    invoke-direct {v1, p0}, Lcom/b2b/rom/N;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableShortPressPower"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableShortPressPower: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/j;

    invoke-direct {v1, p0}, Lcom/b2b/rom/j;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->K()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableStatusBar: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/z;

    invoke-direct {v1, p0}, Lcom/b2b/rom/z;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->q()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableUsb()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableUsb"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableUsb: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/l;

    invoke-direct {v1, p0}, Lcom/b2b/rom/l;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disableVolume()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disableVolume: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/h;

    invoke-direct {v1, p0}, Lcom/b2b/rom/h;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->V1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public disallowFirmwareDownload()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disallowFirmwareDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "disallowFirmwareDownload: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/F;

    invoke-direct {v1, p0}, Lcom/b2b/rom/F;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableApp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableApp:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableApp: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/T;

    invoke-direct {v1, p0, p1}, Lcom/b2b/rom/T;-><init>(Lcom/b2b/rom/ISamsungDevice;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/h0;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableAppDetail()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableAppDetail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableAppDetail: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/O;

    invoke-direct {v1, p0}, Lcom/b2b/rom/O;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableBack()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableBack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableBack: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/c;

    invoke-direct {v1, p0}, Lcom/b2b/rom/c;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->m1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableBluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableBluetooth: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/w;

    invoke-direct {v1, p0}, Lcom/b2b/rom/w;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableCamera()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableCamera: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/R;

    invoke-direct {v1, p0}, Lcom/b2b/rom/R;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableGPS()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableGPS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableGPS: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/s;

    invoke-direct {v1, p0}, Lcom/b2b/rom/s;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->R1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableHome()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableHome"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableHome: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/V;

    invoke-direct {v1, p0}, Lcom/b2b/rom/V;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->n3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableLockScreenIcon()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableLockScreenIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableLockScreenIcon: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/K;

    invoke-direct {v1, p0}, Lcom/b2b/rom/K;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableLongPressPower()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableLongPressPower"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableLongPressPower: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/k;

    invoke-direct {v1, p0}, Lcom/b2b/rom/k;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->R0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableOtgStorage()V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableOtgStorage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableOtgStorage: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/B;

    invoke-direct {v1, p0}, Lcom/b2b/rom/B;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Lcom/huawei/hem/h0;->x0(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v2, "enableOtgStorage:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableRecent()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableRecent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableRecent: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/e;

    invoke-direct {v1, p0}, Lcom/b2b/rom/e;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->c3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableScreensHots()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableScreensHots"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableScreensHots: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/I;

    invoke-direct {v1, p0}, Lcom/b2b/rom/I;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->g3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableSdCard()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableSdCard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/b2b/rom/ISamsungDevice;->setSdCardState(Z)Z

    return-void
.end method

.method public enableSettingSectionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableSettingSectionMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->f:Lcom/huawei/hem/e0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableSettingSectionMenu: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/M;

    invoke-direct {v1, p0}, Lcom/b2b/rom/M;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/e0;->q()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableShortPressPower"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableShortPressPower: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/i;

    invoke-direct {v1, p0}, Lcom/b2b/rom/i;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->R2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableStatusBar: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/y;

    invoke-direct {v1, p0}, Lcom/b2b/rom/y;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableUsb()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableUsb"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableUsb: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/a;

    invoke-direct {v1, p0}, Lcom/b2b/rom/a;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public enableVolume()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "enableVolume: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/g;

    invoke-direct {v1, p0}, Lcom/b2b/rom/g;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->d1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public getNetworkAccessAppWhiteList()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNetworkAccessAppWhiteList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v2, "getNetworkAccessAppWhiteList:service is not be initialized until now"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->m()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public hideWifiAdvanced()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "hideWifiAdvanced"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "hideWifiAdvanced: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/x;

    invoke-direct {v1, p0}, Lcom/b2b/rom/x;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public declared-synchronized isInitFinish()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v2, "isInitFinish:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public modifySystemTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "modifySystemTime:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "modifySystemTime: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/b2b/rom/u;-><init>(Lcom/b2b/rom/ISamsungDevice;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/huawei/hem/h0;->Y2(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public resetFactory()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "resetFactory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "resetFactory: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/q;

    invoke-direct {v1, p0}, Lcom/b2b/rom/q;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->x()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public showWifiAdvanced()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "showWifiAdvanced"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "showWifiAdvanced: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/v;

    invoke-direct {v1, p0}, Lcom/b2b/rom/v;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->r3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public silentInstall(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "silentInstall:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "silentInstall: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/n;

    invoke-direct {v1, p0, p1}, Lcom/b2b/rom/n;-><init>(Lcom/b2b/rom/ISamsungDevice;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/h0;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public silentUnInstall(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "silentUnInstall:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "silentUnInstall: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/o;

    invoke-direct {v1, p0, p1}, Lcom/b2b/rom/o;-><init>(Lcom/b2b/rom/ISamsungDevice;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/h0;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public urlWhiteListRead()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "urlWhiteListRead:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/h0;->v1()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public urlWhiteListWrite(Ljava/util/List;)Z
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "urlWhiteListWrite_2:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->d:Lcom/huawei/hem/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    const-string v1, "urlWhiteListWrite_2: start a new Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b2b/rom/G;

    invoke-direct {v1, p0, p1}, Lcom/b2b/rom/G;-><init>(Lcom/b2b/rom/ISamsungDevice;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/h0;->D1(Ljava/util/List;)Z

    move-result p1

    iget-object v0, p0, Lcom/b2b/rom/ISamsungDevice;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
