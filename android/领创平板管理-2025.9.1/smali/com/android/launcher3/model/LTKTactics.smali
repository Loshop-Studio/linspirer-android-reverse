.class public Lcom/android/launcher3/model/LTKTactics;
.super Ljava/lang/Object;
.source "LTKTactics.java"


# instance fields
.field public app_status:Z

.field public app_tactics:Lcom/android/launcher3/model/TacticApp;

.field public device_setting:Lcom/android/launcher3/model/DeviceSetting;

.field public device_status:Z

.field public device_tactics:Lcom/android/launcher3/model/TacticDevice;

.field public id:I

.field public illegal_status:Z

.field public illegal_tactics:Lcom/android/launcher3/model/TacticsIllegal;

.field public interest_applist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public release_control:I

.field public totalApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;"
        }
    .end annotation
.end field

.field public wifi_status:Z

.field public wifi_tactics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public workspace_status:Z

.field public workspace_tactics:Lcom/android/launcher3/model/WorkTimeTactics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_tactics()Lcom/android/launcher3/model/TacticApp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->app_tactics:Lcom/android/launcher3/model/TacticApp;

    return-object v0
.end method

.method public getDevice_setting()Lcom/android/launcher3/model/DeviceSetting;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->device_setting:Lcom/android/launcher3/model/DeviceSetting;

    return-object v0
.end method

.method public getDevice_tactics()Lcom/android/launcher3/model/TacticDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->device_tactics:Lcom/android/launcher3/model/TacticDevice;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/LTKTactics;->id:I

    return v0
.end method

.method public getIllegal_tactics()Lcom/android/launcher3/model/TacticsIllegal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->illegal_tactics:Lcom/android/launcher3/model/TacticsIllegal;

    return-object v0
.end method

.method public getInterest_applist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->interest_applist:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_control()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/LTKTactics;->release_control:I

    return v0
.end method

.method public getTotalApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->totalApps:Ljava/util/List;

    return-object v0
.end method

.method public getWifi_tactics()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->wifi_tactics:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWorkspace_tactics()Lcom/android/launcher3/model/WorkTimeTactics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LTKTactics;->workspace_tactics:Lcom/android/launcher3/model/WorkTimeTactics;

    return-object v0
.end method

.method public isApp_status()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LTKTactics;->app_status:Z

    return v0
.end method

.method public isDevice_status()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LTKTactics;->device_status:Z

    return v0
.end method

.method public isIllegal_status()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LTKTactics;->illegal_status:Z

    return v0
.end method

.method public isWifi_status()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LTKTactics;->wifi_status:Z

    return v0
.end method

.method public isWorkspace_status()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LTKTactics;->workspace_status:Z

    return v0
.end method

.method public setApp_status(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/model/LTKTactics;->app_status:Z

    return-void
.end method

.method public setApp_tactics(Lcom/android/launcher3/model/TacticApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->app_tactics:Lcom/android/launcher3/model/TacticApp;

    return-void
.end method

.method public setDevice_setting(Lcom/android/launcher3/model/DeviceSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->device_setting:Lcom/android/launcher3/model/DeviceSetting;

    return-void
.end method

.method public setDevice_status(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/model/LTKTactics;->device_status:Z

    return-void
.end method

.method public setDevice_tactics(Lcom/android/launcher3/model/TacticDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->device_tactics:Lcom/android/launcher3/model/TacticDevice;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/LTKTactics;->id:I

    return-void
.end method

.method public setIllegal_status(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/model/LTKTactics;->illegal_status:Z

    return-void
.end method

.method public setIllegal_tactics(Lcom/android/launcher3/model/TacticsIllegal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->illegal_tactics:Lcom/android/launcher3/model/TacticsIllegal;

    return-void
.end method

.method public setInterest_applist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->interest_applist:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->name:Ljava/lang/String;

    return-void
.end method

.method public setRelease_control(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/LTKTactics;->release_control:I

    return-void
.end method

.method public setTotalApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->totalApps:Ljava/util/List;

    return-void
.end method

.method public setWifi_status(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/model/LTKTactics;->wifi_status:Z

    return-void
.end method

.method public setWifi_tactics(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->wifi_tactics:Ljava/util/ArrayList;

    return-void
.end method

.method public setWorkspace_status(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/model/LTKTactics;->workspace_status:Z

    return-void
.end method

.method public setWorkspace_tactics(Lcom/android/launcher3/model/WorkTimeTactics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LTKTactics;->workspace_tactics:Lcom/android/launcher3/model/WorkTimeTactics;

    return-void
.end method
