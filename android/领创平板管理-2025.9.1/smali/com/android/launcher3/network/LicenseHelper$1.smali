.class public Lcom/android/launcher3/network/LicenseHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "LicenseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/LicenseHelper;->startRegisterLicense(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/LicenseHelper;

.field public final synthetic val$license:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/LicenseHelper;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    iput-object p3, p0, Lcom/android/launcher3/network/LicenseHelper$1;->val$license:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 4

    const-string p1, "LicenseHelper  license.register , Request Successfully"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$100(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/network/LicenseHelper$1;->val$license:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/y5;->g0(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/l2;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 7
    iget-object v0, p1, Lcom/huawei/hem/l2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    const-string v1, "com.zykj.manage"

    .line 8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.linspirer.edu.registerLicense"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 12
    iget-object p1, p1, Lcom/huawei/hem/l2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/LicenseHelper$1;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/network/response/Response;->getCode()I

    move-result p1

    const/16 v0, -0x5910

    const v1, 0x7f0c00cd

    const-string v2, ""

    if-eq p1, v0, :cond_2

    const/16 v0, -0x5848

    if-eq p1, v0, :cond_1

    const/16 v0, -0x5780

    if-eq p1, v0, :cond_0

    const/16 v0, -0x5460

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/l2;

    invoke-virtual {p1}, Lcom/huawei/hem/l2;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$100(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/huawei/hem/y5;->g0(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/l2;

    invoke-virtual {p1}, Lcom/huawei/hem/l2;->a()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$100(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/huawei/hem/y5;->g0(Ljava/lang/String;)V

    const v1, 0x7f0c00ce

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/l2;

    invoke-virtual {p1}, Lcom/huawei/hem/l2;->a()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$100(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/huawei/hem/y5;->g0(Ljava/lang/String;)V

    const v1, 0x7f0c006d

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/l2;

    invoke-virtual {p1}, Lcom/huawei/hem/l2;->a()V

    .line 13
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$300(Lcom/android/launcher3/network/LicenseHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/LicenseHelper$1;->this$0:Lcom/android/launcher3/network/LicenseHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LicenseHelper;->access$200(Lcom/android/launcher3/network/LicenseHelper;)Lcom/huawei/hem/i3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/l2;

    invoke-virtual {p1}, Lcom/huawei/hem/l2;->b()V

    :cond_0
    return-void
.end method
