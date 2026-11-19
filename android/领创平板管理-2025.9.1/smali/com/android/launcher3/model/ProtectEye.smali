.class public Lcom/android/launcher3/model/ProtectEye;
.super Ljava/lang/Object;
.source "ProtectEye.java"


# instance fields
.field public distance_status:I

.field public sensitive_status:I

.field public sitting_position_status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/ProtectEye;->distance_status:I

    return v0
.end method

.method public getSensitive_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/ProtectEye;->sensitive_status:I

    return v0
.end method

.method public getSitting_position_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/ProtectEye;->sitting_position_status:I

    return v0
.end method

.method public setDistance_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/ProtectEye;->distance_status:I

    return-void
.end method

.method public setSensitive_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/ProtectEye;->sensitive_status:I

    return-void
.end method

.method public setSitting_position_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/ProtectEye;->sitting_position_status:I

    return-void
.end method
