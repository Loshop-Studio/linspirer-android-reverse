.class public Lcom/android/launcher3/model/AppTimeLimit;
.super Ljava/lang/Object;
.source "AppTimeLimit.java"


# instance fields
.field public app_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppInfoLimit;",
            ">;"
        }
    .end annotation
.end field

.field public callsms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public time_limit:Lcom/android/launcher3/db/model/WeekTactics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppInfoLimit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/AppTimeLimit;->app_list:Ljava/util/List;

    return-object v0
.end method

.method public getCallsms()Ljava/util/List;
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
    iget-object v0, p0, Lcom/android/launcher3/model/AppTimeLimit;->callsms:Ljava/util/List;

    return-object v0
.end method

.method public getTime_limit()Lcom/android/launcher3/db/model/WeekTactics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/AppTimeLimit;->time_limit:Lcom/android/launcher3/db/model/WeekTactics;

    return-object v0
.end method

.method public setApp_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppInfoLimit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppTimeLimit;->app_list:Ljava/util/List;

    return-void
.end method

.method public setCallsms(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/android/launcher3/model/AppTimeLimit;->callsms:Ljava/util/List;

    return-void
.end method

.method public setTime_limit(Lcom/android/launcher3/db/model/WeekTactics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppTimeLimit;->time_limit:Lcom/android/launcher3/db/model/WeekTactics;

    return-void
.end method
