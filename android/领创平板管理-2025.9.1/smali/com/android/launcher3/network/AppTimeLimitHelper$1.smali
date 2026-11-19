.class public Lcom/android/launcher3/network/AppTimeLimitHelper$1;
.super Lcom/android/launcher3/network/response/LTKListResponseListener;
.source "AppTimeLimitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/AppTimeLimitHelper;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKListResponseListener<",
        "Lcom/android/launcher3/model/AppTimeLimit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/AppTimeLimitHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/AppTimeLimitHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper$1;->this$0:Lcom/android/launcher3/network/AppTimeLimitHelper;

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
            "Lcom/android/launcher3/model/AppTimeLimit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppTimeLimitHelper   get app time limit  successfully "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper$1;->this$0:Lcom/android/launcher3/network/AppTimeLimitHelper;

    invoke-static {v0, p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->access$100(Lcom/android/launcher3/network/AppTimeLimitHelper;Ljava/util/List;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 0

    const-string p1, "AppTimeLimitHelper  request app time limit failed "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "AppTimeLimitHelper  request app time limit failed by network "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    return-void
.end method
