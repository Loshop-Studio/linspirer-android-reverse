.class public Lcom/android/launcher3/db/model/Illegal;
.super Ljava/lang/Object;
.source "Illegal.java"


# instance fields
.field public eliminate_data:Z

.field public enable:Z

.field public id:Ljava/lang/Long;

.field public lock_workspace:Z

.field public name:Ljava/lang/String;

.field public notify_admin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/db/model/Illegal;->id:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/launcher3/db/model/Illegal;->name:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/android/launcher3/db/model/Illegal;->enable:Z

    .line 5
    iput-boolean p4, p0, Lcom/android/launcher3/db/model/Illegal;->notify_admin:Z

    .line 6
    iput-boolean p5, p0, Lcom/android/launcher3/db/model/Illegal;->eliminate_data:Z

    .line 7
    iput-boolean p6, p0, Lcom/android/launcher3/db/model/Illegal;->lock_workspace:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/android/launcher3/db/model/Illegal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/android/launcher3/db/model/Illegal;

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/db/model/Illegal;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/db/model/Illegal;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEliminate_data()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/Illegal;->eliminate_data:Z

    return v0
.end method

.method public getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/Illegal;->enable:Z

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/Illegal;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLock_workspace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/Illegal;->lock_workspace:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/Illegal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotify_admin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/Illegal;->notify_admin:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/android/launcher3/db/model/Illegal;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/db/model/Illegal;->enable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/db/model/Illegal;->notify_admin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/db/model/Illegal;->eliminate_data:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/db/model/Illegal;->lock_workspace:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEliminate_data()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/Illegal;->eliminate_data:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/Illegal;->enable:Z

    return v0
.end method

.method public isLock_workspace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/Illegal;->lock_workspace:Z

    return v0
.end method

.method public isNotify_admin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/db/model/Illegal;->notify_admin:Z

    return v0
.end method

.method public setEliminate_data(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/Illegal;->eliminate_data:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/Illegal;->enable:Z

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/Illegal;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLock_workspace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/Illegal;->lock_workspace:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/Illegal;->name:Ljava/lang/String;

    return-void
.end method

.method public setNotify_admin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/db/model/Illegal;->notify_admin:Z

    return-void
.end method
