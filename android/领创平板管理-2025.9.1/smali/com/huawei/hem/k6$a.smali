.class public Lcom/huawei/hem/k6$a;
.super Ljava/lang/Object;
.source "FnfSDK.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/k6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/k6;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/k6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/k6$a;->a:Lcom/huawei/hem/k6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/k6$a;->a:Lcom/huawei/hem/k6;

    invoke-static {p2}, Lcom/huawei/hem/j6$a;->J(Landroid/os/IBinder;)Lcom/huawei/hem/j6;

    move-result-object p2

    .line 2
    iput-object p2, p1, Lcom/huawei/hem/k6;->b:Lcom/huawei/hem/j6;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
