.class public final Lcom/huawei/hem/oc$a;
.super Ljava/lang/Object;
.source "DongfangImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/oc;->V0()V
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

    const-string p1, "DongfangImpl -- bindServer successfully ."

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/huawei/hem/w$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/w;

    move-result-object p1

    .line 3
    sput-object p1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "DongfangImpl -- bindServer failed and bindServer again ."

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/oc;->V0()V

    return-void
.end method
