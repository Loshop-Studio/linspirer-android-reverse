.class public Lcom/android/launcher3/network/UrlWhiteHelper$1;
.super Lcom/android/launcher3/network/response/LTKListResponseListener;
.source "UrlWhiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/UrlWhiteHelper;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKListResponseListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/UrlWhiteHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/UrlWhiteHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/UrlWhiteHelper$1;->this$0:Lcom/android/launcher3/network/UrlWhiteHelper;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKListResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UrlWhiteHelper get server url successfully "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper$1;->this$0:Lcom/android/launcher3/network/UrlWhiteHelper;

    invoke-static {v0, p1}, Lcom/android/launcher3/network/UrlWhiteHelper;->access$100(Lcom/android/launcher3/network/UrlWhiteHelper;Ljava/util/List;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 2

    const-string v0, "UrlWhiteHelper  request url white failed "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/UrlWhiteHelper$1;->this$0:Lcom/android/launcher3/network/UrlWhiteHelper;

    invoke-static {v0}, Lcom/android/launcher3/network/UrlWhiteHelper;->access$200(Lcom/android/launcher3/network/UrlWhiteHelper;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/UrlWhiteHelper$1;->this$0:Lcom/android/launcher3/network/UrlWhiteHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/UrlWhiteHelper;->access$300(Lcom/android/launcher3/network/UrlWhiteHelper;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "UrlWhiteHelper request url white failed by network "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/UrlWhiteHelper$1;->this$0:Lcom/android/launcher3/network/UrlWhiteHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/UrlWhiteHelper;->access$300(Lcom/android/launcher3/network/UrlWhiteHelper;)V

    return-void
.end method
