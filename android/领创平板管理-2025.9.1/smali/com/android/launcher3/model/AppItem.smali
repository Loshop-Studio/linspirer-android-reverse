.class public Lcom/android/launcher3/model/AppItem;
.super Ljava/lang/Object;
.source "AppItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# instance fields
.field public activityName:Ljava/lang/String;

.field public icon:Ljava/lang/Object;

.field public isForce:I

.field public name:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public tipCount:I

.field public weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/AppItem;->setPkgName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/AppItem;->setPkgName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/AppItem;->setPkgName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/AppItem;->setActivityName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p1, Lcom/android/launcher3/model/AppItem;

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/model/AppItem;->getWeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/AppItem;->getWeight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    const-class v1, Lcom/android/launcher3/model/AppItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lcom/android/launcher3/model/AppItem;

    .line 3
    iget-object p1, p1, Lcom/android/launcher3/model/AppItem;->pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher3/model/AppItem;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/AppItem;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/AppItem;->icon:Ljava/lang/Object;

    return-object v0
.end method

.method public getIsForce()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/AppItem;->isForce:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/AppItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/AppItem;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/AppItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getTipCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/AppItem;->tipCount:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/AppItem;->weight:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/model/AppItem;->hashStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/AppItem;->hashStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public hashStr()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/AppItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/model/AppItem;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/model/AppItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppItem;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppItem;->icon:Ljava/lang/Object;

    return-void
.end method

.method public setIsForce(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/AppItem;->isForce:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppItem;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method public setTipCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/AppItem;->tipCount:I

    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/AppItem;->weight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AppItem{pkgName=\'"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/AppItem;->pkgName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", weight="

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/model/AppItem;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
