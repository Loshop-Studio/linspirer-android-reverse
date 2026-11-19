.class public Lcom/android/launcher3/model/WorkTimeTactics;
.super Ljava/lang/Object;
.source "WorkTimeTactics.java"


# instance fields
.field public worktime:Lcom/android/launcher3/db/model/WeekTactics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWorktime()Lcom/android/launcher3/db/model/WeekTactics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/WorkTimeTactics;->worktime:Lcom/android/launcher3/db/model/WeekTactics;

    return-object v0
.end method

.method public setWorktime(Lcom/android/launcher3/db/model/WeekTactics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/WorkTimeTactics;->worktime:Lcom/android/launcher3/db/model/WeekTactics;

    return-void
.end method
