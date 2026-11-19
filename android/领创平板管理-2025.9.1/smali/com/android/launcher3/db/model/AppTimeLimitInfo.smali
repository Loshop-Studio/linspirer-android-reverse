.class public Lcom/android/launcher3/db/model/AppTimeLimitInfo;
.super Ljava/lang/Object;
.source "AppTimeLimitInfo.java"


# instance fields
.field public friday:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public monday:Ljava/lang/String;

.field public packageNames:Ljava/lang/String;

.field public pkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public saturday:Ljava/lang/String;

.field public sunday:Ljava/lang/String;

.field public thursday:Ljava/lang/String;

.field public tuesday:Ljava/lang/String;

.field public wednesday:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->id:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->friday:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->monday:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->sunday:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->tuesday:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->saturday:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->thursday:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->wednesday:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->packageNames:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFriday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->friday:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMonday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->monday:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNames()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->packageNames:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->pkgs:Ljava/util/List;

    return-object v0
.end method

.method public getSaturday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->saturday:Ljava/lang/String;

    return-object v0
.end method

.method public getSunday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->sunday:Ljava/lang/String;

    return-object v0
.end method

.method public getThursday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->thursday:Ljava/lang/String;

    return-object v0
.end method

.method public getTuesday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->tuesday:Ljava/lang/String;

    return-object v0
.end method

.method public getWednesday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->wednesday:Ljava/lang/String;

    return-object v0
.end method

.method public setFriday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->friday:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMonday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->monday:Ljava/lang/String;

    return-void
.end method

.method public setPackageNames(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->packageNames:Ljava/lang/String;

    return-void
.end method

.method public setPkgs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->pkgs:Ljava/util/List;

    return-void
.end method

.method public setSaturday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->saturday:Ljava/lang/String;

    return-void
.end method

.method public setSunday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->sunday:Ljava/lang/String;

    return-void
.end method

.method public setThursday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->thursday:Ljava/lang/String;

    return-void
.end method

.method public setTuesday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->tuesday:Ljava/lang/String;

    return-void
.end method

.method public setWednesday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->wednesday:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AppTimeLimitInfo{friday=\'"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->friday:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", monday=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->monday:Ljava/lang/String;

    const-string v3, ", sunday=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->sunday:Ljava/lang/String;

    const-string v3, ", tuesday=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->tuesday:Ljava/lang/String;

    const-string v3, ", saturday=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->saturday:Ljava/lang/String;

    const-string v3, ", thursday=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->thursday:Ljava/lang/String;

    const-string v3, ", wednesday=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->wednesday:Ljava/lang/String;

    const-string v3, ", packageNames=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->packageNames:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
