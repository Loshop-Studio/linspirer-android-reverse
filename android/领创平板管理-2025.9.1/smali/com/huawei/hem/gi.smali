.class public Lcom/huawei/hem/gi;
.super Ljava/lang/Object;
.source "SeewoIMDM.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/huawei/hem/vh;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/vh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/gi;->a:Lcom/huawei/hem/vh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/gi;->a:Lcom/huawei/hem/vh;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Lcom/huawei/hem/mh;->k(Z)V
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
