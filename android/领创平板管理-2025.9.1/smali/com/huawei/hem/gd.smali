.class public Lcom/huawei/hem/gd;
.super Ljava/lang/Object;
.source "SupiImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/huawei/hem/hd;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/hd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/gd;->a:Lcom/huawei/hem/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "SupiImpl on service connect"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/gd;->a:Lcom/huawei/hem/hd;

    invoke-static {p2}, Lcom/huawei/hem/ui$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/ui;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SupiImpl on service disconnect"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/gd;->a:Lcom/huawei/hem/hd;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    return-void
.end method
