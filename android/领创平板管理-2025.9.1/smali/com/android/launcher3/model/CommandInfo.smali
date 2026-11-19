.class public Lcom/android/launcher3/model/CommandInfo;
.super Ljava/lang/Object;
.source "CommandInfo.java"


# instance fields
.field public active:I

.field public command:Ljava/lang/String;

.field public sendtime:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/CommandInfo;->active:I

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/CommandInfo;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getSendtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/launcher3/model/CommandInfo;->sendtime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/CommandInfo;->type:I

    return v0
.end method

.method public setActive(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/CommandInfo;->active:I

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/CommandInfo;->command:Ljava/lang/String;

    return-void
.end method

.method public setSendtime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/launcher3/model/CommandInfo;->sendtime:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/CommandInfo;->type:I

    return-void
.end method
