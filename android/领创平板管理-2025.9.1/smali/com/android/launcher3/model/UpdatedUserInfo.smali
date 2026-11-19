.class public Lcom/android/launcher3/model/UpdatedUserInfo;
.super Ljava/lang/Object;
.source "UpdatedUserInfo.java"


# instance fields
.field public class_name:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public id:I

.field public interestclassinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public release_control:I

.field public school_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClass_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->id:I

    return v0
.end method

.method public getInterestclassinfo()Ljava/util/List;
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
    iget-object v0, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->interestclassinfo:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_control()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->release_control:I

    return v0
.end method

.method public getSchool_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->school_name:Ljava/lang/String;

    return-object v0
.end method

.method public setClass_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->class_name:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->id:I

    return-void
.end method

.method public setInterestclassinfo(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->interestclassinfo:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setRelease_control(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->release_control:I

    return-void
.end method

.method public setSchool_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/UpdatedUserInfo;->school_name:Ljava/lang/String;

    return-void
.end method
