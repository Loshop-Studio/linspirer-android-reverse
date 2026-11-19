.class public Lcom/android/launcher3/model/SchoolInfo;
.super Ljava/lang/Object;
.source "SchoolInfo.java"


# instance fields
.field public name:Ljava/lang/String;

.field public school_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/SchoolInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSchool_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/SchoolInfo;->school_id:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/SchoolInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setSchool_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/SchoolInfo;->school_id:Ljava/lang/String;

    return-void
.end method
