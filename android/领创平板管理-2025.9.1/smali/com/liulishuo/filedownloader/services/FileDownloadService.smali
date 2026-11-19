.class public Lcom/liulishuo/filedownloader/services/FileDownloadService;
.super Landroid/app/Service;
.source "FileDownloadService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;,
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/wg;

.field public b:Lcom/huawei/hem/df;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/huawei/hem/wg;

    invoke-interface {v0, p1}, Lcom/huawei/hem/wg;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sput-object p0, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    .line 4
    iget v0, v0, Lcom/huawei/hem/gh;->a:I

    .line 5
    sget-object v1, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/hh;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sput v0, Lcom/huawei/hem/hh;->a:I

    .line 8
    sget-object v0, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    .line 9
    iget-wide v0, v0, Lcom/huawei/hem/gh;->b:J

    .line 10
    sget-object v2, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 11
    invoke-static {v2}, Lcom/huawei/hem/hh;->o(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    sput-wide v0, Lcom/huawei/hem/hh;->b:J

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "This value is used in the :filedownloader process, so set this value in your process is without effect. You can add \'process.non-separate=true\' in \'filedownloader.properties\' to share the main process to FileDownloadService. Or you can configure this value in \'filedownloader.properties\' by \'download.min-progress-time\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "This value is used in the :filedownloader process, so set this value in your process is without effect. You can add \'process.non-separate=true\' in \'filedownloader.properties\' to share the main process to FileDownloadService. Or you can configure this value in \'filedownloader.properties\' by \'download.min-progress-step\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 16
    :goto_0
    new-instance v0, Lcom/huawei/hem/tg;

    invoke-direct {v0}, Lcom/huawei/hem/tg;-><init>()V

    .line 17
    sget-object v1, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    .line 18
    iget-boolean v1, v1, Lcom/huawei/hem/gh;->d:Z

    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Lcom/huawei/hem/sg;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/huawei/hem/sg;-><init>(Ljava/lang/ref/WeakReference;Lcom/huawei/hem/tg;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/huawei/hem/wg;

    goto :goto_1

    .line 20
    :cond_2
    new-instance v1, Lcom/huawei/hem/rg;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/huawei/hem/rg;-><init>(Ljava/lang/ref/WeakReference;Lcom/huawei/hem/tg;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/huawei/hem/wg;

    .line 21
    :goto_1
    invoke-static {}, Lcom/huawei/hem/df;->a()V

    .line 22
    new-instance v0, Lcom/huawei/hem/df;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/huawei/hem/wg;

    check-cast v1, Lcom/huawei/hem/gg;

    invoke-direct {v0, v1}, Lcom/huawei/hem/df;-><init>(Lcom/huawei/hem/gg;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->b:Lcom/huawei/hem/df;

    .line 23
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PauseAllChecker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/huawei/hem/df;->a:Landroid/os/HandlerThread;

    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/huawei/hem/df;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/huawei/hem/df;->b:Landroid/os/Handler;

    .line 26
    sget-object v0, Lcom/huawei/hem/df;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->b:Lcom/huawei/hem/df;

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/df;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/df;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/huawei/hem/wg;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hem/wg;->onStartCommand(Landroid/content/Intent;II)V

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "is_foreground"

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3
    sget-object p1, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    .line 4
    iget-object p2, p1, Lcom/huawei/hem/pf;->g:Lcom/huawei/hem/vg;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p1, Lcom/huawei/hem/pf;->g:Lcom/huawei/hem/vg;

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hem/pf;->c()Lcom/huawei/hem/qg;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/huawei/hem/qg;->a()Lcom/huawei/hem/vg;

    move-result-object p2

    .line 9
    iput-object p2, p1, Lcom/huawei/hem/pf;->g:Lcom/huawei/hem/vg;

    .line 10
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p2, p1, Lcom/huawei/hem/pf;->g:Lcom/huawei/hem/vg;

    .line 12
    :goto_0
    iget-boolean p1, p2, Lcom/huawei/hem/vg;->e:Z

    if-eqz p1, :cond_4

    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_4

    .line 14
    new-instance p1, Landroid/app/NotificationChannel;

    .line 15
    iget-object p3, p2, Lcom/huawei/hem/vg;->b:Ljava/lang/String;

    .line 16
    iget-object v0, p2, Lcom/huawei/hem/vg;->c:Ljava/lang/String;

    const/4 v1, 0x2

    .line 17
    invoke-direct {p1, p3, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string p3, "notification"

    .line 18
    invoke-virtual {p0, p3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    if-nez p3, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {p3, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 20
    :cond_4
    iget p1, p2, Lcom/huawei/hem/vg;->a:I

    .line 21
    iget-object p3, p2, Lcom/huawei/hem/vg;->d:Landroid/app/Notification;

    if-nez p3, :cond_5

    .line 22
    sget p3, Lcom/liulishuo/filedownloader/R$string;->default_filedownloader_notification_title:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 23
    sget v0, Lcom/liulishuo/filedownloader/R$string;->default_filedownloader_notification_content:I

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p2, Lcom/huawei/hem/vg;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    const v0, 0x1080002

    .line 27
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 28
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    .line 29
    iput-object p3, p2, Lcom/huawei/hem/vg;->d:Landroid/app/Notification;

    .line 30
    :cond_5
    iget-object p2, p2, Lcom/huawei/hem/vg;->d:Landroid/app/Notification;

    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 32
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
