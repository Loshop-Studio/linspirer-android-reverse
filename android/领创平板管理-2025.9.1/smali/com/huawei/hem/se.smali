.class public Lcom/huawei/hem/se;
.super Lcom/huawei/hem/og;
.source "FileDownloadServiceUIGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/se$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hem/og<",
        "Lcom/huawei/hem/se$a;",
        "Lcom/huawei/hem/gg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;

    invoke-direct {p0, v0}, Lcom/huawei/hem/og;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(I)B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/og;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "request get the status for the task[%d] in the download service"

    invoke-static {p1, v0}, Lcom/huawei/hem/zg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/og;->b:Landroid/os/IInterface;

    .line 4
    check-cast v0, Lcom/huawei/hem/gg;

    invoke-interface {v0, p1}, Lcom/huawei/hem/gg;->b(I)B

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/og;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static/range {p1 .. p3}, Lcom/huawei/hem/zg;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    return v1

    :cond_0
    move-object v2, p0

    .line 3
    :try_start_0
    iget-object v0, v2, Lcom/huawei/hem/og;->b:Landroid/os/IInterface;

    .line 4
    move-object v3, v0

    check-cast v3, Lcom/huawei/hem/gg;

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/huawei/hem/gg;->d(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public g(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/og;->isConnected()Z

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
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/og;->b:Landroid/os/IInterface;

    .line 5
    check-cast v0, Lcom/huawei/hem/gg;

    invoke-interface {v0, p1}, Lcom/huawei/hem/gg;->g(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    iput-boolean v1, p0, Lcom/huawei/hem/og;->d:Z

    return-void

    :goto_1
    iput-boolean v1, p0, Lcom/huawei/hem/og;->d:Z

    .line 8
    throw p1
.end method

.method public n(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/og;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "request pause the task[%d] in the download service"

    invoke-static {p1, v0}, Lcom/huawei/hem/zg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/og;->b:Landroid/os/IInterface;

    .line 4
    check-cast v0, Lcom/huawei/hem/gg;

    invoke-interface {v0, p1}, Lcom/huawei/hem/gg;->n(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method
