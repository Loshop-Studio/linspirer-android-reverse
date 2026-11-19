.class public Lcom/huawei/hem/i2;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "ChangePwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/ChangePwdActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/ChangePwdActivity;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/i2;->a:Lcom/android/launcher3/activity/ChangePwdActivity;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/i2;->a:Lcom/android/launcher3/activity/ChangePwdActivity;

    iget-object v0, p1, Lcom/android/launcher3/activity/ChangePwdActivity;->d:Landroid/content/Context;

    const v1, 0x7f0c00f6

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    new-instance p1, Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;

    invoke-direct {p1}, Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;-><init>()V

    iget-object v0, p0, Lcom/huawei/hem/i2;->a:Lcom/android/launcher3/activity/ChangePwdActivity;

    iget-object v0, v0, Lcom/android/launcher3/activity/ChangePwdActivity;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/receiver/LinspirerLauncherReceiver;->b(Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/huawei/hem/i2;->a:Lcom/android/launcher3/activity/ChangePwdActivity;

    iget-object p1, p1, Lcom/android/launcher3/activity/ChangePwdActivity;->d:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/LoginActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hem/i2;->a:Lcom/android/launcher3/activity/ChangePwdActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/huawei/hem/i2;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/i2;->a:Lcom/android/launcher3/activity/ChangePwdActivity;

    iget-object v0, v0, Lcom/android/launcher3/activity/ChangePwdActivity;->d:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    const-string p1, "ChangePwdActivity ---request url change_pwd failed by network "

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    return-void
.end method
