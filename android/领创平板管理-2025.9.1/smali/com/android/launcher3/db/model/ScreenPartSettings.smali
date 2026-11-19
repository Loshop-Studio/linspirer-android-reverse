.class public Lcom/android/launcher3/db/model/ScreenPartSettings;
.super Ljava/lang/Object;
.source "ScreenPartSettings.java"


# instance fields
.field public b_img_path:Ljava/lang/String;

.field public component:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public package_name:Ljava/lang/String;

.field public position:I

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->position:I

    .line 14
    iput-object p2, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->id:Ljava/lang/Long;

    .line 3
    iput p2, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->position:I

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->title:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->type:I

    .line 6
    iput-object p5, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->url:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->component:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->package_name:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->b_img_path:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/android/launcher3/db/model/ScreenPartSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/android/launcher3/db/model/ScreenPartSettings;

    .line 3
    iget v2, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->position:I

    iget p1, p1, Lcom/android/launcher3/db/model/ScreenPartSettings;->position:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getB_img_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->b_img_path:Ljava/lang/String;

    return-object v0
.end method

.method public getComponent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->component:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->position:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setB_img_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->b_img_path:Ljava/lang/String;

    return-void
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->component:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->position:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ScreenPartSettings{ position="

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->title:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", type="

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->url:Ljava/lang/String;

    const-string v3, ", component=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->component:Ljava/lang/String;

    const-string v3, ", package_name=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->package_name:Ljava/lang/String;

    const-string v3, ", b_img_path=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->b_img_path:Ljava/lang/String;

    const-string v3, ", description=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/ScreenPartSettings;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
