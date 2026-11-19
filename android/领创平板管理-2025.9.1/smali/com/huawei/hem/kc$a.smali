.class public final Lcom/huawei/hem/kc$a;
.super Ljava/lang/Object;
.source "AngdaImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/g6$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/g6;

    move-result-object p1

    .line 2
    sput-object p1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const-string p1, "connectionService success"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    sput-object p1, Lcom/huawei/hem/kc;->c:Lcom/huawei/hem/g6;

    const-string p1, "connectionService error"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/huawei/hem/kc;->d:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/kc;->V0(Landroid/content/Context;)V

    return-void
.end method
