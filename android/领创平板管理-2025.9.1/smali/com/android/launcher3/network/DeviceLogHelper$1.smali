.class public Lcom/android/launcher3/network/DeviceLogHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "DeviceLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/DeviceLogHelper;->uploadEvent()V
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
.field public final synthetic this$0:Lcom/android/launcher3/network/DeviceLogHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/DeviceLogHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper$1;->this$0:Lcom/android/launcher3/network/DeviceLogHelper;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 0

    const-string p1, "DeviceLogHelper  device logs upload sucess"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper$1;->this$0:Lcom/android/launcher3/network/DeviceLogHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/DeviceLogHelper;->access$100(Lcom/android/launcher3/network/DeviceLogHelper;)Lcom/android/launcher3/db/model/UserEventDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/DeviceLogHelper$1;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 0

    const-string p1, "DeviceLogHelper upload device failed"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "DeviceLogHelper  upload device failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
