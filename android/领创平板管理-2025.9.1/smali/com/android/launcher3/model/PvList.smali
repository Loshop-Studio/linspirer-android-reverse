.class public Lcom/android/launcher3/model/PvList;
.super Ljava/lang/Object;
.source "PvList.java"


# instance fields
.field public pid:I

.field public vid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/PvList;->pid:I

    return v0
.end method

.method public getVid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/PvList;->vid:I

    return v0
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/PvList;->pid:I

    return-void
.end method

.method public setVid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/PvList;->vid:I

    return-void
.end method
