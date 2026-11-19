.class public Lcom/android/launcher3/network/HiScreenHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "HiScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/HiScreenHelper;->updateScreenSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Lcom/android/launcher3/model/HiBoardScreen;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/HiScreenHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/HiScreenHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/HiScreenHelper$1;->this$0:Lcom/android/launcher3/network/HiScreenHelper;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/android/launcher3/model/HiBoardScreen;)V
    .locals 1

    const-string v0, "HiScreenHelper -- update Screen Settings successfully ."

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/network/HiScreenHelper$1;->this$0:Lcom/android/launcher3/network/HiScreenHelper;

    invoke-static {v0, p1}, Lcom/android/launcher3/network/HiScreenHelper;->access$100(Lcom/android/launcher3/network/HiScreenHelper;Lcom/android/launcher3/model/HiBoardScreen;)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/model/HiBoardScreen;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/HiScreenHelper$1;->handleResult(Lcom/android/launcher3/model/HiBoardScreen;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 2

    const-string v0, "HiScreenHelper -- update HiScreen Settings failed 01."

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/HiScreenHelper$1;->this$0:Lcom/android/launcher3/network/HiScreenHelper;

    invoke-static {v0}, Lcom/android/launcher3/network/HiScreenHelper;->access$200(Lcom/android/launcher3/network/HiScreenHelper;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "HiScreenHelper -- update HiScreen Settings failed 02."

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/HiScreenHelper$1;->this$0:Lcom/android/launcher3/network/HiScreenHelper;

    invoke-static {v0}, Lcom/android/launcher3/network/HiScreenHelper;->access$300(Lcom/android/launcher3/network/HiScreenHelper;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method
