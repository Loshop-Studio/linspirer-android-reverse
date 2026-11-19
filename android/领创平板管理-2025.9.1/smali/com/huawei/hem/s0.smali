.class public Lcom/huawei/hem/s0;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Notification;

.field public final synthetic b:Lcom/huawei/hem/r0;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/r0;Landroid/app/Notification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/s0;->b:Lcom/huawei/hem/r0;

    iput-object p2, p0, Lcom/huawei/hem/s0;->a:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/s0;->b:Lcom/huawei/hem/r0;

    iget-object v0, v0, Lcom/huawei/hem/r0;->e:Lcom/huawei/hem/t0;

    iget-object v1, p0, Lcom/huawei/hem/s0;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/t0;->a(Landroid/app/Notification;)V

    return-void
.end method
