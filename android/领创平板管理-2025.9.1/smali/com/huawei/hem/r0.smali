.class public final Lcom/huawei/hem/r0;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/huawei/hem/m0;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic e:Lcom/huawei/hem/t0;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/m0;Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;Lcom/huawei/hem/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/r0;->a:Lcom/huawei/hem/m0;

    iput-object p2, p0, Lcom/huawei/hem/r0;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/hem/r0;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/huawei/hem/r0;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/huawei/hem/r0;->e:Lcom/huawei/hem/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/r0;->a:Lcom/huawei/hem/m0;

    iget-object v1, p0, Lcom/huawei/hem/r0;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hem/r0;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/m0;->customNotificationUI(Landroid/content/Context;Ljava/util/Map;)Landroid/app/Notification;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/r0;->d:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/huawei/hem/s0;

    invoke-direct {v2, p0, v0}, Lcom/huawei/hem/s0;-><init>(Lcom/huawei/hem/r0;Landroid/app/Notification;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/r0;->e:Lcom/huawei/hem/t0;

    invoke-virtual {v1, v0}, Lcom/huawei/hem/t0;->a(Landroid/app/Notification;)V

    :goto_0
    return-void
.end method
