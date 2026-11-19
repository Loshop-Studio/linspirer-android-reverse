.class public Lcom/huawei/hem/oh;
.super Ljava/lang/Object;
.source "SeewoIMDM.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/huawei/hem/vh;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/vh;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/oh;->b:Lcom/huawei/hem/vh;

    iput-object p2, p0, Lcom/huawei/hem/oh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/oh;->b:Lcom/huawei/hem/vh;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/oh;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/mh;->r(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
