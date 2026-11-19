.class public abstract Lcom/huawei/hem/og;
.super Ljava/lang/Object;
.source "BaseFileServiceUIGuard.java"

# interfaces
.implements Lcom/huawei/hem/we;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CA",
        "LLBACK:Landroid/os/Binder;",
        "INTERFACE::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/huawei/hem/we;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCA",
            "LLBACK;"
        }
    .end annotation
.end field

.field public volatile b:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TINTERFACE;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/og;->d:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/og;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/og;->f:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Lcom/huawei/hem/og;->c:Ljava/lang/Class;

    .line 7
    new-instance p1, Lcom/huawei/hem/se$a;

    invoke-direct {p1}, Lcom/huawei/hem/se$a;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/huawei/hem/og;->a:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/og;->b:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/og;->d:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/gg$a;->v3(Landroid/os/IBinder;)Lcom/huawei/hem/gg;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/og;->b:Landroid/os/IInterface;

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/og;->b:Landroid/os/IInterface;

    iget-object p2, p0, Lcom/huawei/hem/og;->a:Landroid/os/Binder;

    .line 4
    check-cast p1, Lcom/huawei/hem/gg;

    check-cast p2, Lcom/huawei/hem/se$a;

    .line 5
    invoke-interface {p1, p2}, Lcom/huawei/hem/gg;->q0(Lcom/huawei/hem/fg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/huawei/hem/og;->f:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 9
    iget-object p2, p0, Lcom/huawei/hem/og;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 11
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 12
    :cond_0
    sget-object p1, Lcom/huawei/hem/ke$b;->a:Lcom/huawei/hem/ke;

    .line 13
    new-instance p2, Lcom/huawei/hem/wf;

    sget-object v0, Lcom/huawei/hem/wf$a;->connected:Lcom/huawei/hem/wf$a;

    iget-object v1, p0, Lcom/huawei/hem/og;->c:Ljava/lang/Class;

    invoke-direct {p2, v0, v1}, Lcom/huawei/hem/wf;-><init>(Lcom/huawei/hem/wf$a;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {p1, p2}, Lcom/huawei/hem/vf;->a(Lcom/huawei/hem/xf;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/og;->b:Landroid/os/IInterface;

    .line 2
    sget-object p1, Lcom/huawei/hem/ke$b;->a:Lcom/huawei/hem/ke;

    .line 3
    new-instance v0, Lcom/huawei/hem/wf;

    sget-object v1, Lcom/huawei/hem/wf$a;->lost:Lcom/huawei/hem/wf$a;

    iget-object v2, p0, Lcom/huawei/hem/og;->c:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/huawei/hem/wf;-><init>(Lcom/huawei/hem/wf$a;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/huawei/hem/vf;->a(Lcom/huawei/hem/xf;)V

    return-void
.end method

.method public p(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/hh;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/huawei/hem/og;->c:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/og;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/huawei/hem/og;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/huawei/hem/hh;->s(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/hem/og;->d:Z

    const-string v2, "is_foreground"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 8
    iget-boolean v1, p0, Lcom/huawei/hem/og;->d:Z

    if-eqz v1, :cond_1

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fatal-Exception: You can\'t bind the FileDownloadService in :filedownloader process.\n It\'s the invalid operation and is likely to cause unexpected problems.\n Maybe you want to use non-separate process mode for FileDownloader, More detail about non-separate mode, please move to wiki manually: https://github.com/lingochamp/FileDownloader/wiki/filedownloader.properties"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
