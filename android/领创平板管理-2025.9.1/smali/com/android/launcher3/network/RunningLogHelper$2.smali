.class public final Lcom/android/launcher3/network/RunningLogHelper$2;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "RunningLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/RunningLogHelper;->reportLogs(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/launcher3/network/RunningLogHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "client log file sucess"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/RunningLogHelper$2;->val$context:Landroid/content/Context;

    const v0, 0x7f0c00d6

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/RunningLogHelper$2;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 1

    const-string p1, "client log file failed"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/RunningLogHelper$2;->val$context:Landroid/content/Context;

    const v0, 0x7f0c00d3

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "client log file failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/RunningLogHelper$2;->val$context:Landroid/content/Context;

    const v0, 0x7f0c00d3

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    return-void
.end method
