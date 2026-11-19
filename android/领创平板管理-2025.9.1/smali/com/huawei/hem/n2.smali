.class public Lcom/huawei/hem/n2;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "PromptDiaLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/PromptDiaLogActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/PromptDiaLogActivity;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/n2;->a:Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 0

    const-string p1, "PromptDiaLogActivity cancel distribute sucess"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/n2;->a:Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-static {p1}, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f(Lcom/android/launcher3/activity/PromptDiaLogActivity;)V

    return-void
.end method

.method public handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    const-string p1, "PromptDiaLogActivity cancel distribute sucess"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/n2;->a:Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-static {p1}, Lcom/android/launcher3/activity/PromptDiaLogActivity;->f(Lcom/android/launcher3/activity/PromptDiaLogActivity;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 3

    const-string v0, "PromptDiaLogActivity cancel distribute failed"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/n2;->a:Lcom/android/launcher3/activity/PromptDiaLogActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/n2;->a:Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "PromptDiaLogActivity cancel distribute failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/n2;->a:Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
