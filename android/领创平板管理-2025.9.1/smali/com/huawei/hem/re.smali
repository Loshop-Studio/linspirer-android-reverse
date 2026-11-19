.class public Lcom/huawei/hem/re;
.super Ljava/lang/Object;
.source "FileDownloadServiceSharedTransmit.java"

# interfaces
.implements Lcom/huawei/hem/we;
.implements Lcom/huawei/hem/sg$a;


# static fields
.field public static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/huawei/hem/sg;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;

    sput-object v0, Lcom/huawei/hem/re;->d:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/re;->a:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/re;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/sg;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/re;->c:Lcom/huawei/hem/sg;

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/re;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/re;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/huawei/hem/ke$b;->a:Lcom/huawei/hem/ke;

    .line 8
    new-instance v0, Lcom/huawei/hem/wf;

    sget-object v1, Lcom/huawei/hem/wf$a;->connected:Lcom/huawei/hem/wf$a;

    sget-object v2, Lcom/huawei/hem/re;->d:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/huawei/hem/wf;-><init>(Lcom/huawei/hem/wf$a;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/huawei/hem/vf;->a(Lcom/huawei/hem/xf;)V

    return-void
.end method

.method public b(I)B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/re;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "request get the status for the task[%d] in the download service"

    invoke-static {p1, v0}, Lcom/huawei/hem/zg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/re;->c:Lcom/huawei/hem/sg;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/sg;->b(I)B

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/re;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/huawei/hem/zg;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p0

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/re;->c:Lcom/huawei/hem/sg;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/huawei/hem/sg;->d(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    const/4 v1, 0x1

    return v1
.end method

.method public g(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/re;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "request cancel the foreground status[%B] for the download service"

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/zg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/re;->c:Lcom/huawei/hem/sg;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/sg;->g(Z)V

    .line 5
    iput-boolean v1, p0, Lcom/huawei/hem/re;->a:Z

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/re;->c:Lcom/huawei/hem/sg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/re;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "request pause the task[%d] in the download service"

    invoke-static {p1, v0}, Lcom/huawei/hem/zg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/re;->c:Lcom/huawei/hem/sg;

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/sg;->a:Lcom/huawei/hem/tg;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/tg;->e(I)Z

    move-result p1

    return p1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/re;->a:Z

    return v0
.end method

.method public p(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/huawei/hem/re;->d:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/hh;->s(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/hem/re;->a:Z

    const-string v2, "is_foreground"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-boolean v1, p0, Lcom/huawei/hem/re;->a:Z

    if-eqz v1, :cond_0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method
