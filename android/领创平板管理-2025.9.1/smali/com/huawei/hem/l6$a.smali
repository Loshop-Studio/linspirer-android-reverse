.class public Lcom/huawei/hem/l6$a;
.super Landroid/content/BroadcastReceiver;
.source "FnfSDKProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/l6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/l6;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/l6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/l6$a;->a:Lcom/huawei/hem/l6;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "read.installfilter"

    .line 2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "list.installfilter"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/huawei/hem/l6$a;->a:Lcom/huawei/hem/l6;

    .line 5
    iget-object p2, p2, Lcom/huawei/hem/l6;->b:Lcom/huawei/hem/o6;

    if-eqz p2, :cond_3

    .line 6
    invoke-interface {p2, p1}, Lcom/huawei/hem/o6;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v0, "log.executor"

    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "msg"

    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/huawei/hem/l6$a;->a:Lcom/huawei/hem/l6;

    .line 10
    iget-object p2, p2, Lcom/huawei/hem/l6;->a:Lcom/huawei/hem/n6;

    if-eqz p2, :cond_3

    .line 11
    invoke-interface {p2, p1}, Lcom/huawei/hem/n6;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.fnf.iptables.BRODCAST_IPTABLE_CMD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "cmd"

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "state"

    .line 14
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "result"

    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 17
    iget-object p2, p0, Lcom/huawei/hem/l6$a;->a:Lcom/huawei/hem/l6;

    .line 18
    iget-object p2, p2, Lcom/huawei/hem/l6;->d:Lcom/huawei/hem/m6;

    if-eqz p2, :cond_3

    .line 19
    invoke-interface {p2, p1}, Lcom/huawei/hem/m6;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string p1, "error"

    .line 20
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/huawei/hem/l6$a;->a:Lcom/huawei/hem/l6;

    .line 22
    iget-object p2, p2, Lcom/huawei/hem/l6;->d:Lcom/huawei/hem/m6;

    if-eqz p2, :cond_3

    .line 23
    invoke-interface {p2, p1}, Lcom/huawei/hem/m6;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
