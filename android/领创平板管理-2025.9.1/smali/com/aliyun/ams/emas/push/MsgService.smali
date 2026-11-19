.class public Lcom/aliyun/ams/emas/push/MsgService;
.super Lcom/taobao/accs/data/MsgDistributeService;
.source "Taobao"


# instance fields
.field public b:Lcom/huawei/hem/a1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/accs/data/MsgDistributeService;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/a1;

    invoke-direct {v0}, Lcom/huawei/hem/a1;-><init>()V

    iput-object v0, p0, Lcom/aliyun/ams/emas/push/MsgService;->b:Lcom/huawei/hem/a1;

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-string v0, "MPS:MsgService"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "intent null"

    .line 1
    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/accs/data/MsgDistributeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/accs/data/MsgDistributeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_1
    const-string v3, "MsgService onStartCommand begin...action="

    .line 6
    invoke-static {v3, v2}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/huawei/hem/v0;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p2, p0, Lcom/aliyun/ams/emas/push/MsgService;->b:Lcom/huawei/hem/a1;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 9
    invoke-virtual {p2, p1, p3, v1}, Lcom/huawei/hem/a1;->a(Landroid/content/Intent;Landroid/content/Context;I)I

    const/4 p1, 0x2

    return p1

    .line 10
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/accs/data/MsgDistributeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
