.class public Lcom/android/launcher3/model/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field public email:Ljava/lang/String;

.field public groupInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public id:J

.field public name:Ljava/lang/String;

.field public schoolinfo:Lcom/android/launcher3/model/SchoolInfo;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/UserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/UserInfo;->groupInfo:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/launcher3/model/UserInfo;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSchoolinfo()Lcom/android/launcher3/model/SchoolInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/UserInfo;->schoolinfo:Lcom/android/launcher3/model/SchoolInfo;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/UserInfo;->status:I

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/UserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setGroupInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GroupInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/UserInfo;->groupInfo:Ljava/util/List;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/launcher3/model/UserInfo;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/UserInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setSchoolinfo(Lcom/android/launcher3/model/SchoolInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/UserInfo;->schoolinfo:Lcom/android/launcher3/model/SchoolInfo;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/UserInfo;->status:I

    return-void
.end method
