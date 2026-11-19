.class public Lcom/huawei/hem/g5;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Lcom/android/launcher3/model/UpdatedUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/h5;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/h5;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/g5;->a:Lcom/huawei/hem/h5;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/launcher3/model/UpdatedUserInfo;

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/g5;->a:Lcom/huawei/hem/h5;

    if-eqz v0, :cond_0

    const-string v0, "NetworkChangeReceiver ---update user info success----"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/model/UpdatedUserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/UpdatedUserInfo;->getSchool_name()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/model/UpdatedUserInfo;->getClass_name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NetworkChangeReceiver ---,name=="

    const-string v3, ",school_name=="

    const-string v4, ",class_name=="

    .line 7
    invoke-static {v2, v0, v3, v1, v4}, Lcom/huawei/hem/f6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 9
    invoke-virtual {v2, v0}, Lcom/huawei/hem/y5;->j0(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v1}, Lcom/huawei/hem/y5;->o0(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p1}, Lcom/huawei/hem/y5;->s0(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 0

    const-string p1, "NetworkChangeReceiver ---request url white failed---"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "NetworkChangeReceiver ---request url update user info  failed by network"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
