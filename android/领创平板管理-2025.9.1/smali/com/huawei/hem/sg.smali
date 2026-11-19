.class public Lcom/huawei/hem/sg;
.super Lcom/huawei/hem/gg$a;
.source "FDServiceSharedHandler.java"

# interfaces
.implements Lcom/huawei/hem/wg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/sg$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/tg;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/huawei/hem/tg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/huawei/hem/tg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/gg$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/sg;->b:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    return-void
.end method


# virtual methods
.method public C1(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/tg;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public K1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/tg;->a:Lcom/huawei/hem/if;

    invoke-interface {v0}, Lcom/huawei/hem/if;->clear()V

    return-void
.end method

.method public P2(ILandroid/app/Notification;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/sg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public V0(Lcom/huawei/hem/fg;)V
    .locals 0

    return-void
.end method

.method public a0(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/tg;->a:Lcom/huawei/hem/if;

    invoke-interface {v0, p1}, Lcom/huawei/hem/if;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:J

    :goto_0
    return-wide v0
.end method

.method public b(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/tg;->a:Lcom/huawei/hem/if;

    invoke-interface {v0, p1}, Lcom/huawei/hem/if;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()B

    move-result p1

    :goto_0
    return p1
.end method

.method public b1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    invoke-virtual {v0}, Lcom/huawei/hem/tg;->d()Z

    move-result v0

    return v0
.end method

.method public c2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/huawei/hem/hh;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object p2, v0, Lcom/huawei/hem/tg;->a:Lcom/huawei/hem/if;

    invoke-interface {p2, p1}, Lcom/huawei/hem/if;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hem/tg;->c(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/huawei/hem/tg;->g(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/sg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public l3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    invoke-virtual {v0}, Lcom/huawei/hem/tg;->f()V

    return-void
.end method

.method public n(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/tg;->e(I)Z

    move-result p1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)V
    .locals 0

    .line 1
    sget-object p1, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 2
    iget-object p1, p1, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    instance-of p2, p1, Lcom/huawei/hem/re;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/huawei/hem/sg$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1, p0}, Lcom/huawei/hem/sg$a;->a(Lcom/huawei/hem/sg;)V

    return-void
.end method

.method public q0(Lcom/huawei/hem/fg;)V
    .locals 0

    return-void
.end method

.method public q2(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/huawei/hem/tg;->b:Lcom/huawei/hem/ug;

    invoke-virtual {v1, p1}, Lcom/huawei/hem/ug;->c(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public t(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/tg;->a(I)Z

    move-result p1

    return p1
.end method
