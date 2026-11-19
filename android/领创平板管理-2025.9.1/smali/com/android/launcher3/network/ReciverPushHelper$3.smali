.class public Lcom/android/launcher3/network/ReciverPushHelper$3;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "ReciverPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/ReciverPushHelper;->reportServer(Ljava/lang/String;ILandroid/content/Context;)V
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
.field public final synthetic this$0:Lcom/android/launcher3/network/ReciverPushHelper;

.field public final synthetic val$active:I

.field public final synthetic val$cmd:Ljava/lang/String;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/ReciverPushHelper;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/ReciverPushHelper$3;->this$0:Lcom/android/launcher3/network/ReciverPushHelper;

    iput-object p3, p0, Lcom/android/launcher3/network/ReciverPushHelper$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/network/ReciverPushHelper$3;->val$cmd:Ljava/lang/String;

    iput p5, p0, Lcom/android/launcher3/network/ReciverPushHelper$3;->val$active:I

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 2

    const-string p1, " push command report sucess"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/ReciverPushHelper$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/network/ReciverPushHelper$3;->val$cmd:Ljava/lang/String;

    iget v1, p0, Lcom/android/launcher3/network/ReciverPushHelper$3;->val$active:I

    invoke-static {p1, v0, v1}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/ReciverPushHelper$3;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 1

    const-string v0, "push command report fail response code:"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/network/response/Response;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "push command report fail response failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
