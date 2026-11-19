.class public final Lcom/android/launcher3/network/DeviceInfoUploadHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "DeviceInfoUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/DeviceInfoUploadHelper;->uploadInfo()V
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
.field public final synthetic val$token:Ljava/lang/String;

.field public final synthetic val$userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/huawei/hem/y5;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/launcher3/network/DeviceInfoUploadHelper$1;->val$userInfoUtil:Lcom/huawei/hem/y5;

    iput-object p3, p0, Lcom/android/launcher3/network/DeviceInfoUploadHelper$1;->val$token:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
# RE I/O 保存字符串偏好（SharedPreferences$Editor.putString）。
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 3

    const-string p1, "DeviceInfoUploadHelper  on sucess"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceInfoUploadHelper$1;->val$userInfoUtil:Lcom/huawei/hem/y5;

    iget-object v0, p0, Lcom/android/launcher3/network/DeviceInfoUploadHelper$1;->val$token:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Lcom/huawei/hem/y5;->K:Ljava/lang/String;

    if-eq v1, v0, :cond_0

    .line 5
    iput-object v0, p1, Lcom/huawei/hem/y5;->K:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 7
    iget-object v1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "push_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/DeviceInfoUploadHelper$1;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 1

    const-string v0, "DeviceInfoUploadHelper  onFaid response:"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/network/response/Response;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "DeviceInfoUploadHelper  upload device info  onFail by net"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    return-void
.end method
