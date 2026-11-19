.class public Lcom/huawei/hem/of$b;
.super Ljava/lang/Object;
.source "ConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static a(IJLjava/lang/String;Ljava/lang/String;Lcom/huawei/hem/af;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 1
    check-cast p5, Lcom/huawei/hem/tg;

    .line 2
    iget-object p5, p5, Lcom/huawei/hem/tg;->b:Lcom/huawei/hem/ug;

    .line 3
    monitor-enter p5

    .line 4
    :try_start_0
    iget-object v1, p5, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    iget-object v3, p5, Lcom/huawei/hem/ug;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/qf;

    if-nez v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v3}, Lcom/huawei/hem/qf;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, v3, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 8
    iget v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    if-eq v4, p0, :cond_1

    .line 9
    iget-object v4, v3, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    iget-object v1, v3, Lcom/huawei/hem/qf;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 12
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p5

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    monitor-exit p5

    move v1, v0

    :goto_2
    if-eqz v1, :cond_4

    .line 15
    sget-object p5, Lcom/huawei/hem/jg$a;->a:Lcom/huawei/hem/jg;

    .line 16
    new-instance v0, Lcom/huawei/hem/eg;

    invoke-direct {v0, v1, p3, p4}, Lcom/huawei/hem/eg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/32 p3, 0x7fffffff

    cmp-long p3, p1, p3

    if-lez p3, :cond_3

    .line 17
    new-instance p3, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    goto :goto_3

    .line 18
    :cond_3
    new-instance p3, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    long-to-int p1, p1

    invoke-direct {p3, p0, p1, v0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    .line 19
    :goto_3
    invoke-virtual {p5, p3}, Lcom/huawei/hem/jg;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 20
    monitor-exit p5

    throw p0

    :cond_4
    return v0
.end method

.method public static b(ILjava/lang/String;ZZ)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_4

    .line 1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    sget-object p1, Lcom/huawei/hem/jg$a;->a:Lcom/huawei/hem/jg;

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p2, v0, v2

    const/4 v2, 0x1

    if-lez p2, :cond_2

    if-eqz p3, :cond_1

    .line 5
    new-instance p2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;

    invoke-direct {p2, p0, v2, v0, v1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;-><init>(IZJ)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    invoke-direct {p2, p0, v2, v0, v1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 7
    new-instance p2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;

    long-to-int p3, v0

    invoke-direct {p2, p0, v2, p3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;-><init>(IZI)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance p2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    long-to-int p3, v0

    invoke-direct {p2, p0, v2, p3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(IZI)V

    .line 9
    :goto_0
    invoke-virtual {p1, p2}, Lcom/huawei/hem/jg;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return v2

    :cond_4
    return v0
.end method

.method public static c(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/huawei/hem/af;Z)Z
    .locals 6

    .line 1
    check-cast p2, Lcom/huawei/hem/tg;

    invoke-virtual {p2, p1}, Lcom/huawei/hem/tg;->c(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2
    sget-object p2, Lcom/huawei/hem/jg$a;->a:Lcom/huawei/hem/jg;

    .line 3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()J

    move-result-wide v2

    .line 4
    iget-wide v4, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:J

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    if-eqz p3, :cond_0

    .line 5
    new-instance p1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;

    move-object v0, p1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;-><init>(IJJ)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;

    move-object v0, p1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;-><init>(IJJ)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    new-instance p1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;

    long-to-int p3, v2

    long-to-int v0, v4

    invoke-direct {p1, p0, p3, v0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;-><init>(III)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;

    long-to-int p3, v2

    long-to-int v0, v4

    invoke-direct {p1, p0, p3, v0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;-><init>(III)V

    .line 9
    :goto_0
    invoke-virtual {p2, p1}, Lcom/huawei/hem/jg;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static d(I)Z
    .locals 0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(I)Z
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/huawei/hem/of$b;->g(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static g(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/huawei/hem/ah;

    invoke-direct {v7, p2}, Lcom/huawei/hem/ah;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0xf

    move-object v0, v8

    move v1, p0

    move v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v8, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v8
.end method

.method public static h(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "ebenmdm"

    const-string v1, "setAppDisable"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.eben.mdm.action.app.disable"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appdisable"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.eben.lingchuangmdm"

    const-string v1, "com.eben.lingchuangmdm.MdmBroadCastReceiver"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static i(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "ebenmdm"

    const-string v1, "setAppEnable"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.eben.mdm.action.app.able"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appable"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.eben.lingchuangmdm"

    const-string v1, "com.eben.lingchuangmdm.MdmBroadCastReceiver"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silentInstall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ebenmdm"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.eben.mdm.action.silent.install"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "silentinstall"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.eben.lingchuangmdm"

    const-string v1, "com.eben.lingchuangmdm.MdmBroadCastReceiver"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silentUninstall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ebenmdm"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.eben.mdm.action.silent.uninstall"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "silentuninstall"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.eben.lingchuangmdm"

    const-string v1, "com.eben.lingchuangmdm.MdmBroadCastReceiver"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
