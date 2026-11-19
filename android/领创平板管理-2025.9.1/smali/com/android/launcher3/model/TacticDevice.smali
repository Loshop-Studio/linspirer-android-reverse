.class public Lcom/android/launcher3/model/TacticDevice;
.super Ljava/lang/Object;
.source "TacticDevice.java"


# instance fields
.field public deviceManage:Lcom/android/launcher3/db/model/ManageDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceManage()Lcom/android/launcher3/db/model/ManageDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/TacticDevice;->deviceManage:Lcom/android/launcher3/db/model/ManageDevice;

    return-object v0
.end method

.method public setDeviceManage(Lcom/android/launcher3/db/model/ManageDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/TacticDevice;->deviceManage:Lcom/android/launcher3/db/model/ManageDevice;

    return-void
.end method
