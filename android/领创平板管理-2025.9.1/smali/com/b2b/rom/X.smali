.class public final Lcom/b2b/rom/X;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public synthetic a:Lcom/b2b/rom/ISamsungDevice;


# direct methods
.method public constructor <init>(Lcom/b2b/rom/ISamsungDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/b2b/rom/X;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/b2b/rom/ISamsungDevice;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b2b/rom/X;-><init>(Lcom/b2b/rom/ISamsungDevice;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/b2b/rom/X;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {p1}, Lcom/b2b/rom/ISamsungDevice;->access$1(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/b2b/rom/X;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {p2}, Lcom/huawei/hem/i0;->J(Landroid/os/IBinder;)Lcom/huawei/hem/h0;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/b2b/rom/ISamsungDevice;->access$2(Lcom/b2b/rom/ISamsungDevice;Lcom/huawei/hem/h0;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/b2b/rom/X;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {p1}, Lcom/b2b/rom/ISamsungDevice;->access$0(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KnoxServiceConnection:onServiceConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/b2b/rom/X;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {p1}, Lcom/b2b/rom/ISamsungDevice;->access$0(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxServiceConnection:onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/b2b/rom/X;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {p1}, Lcom/b2b/rom/ISamsungDevice;->access$1(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/b2b/rom/X;->a:Lcom/b2b/rom/ISamsungDevice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b2b/rom/ISamsungDevice;->access$2(Lcom/b2b/rom/ISamsungDevice;Lcom/huawei/hem/h0;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
