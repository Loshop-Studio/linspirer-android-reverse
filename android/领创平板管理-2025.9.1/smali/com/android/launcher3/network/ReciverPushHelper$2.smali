.class public Lcom/android/launcher3/network/ReciverPushHelper$2;
.super Lcom/android/launcher3/network/response/LTKListResponseListener;
.source "ReciverPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/ReciverPushHelper;->pullCommandFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKListResponseListener<",
        "Lcom/android/launcher3/db/model/PushMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/ReciverPushHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/ReciverPushHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/ReciverPushHelper$2;->this$0:Lcom/android/launcher3/network/ReciverPushHelper;

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
            "Lcom/android/launcher3/db/model/PushMsg;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ReciverPushHelper---get devices command success----"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/ReciverPushHelper$2;->this$0:Lcom/android/launcher3/network/ReciverPushHelper;

    invoke-static {v0, p1}, Lcom/android/launcher3/network/ReciverPushHelper;->access$100(Lcom/android/launcher3/network/ReciverPushHelper;Ljava/util/List;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 1

    const-string v0, "ReciverPushHelper---get devices command fail response code :"

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

    const-string p1, "ReciverPushHelper---get devices command fail response failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
