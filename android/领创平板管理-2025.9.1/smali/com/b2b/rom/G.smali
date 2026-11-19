.class public final Lcom/b2b/rom/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic a:Lcom/b2b/rom/ISamsungDevice;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/b2b/rom/ISamsungDevice;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/b2b/rom/G;->a:Lcom/b2b/rom/ISamsungDevice;

    iput-object p2, p0, Lcom/b2b/rom/G;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/b2b/rom/G;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v0}, Lcom/b2b/rom/ISamsungDevice;->access$4(Lcom/b2b/rom/ISamsungDevice;)V

    iget-object v0, p0, Lcom/b2b/rom/G;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v0}, Lcom/b2b/rom/ISamsungDevice;->access$0(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urlWhiteListWrite_2 calling..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/b2b/rom/G;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v0}, Lcom/b2b/rom/ISamsungDevice;->access$5(Lcom/b2b/rom/ISamsungDevice;)Lcom/huawei/hem/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/b2b/rom/G;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/huawei/hem/h0;->D1(Ljava/util/List;)Z

    move-result v0

    iget-object v1, p0, Lcom/b2b/rom/G;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v1}, Lcom/b2b/rom/ISamsungDevice;->access$0(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "urlWhiteListWrite_2:"

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
