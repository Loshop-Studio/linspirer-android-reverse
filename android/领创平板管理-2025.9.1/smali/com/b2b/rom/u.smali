.class public final Lcom/b2b/rom/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic a:Lcom/b2b/rom/ISamsungDevice;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Lcom/b2b/rom/ISamsungDevice;J)V
    .locals 0

    iput-object p1, p0, Lcom/b2b/rom/u;->a:Lcom/b2b/rom/ISamsungDevice;

    iput-wide p2, p0, Lcom/b2b/rom/u;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/u;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v0}, Lcom/b2b/rom/ISamsungDevice;->access$4(Lcom/b2b/rom/ISamsungDevice;)V

    iget-object v0, p0, Lcom/b2b/rom/u;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v0}, Lcom/b2b/rom/ISamsungDevice;->access$0(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "modifySystemTime calling..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/b2b/rom/u;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v0}, Lcom/b2b/rom/ISamsungDevice;->access$5(Lcom/b2b/rom/ISamsungDevice;)Lcom/huawei/hem/h0;

    move-result-object v0

    iget-wide v1, p0, Lcom/b2b/rom/u;->b:J

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/h0;->Y2(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
