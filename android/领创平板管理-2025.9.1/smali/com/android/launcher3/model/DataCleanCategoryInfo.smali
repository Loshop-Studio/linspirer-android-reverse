.class public Lcom/android/launcher3/model/DataCleanCategoryInfo;
.super Ljava/lang/Object;
.source "DataCleanCategoryInfo.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public number:I

.field public select:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->desc:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->number:I

    .line 5
    iput-boolean p3, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->select:Z

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->number:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->select:Z

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->number:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/model/DataCleanCategoryInfo;->select:Z

    return-void
.end method
