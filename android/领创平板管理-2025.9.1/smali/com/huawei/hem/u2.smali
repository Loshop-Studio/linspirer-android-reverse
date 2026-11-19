.class public Lcom/huawei/hem/u2;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "CheckPwdGestureActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Lcom/android/launcher3/model/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/u2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/launcher3/model/UserInfo;

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    const-string p1, "CheckPwdGestureActivity --  onLineCheckStudentPassword , Request Successfully ............"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/u2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 5
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/huawei/hem/y5;->U(Z)V

    .line 7
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableRecent()V

    .line 8
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableHome()V

    .line 9
    iget-object p1, p0, Lcom/huawei/hem/u2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    const v1, 0x7f0c0056

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {p1, v1, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    iget-object p1, p0, Lcom/huawei/hem/u2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/u2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/u2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method
