.class public Lcom/huawei/hem/df;
.super Ljava/lang/Object;
.source "PauseAllMarker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static d:Ljava/io/File;

.field public static final e:Ljava/lang/Long;


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Landroid/os/Handler;

.field public final c:Lcom/huawei/hem/gg;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/df;->e:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/gg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/df;->c:Lcom/huawei/hem/gg;

    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/df;->b()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-class v1, Lcom/huawei/hem/df;

    const-string v2, "delete marker file "

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/huawei/hem/fh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b()Ljava/io/File;
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/df;->d:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, ".filedownloader_pause_all_marker.b"

    invoke-static {v2, v0, v3}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hem/df;->d:Ljava/io/File;

    .line 4
    :cond_0
    sget-object v0, Lcom/huawei/hem/df;->d:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/huawei/hem/df;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/df;->c:Lcom/huawei/hem/gg;

    invoke-interface {p1}, Lcom/huawei/hem/gg;->l3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-static {}, Lcom/huawei/hem/df;->a()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "pause all failed"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x6

    .line 4
    invoke-static {v3, p0, p1, v1, v2}, Lcom/huawei/hem/fh;->d(ILjava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :goto_1
    invoke-static {}, Lcom/huawei/hem/df;->a()V

    .line 6
    throw p1

    .line 7
    :cond_0
    :goto_2
    iget-object p1, p0, Lcom/huawei/hem/df;->b:Landroid/os/Handler;

    sget-object v1, Lcom/huawei/hem/df;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1
.end method
