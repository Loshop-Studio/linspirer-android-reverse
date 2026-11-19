.class public Lcom/android/launcher3/db/model/UserEvent;
.super Ljava/lang/Object;
.source "UserEvent.java"


# instance fields
.field public description:Ljava/lang/String;

.field public eventName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "event_name"
    .end annotation
.end field

.field public eventResult:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "event_result"
    .end annotation
.end field

.field public eventTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "event_time"
    .end annotation
.end field

.field public id:Ljava/lang/Long;

.field public isIllegal:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "event_is_illegal"
    .end annotation
.end field

.field public userName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/db/model/UserEvent;->id:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/launcher3/db/model/UserEvent;->eventName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/db/model/UserEvent;->eventTime:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/launcher3/db/model/UserEvent;->eventResult:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/android/launcher3/db/model/UserEvent;->isIllegal:I

    .line 7
    iput-object p6, p0, Lcom/android/launcher3/db/model/UserEvent;->userName:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/android/launcher3/db/model/UserEvent;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/UserEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/UserEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/UserEvent;->eventResult:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/UserEvent;->eventTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/UserEvent;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsIllegal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/UserEvent;->isIllegal:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/UserEvent;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/UserEvent;->description:Ljava/lang/String;

    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/UserEvent;->eventName:Ljava/lang/String;

    return-void
.end method

.method public setEventResult(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/UserEvent;->eventResult:Ljava/lang/String;

    return-void
.end method

.method public setEventTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/UserEvent;->eventTime:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/UserEvent;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsIllegal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/UserEvent;->isIllegal:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/UserEvent;->userName:Ljava/lang/String;

    return-void
.end method
