.class public Lcom/huawei/hem/t1$a;
.super Ljava/lang/Object;
.source "HCHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/t1;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/t1$a;->a:Lcom/huawei/hem/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/t1$a;->a:Lcom/huawei/hem/t1;

    invoke-static {p2}, Lcom/huawei/hem/u1$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/u1;

    move-result-object p2

    .line 2
    iput-object p2, p1, Lcom/huawei/hem/t1;->a:Lcom/huawei/hem/u1;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/t1$a;->a:Lcom/huawei/hem/t1;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/huawei/hem/t1;->a:Lcom/huawei/hem/u1;

    .line 3
    sput-object v0, Lcom/huawei/hem/t1;->c:Lcom/huawei/hem/t1;

    return-void
.end method
