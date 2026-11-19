.class public Lcom/android/launcher3/db/model/ItemApp;
.super Ljava/lang/Object;
.source "ItemApp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x4d5a3b6cab037c01L


# instance fields
.field public canuninstall:Z

.field public exception_white_url:I

.field public hide_icon_status:I

.field public id:Ljava/lang/String;

.field public index:Ljava/lang/Long;

.field public isForceApps:I

.field public isNew:I

.field public isTrust:I

.field public isWhite:I

.field public is_trust:Z

.field public isforce:Z

.field public isnew:Z

.field public md5sum:Ljava/lang/String;

.field public packagename:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public sha1:Ljava/lang/String;

.field public sort_weight:I

.field public status:I

.field public updated_at:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public versioncode:I

.field public versionname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/launcher3/db/model/ItemApp;->index:Ljava/lang/Long;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/launcher3/db/model/ItemApp;->id:Ljava/lang/String;

    move v1, p3

    .line 4
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->status:I

    move v1, p4

    .line 5
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->isNew:I

    move v1, p5

    .line 6
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->exception_white_url:I

    move v1, p6

    .line 7
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->isTrust:I

    move v1, p7

    .line 8
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->hide_icon_status:I

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/launcher3/db/model/ItemApp;->packagename:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/launcher3/db/model/ItemApp;->versionname:Ljava/lang/String;

    move v1, p10

    .line 11
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->versioncode:I

    move v1, p11

    .line 12
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->isForceApps:I

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/launcher3/db/model/ItemApp;->sha1:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/launcher3/db/model/ItemApp;->updated_at:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/launcher3/db/model/ItemApp;->userName:Ljava/lang/String;

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->isWhite:I

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/android/launcher3/db/model/ItemApp;->sort_weight:I

    return-void
.end method


# virtual methods
.method public getException_white_url()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ItemApp;->exception_white_url:I

    return v0
.end method

.method public getHide_icon_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ItemApp;->hide_icon_status:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ItemApp;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ItemApp;->index:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsForceApps()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ItemApp;->isForceApps:I

    return v0
.end method

.method public getIsNew()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ItemApp;->isNew:I

    return v0
.end method

.method public getIsTrust()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ItemApp;->isTrust:I

    return v0
.end method

.method public getIsWhite()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMd5sum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ItemApp;->md5sum:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ItemApp;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ItemApp;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ItemApp;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSort_weight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ItemApp;->sort_weight:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ItemApp;->status:I

    return v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ItemApp;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersioncode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ItemApp;->versioncode:I

    return v0
.end method

.method public getVersionname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ItemApp;->versionname:Ljava/lang/String;

    return-object v0
.end method

.method public isCanuninstall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ItemApp;->canuninstall:Z

    return v0
.end method

.method public isIs_trust()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ItemApp;->is_trust:Z

    return v0
.end method

.method public isIsforce()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ItemApp;->isforce:Z

    return v0
.end method

.method public isIsnew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/ItemApp;->isnew:Z

    return v0
.end method

.method public setCanuninstall(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ItemApp;->canuninstall:Z

    return-void
.end method

.method public setException_white_url(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->exception_white_url:I

    return-void
.end method

.method public setHide_icon_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->hide_icon_status:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->id:Ljava/lang/String;

    return-void
.end method

.method public setIndex(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->index:Ljava/lang/Long;

    return-void
.end method

.method public setIsForceApps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->isForceApps:I

    return-void
.end method

.method public setIsNew(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->isNew:I

    return-void
.end method

.method public setIsTrust(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->isTrust:I

    return-void
.end method

.method public setIsWhite(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->isWhite:I

    return-void
.end method

.method public setIs_trust(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ItemApp;->is_trust:Z

    return-void
.end method

.method public setIsforce(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ItemApp;->isforce:Z

    return-void
.end method

.method public setIsnew(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/ItemApp;->isnew:Z

    return-void
.end method

.method public setMd5sum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->md5sum:Ljava/lang/String;

    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->packagename:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->path:Ljava/lang/String;

    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->sha1:Ljava/lang/String;

    return-void
.end method

.method public setSort_weight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->sort_weight:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->status:I

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->updated_at:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->userName:Ljava/lang/String;

    return-void
.end method

.method public setVersioncode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ItemApp;->versioncode:I

    return-void
.end method

.method public setVersionname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ItemApp;->versionname:Ljava/lang/String;

    return-void
.end method
