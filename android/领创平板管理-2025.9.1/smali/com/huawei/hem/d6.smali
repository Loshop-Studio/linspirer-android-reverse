.class public Lcom/huawei/hem/d6;
.super Ljava/lang/Object;
.source "ApiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/d6$a;,
        Lcom/huawei/hem/d6$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/e6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ApiManager"

    const-string v0, "ApiManager created"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "apimanager"

    .line 3
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/e6$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/e6;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/d6;->a:Lcom/huawei/hem/e6;

    .line 4
    new-instance p1, Lcom/huawei/hem/d6$b;

    invoke-direct {p1, p0}, Lcom/huawei/hem/d6$b;-><init>(Lcom/huawei/hem/d6;)V

    .line 5
    new-instance p1, Lcom/huawei/hem/d6$a;

    invoke-direct {p1, p0}, Lcom/huawei/hem/d6$a;-><init>(Lcom/huawei/hem/d6;)V

    return-void
.end method
