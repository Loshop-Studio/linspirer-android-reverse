.class public final Lcom/b2b/rom/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic a:Lcom/b2b/rom/ISamsungDevice;


# direct methods
.method public constructor <init>(Lcom/b2b/rom/ISamsungDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/b2b/rom/F;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/b2b/rom/F;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v0}, Lcom/b2b/rom/ISamsungDevice;->access$4(Lcom/b2b/rom/ISamsungDevice;)V

    iget-object v0, p0, Lcom/b2b/rom/F;->a:Lcom/b2b/rom/ISamsungDevice;

    invoke-static {v0}, Lcom/b2b/rom/ISamsungDevice;->access$0(Lcom/b2b/rom/ISamsungDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disallowFirmwareDownload calling..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
