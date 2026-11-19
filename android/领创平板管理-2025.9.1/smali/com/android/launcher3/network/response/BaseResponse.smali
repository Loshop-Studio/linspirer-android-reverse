.class public abstract Lcom/android/launcher3/network/response/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"

# interfaces
.implements Lcom/huawei/hem/yb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailed(Lcom/android/launcher3/network/response/Response;)V
.end method

.method public onFailure(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/BaseResponse;->onFailureByNet(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract onFailureByNet(Ljava/lang/Object;)V
.end method

.method public onProgress(JJ)V
    .locals 0

    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/huawei/hem/bc;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/huawei/hem/bc;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/BaseResponse;->onSucessDecrypt(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/launcher3/network/response/Response;

    invoke-direct {p1}, Lcom/android/launcher3/network/response/Response;-><init>()V

    const/16 v0, -0x12c

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/response/Response;->setCode(I)V

    const-string v0, ""

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/response/Response;->setData(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/BaseResponse;->onFailed(Lcom/android/launcher3/network/response/Response;)V

    return-void
.end method

.method public abstract onSucessDecrypt(Ljava/lang/String;)V
.end method
