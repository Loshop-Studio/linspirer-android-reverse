.class public Lcom/android/launcher3/model/DeviceUse;
.super Ljava/lang/Object;
.source "DeviceUse.java"


# instance fields
.field public duration:I

.field public remind_status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/DeviceUse;->duration:I

    return v0
.end method

.method public getRemind_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/DeviceUse;->remind_status:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/DeviceUse;->duration:I

    return-void
.end method

.method public setRemind_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/DeviceUse;->remind_status:I

    return-void
.end method
