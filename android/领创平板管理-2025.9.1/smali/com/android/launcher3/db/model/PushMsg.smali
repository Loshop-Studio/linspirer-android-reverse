.class public Lcom/android/launcher3/db/model/PushMsg;
.super Ljava/lang/Object;
.source "PushMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x4d5a3b6cab037c01L


# instance fields
.field public active:Ljava/lang/String;

.field public command:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public sendtime:J

.field public type:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/db/model/PushMsg;->id:Ljava/lang/Long;

    .line 3
    iput p2, p0, Lcom/android/launcher3/db/model/PushMsg;->type:I

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/db/model/PushMsg;->command:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/launcher3/db/model/PushMsg;->active:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, Lcom/android/launcher3/db/model/PushMsg;->sendtime:J

    .line 7
    iput-object p7, p0, Lcom/android/launcher3/db/model/PushMsg;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActive()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/PushMsg;->active:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/PushMsg;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/PushMsg;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getSendtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/launcher3/db/model/PushMsg;->sendtime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/PushMsg;->type:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/PushMsg;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/PushMsg;->active:Ljava/lang/String;

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/PushMsg;->command:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/PushMsg;->id:Ljava/lang/Long;

    return-void
.end method

.method public setSendtime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/launcher3/db/model/PushMsg;->sendtime:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/PushMsg;->type:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/PushMsg;->userId:Ljava/lang/String;

    return-void
.end method
