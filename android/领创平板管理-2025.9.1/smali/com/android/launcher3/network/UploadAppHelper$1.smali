.class public Lcom/android/launcher3/network/UploadAppHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "UploadAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/UploadAppHelper;->uploadAppList()V
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
.field public final synthetic this$0:Lcom/android/launcher3/network/UploadAppHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/UploadAppHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/UploadAppHelper$1;->this$0:Lcom/android/launcher3/network/UploadAppHelper;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
# RE I/O 保存字符串偏好（SharedPreferences$Editor.putString）。
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 3

    const-string p1, "UploadAppHelper upload installed apps sucess"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/UploadAppHelper$1;->this$0:Lcom/android/launcher3/network/UploadAppHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/UploadAppHelper;->access$100(Lcom/android/launcher3/network/UploadAppHelper;)Lcom/huawei/hem/p5;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p1, Lcom/huawei/hem/p5;->a:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/huawei/hem/p5;->c:Lcom/huawei/hem/ac;

    .line 8
    iget-object v1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "appupload_date"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 10
    iget-object p1, p0, Lcom/android/launcher3/network/UploadAppHelper$1;->this$0:Lcom/android/launcher3/network/UploadAppHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/UploadAppHelper;->access$100(Lcom/android/launcher3/network/UploadAppHelper;)Lcom/huawei/hem/p5;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hem/p5;->a(I)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/UploadAppHelper$1;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 0

    const-string p1, "UploadAppHelper upload installed apps failed"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "UploadAppHelper upload installed apps failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
