.class public Lcom/android/launcher3/db/model/IllegalEvent;
.super Ljava/lang/Object;
.source "IllegalEvent.java"


# instance fields
.field public clienttime:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public event:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public lock:I

.field public notify:I

.field public reset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->id:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/launcher3/db/model/IllegalEvent;->event:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/db/model/IllegalEvent;->email:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/android/launcher3/db/model/IllegalEvent;->notify:I

    .line 6
    iput p5, p0, Lcom/android/launcher3/db/model/IllegalEvent;->lock:I

    .line 7
    iput p6, p0, Lcom/android/launcher3/db/model/IllegalEvent;->reset:I

    .line 8
    iput-object p7, p0, Lcom/android/launcher3/db/model/IllegalEvent;->description:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/android/launcher3/db/model/IllegalEvent;->clienttime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClienttime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/IllegalEvent;->clienttime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/IllegalEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/IllegalEvent;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/IllegalEvent;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/IllegalEvent;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLock()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/IllegalEvent;->lock:I

    return v0
.end method

.method public getNotify()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/IllegalEvent;->notify:I

    return v0
.end method

.method public getReset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/db/model/IllegalEvent;->reset:I

    return v0
.end method

.method public setClienttime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->clienttime:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->description:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->email:Ljava/lang/String;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->event:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLock(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->lock:I

    return-void
.end method

.method public setNotify(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->notify:I

    return-void
.end method

.method public setReset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/db/model/IllegalEvent;->reset:I

    return-void
.end method
