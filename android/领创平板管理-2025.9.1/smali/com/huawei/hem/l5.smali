.class public Lcom/huawei/hem/l5;
.super Ljava/lang/Object;
.source "UsageAppData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mBeginTimeStamp:J

.field public mEndTimeStamp:J

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/l5;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getmBeginTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hem/l5;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getmEndTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hem/l5;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getmPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/l5;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setmAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/l5;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setmBeginTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/huawei/hem/l5;->mBeginTimeStamp:J

    return-void
.end method

.method public setmEndTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/huawei/hem/l5;->mEndTimeStamp:J

    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/l5;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "UsageAppData{mPackageName=\'"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/l5;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mBeginTimeStamp="

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v3, p0, Lcom/huawei/hem/l5;->mBeginTimeStamp:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/huawei/hem/l5;->mEndTimeStamp:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAppName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/l5;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
