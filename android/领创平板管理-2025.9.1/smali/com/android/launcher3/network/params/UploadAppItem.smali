.class public Lcom/android/launcher3/network/params/UploadAppItem;
.super Ljava/lang/Object;
.source "UploadAppItem.java"


# instance fields
.field public appname:Ljava/lang/String;

.field public isWhiteApp:I

.field public issystemapp:I

.field public packagename:Ljava/lang/String;

.field public versioncode:I

.field public versionname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/UploadAppItem;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getIsWhiteApp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/network/params/UploadAppItem;->isWhiteApp:I

    return v0
.end method

.method public getIssystemapp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/network/params/UploadAppItem;->issystemapp:I

    return v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/UploadAppItem;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public getVersioncode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/network/params/UploadAppItem;->versioncode:I

    return v0
.end method

.method public getVersionname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/UploadAppItem;->versionname:Ljava/lang/String;

    return-object v0
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/UploadAppItem;->appname:Ljava/lang/String;

    return-void
.end method

.method public setIsWhiteApp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/network/params/UploadAppItem;->isWhiteApp:I

    return-void
.end method

.method public setIssystemapp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/network/params/UploadAppItem;->issystemapp:I

    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/UploadAppItem;->packagename:Ljava/lang/String;

    return-void
.end method

.method public setVersioncode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/network/params/UploadAppItem;->versioncode:I

    return-void
.end method

.method public setVersionname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/UploadAppItem;->versionname:Ljava/lang/String;

    return-void
.end method
