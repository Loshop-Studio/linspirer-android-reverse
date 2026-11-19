.class public Lcom/huawei/hem/kc$c;
.super Ljava/lang/Object;
.source "AngdaImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/kc;->I0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/kc;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/huawei/hem/kc$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "AngdaImpl setNetworkAccessAppWhiteList "

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/kc$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const/4 v4, 0x1

    .line 4
    invoke-interface {v3, v4, v2, v4}, Lcom/huawei/hem/g6;->Y0(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->s(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_1
    return-void
.end method
