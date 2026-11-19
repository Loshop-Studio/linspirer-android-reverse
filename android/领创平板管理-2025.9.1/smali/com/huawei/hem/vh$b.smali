.class public Lcom/huawei/hem/vh$b;
.super Ljava/lang/Object;
.source "SeewoIMDM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/vh;->f(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/huawei/hem/vh;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/vh;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/vh$b;->b:Lcom/huawei/hem/vh;

    iput-object p2, p0, Lcom/huawei/hem/vh$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/vh$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/huawei/hem/vh$b;->b:Lcom/huawei/hem/vh;

    .line 3
    iget-object v2, v2, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    .line 4
    invoke-interface {v2, v1}, Lcom/huawei/hem/mh;->k1(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method
