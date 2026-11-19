.class public Lcom/android/launcher3/network/response/FileUploadResponse;
.super Ljava/lang/Object;
.source "FileUploadResponse.java"


# instance fields
.field public code:I

.field public data:Lcom/android/launcher3/model/FileUpload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/network/response/FileUploadResponse;->code:I

    return v0
.end method

.method public getData()Lcom/android/launcher3/model/FileUpload;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/response/FileUploadResponse;->data:Lcom/android/launcher3/model/FileUpload;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/network/response/FileUploadResponse;->code:I

    return-void
.end method

.method public setData(Lcom/android/launcher3/model/FileUpload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/response/FileUploadResponse;->data:Lcom/android/launcher3/model/FileUpload;

    return-void
.end method
