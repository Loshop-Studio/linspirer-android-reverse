.class public final Lcom/huawei/hem/v5;
.super Ljava/util/TimerTask;
.source "DownLoadUtil.java"


# instance fields
.field public final synthetic a:Lcom/huawei/hem/g3;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/g3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/v5;->a:Lcom/huawei/hem/g3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/v5;->a:Lcom/huawei/hem/g3;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;

    if-eqz v0, :cond_0

    const-string v1, "RemoveControlDialogActivity  installFail"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;->a:Lcom/android/launcher3/activity/RemoveControlDialogActivity;

    new-instance v2, Lcom/huawei/hem/f2;

    invoke-direct {v2, v0}, Lcom/huawei/hem/f2;-><init>(Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    :cond_1
    :goto_0
    return-void
.end method
