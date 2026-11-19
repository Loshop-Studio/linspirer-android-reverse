.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "IconCompatParcelizer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/huawei/hem/x;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>()V

    .line 2
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/huawei/hem/x;->d(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    .line 3
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mData:[B

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0, v2}, Lcom/huawei/hem/x;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/huawei/hem/y;

    .line 6
    iget-object v2, v1, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    new-array v2, v2, [B

    .line 8
    iget-object v1, v1, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    move-object v1, v2

    .line 9
    :goto_0
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mData:[B

    .line 10
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/huawei/hem/x;->e(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    .line 11
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/huawei/hem/x;->d(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    .line 12
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/huawei/hem/x;->d(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    .line 13
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/huawei/hem/x;->e(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 14
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v2, 0x7

    .line 15
    invoke-virtual {p0, v2}, Lcom/huawei/hem/x;->c(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    check-cast p0, Lcom/huawei/hem/y;

    .line 17
    iget-object p0, p0, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18
    :goto_1
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->onPostParceling()V

    return-object v0
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;Lcom/huawei/hem/x;)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/IconCompat;->onPreParceling(Z)V

    .line 2
    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/huawei/hem/x;->g(II)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mData:[B

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1, v2}, Lcom/huawei/hem/x;->f(I)V

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/huawei/hem/y;

    if-eqz v1, :cond_0

    .line 6
    iget-object v3, v2, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    array-length v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v3, v2, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v2, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    :goto_0
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v3, 0x3

    .line 10
    invoke-virtual {p1, v3}, Lcom/huawei/hem/x;->f(I)V

    .line 11
    iget-object v3, v2, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    invoke-virtual {v3, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/huawei/hem/x;->g(II)V

    .line 13
    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v3}, Lcom/huawei/hem/x;->g(II)V

    .line 14
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v3, 0x6

    .line 15
    invoke-virtual {p1, v3}, Lcom/huawei/hem/x;->f(I)V

    .line 16
    iget-object v3, v2, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    invoke-virtual {v3, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v0, 0x7

    .line 18
    invoke-virtual {p1, v0}, Lcom/huawei/hem/x;->f(I)V

    .line 19
    iget-object p1, v2, Lcom/huawei/hem/y;->b:Landroid/os/Parcel;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 20
    throw p0
.end method
