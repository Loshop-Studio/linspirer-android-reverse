.class public Lcom/android/launcher3/network/params/CommandDetailParams;
.super Lcom/android/launcher3/network/params/Params;
.source "CommandDetailParams.java"


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/network/params/CommandDetailParams;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/network/params/CommandDetailParams;->type:I

    return-void
.end method
