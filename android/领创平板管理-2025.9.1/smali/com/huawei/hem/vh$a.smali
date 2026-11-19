.class public Lcom/huawei/hem/vh$a;
.super Ljava/lang/Object;
.source "SeewoIMDM.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/vh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/vh;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/vh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/vh$a;->a:Lcom/huawei/hem/vh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "test"

    const-string v0, "onServiceConnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/vh$a;->a:Lcom/huawei/hem/vh;

    invoke-static {p2}, Lcom/huawei/hem/mh$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/mh;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/vh$a;->a:Lcom/huawei/hem/vh;

    .line 5
    iget-object p1, p1, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 7
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/vh$a;->a:Lcom/huawei/hem/vh;

    .line 9
    iget-object p1, p1, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "test"

    const-string v0, "onServiceDisconnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/vh$a;->a:Lcom/huawei/hem/vh;

    .line 3
    iget-object v0, p1, Lcom/huawei/hem/vh;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.seewo.student.control"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.seewo.eclass.stucontrolservice"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x21

    .line 7
    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
