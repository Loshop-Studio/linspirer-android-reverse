.class public Landroid/os/EduManager;
.super Ljava/lang/Object;
.source "EduManager.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Landroid/os/IEduManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IEduManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/os/EduManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    return-void
.end method


# virtual methods
.method public AccessibilityServiceEnable(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IEduManager;->AccessibilityServiceEnable(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AirPlaneOptionIsVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AirPlaneOptionIsVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AirPlaneOptionVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AirPlaneOptionVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAccessEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppAccessEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAccessMobile(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->AppAccessMobile(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAccessWlan(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->AppAccessWlan(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAliveListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppAliveListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAliveListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppAliveListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppAliveListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppAliveListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAliveListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppAliveListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAliveListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppAliveListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppAliveListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppAliveListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppAliveListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppAliveListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAliveListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppAliveListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppAllRunningGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppAllRunningGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppCacheClear(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppCacheClear(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppCapScreenPermissionListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppCapScreenPermissionListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppCapScreenPermissionListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppCapScreenPermissionListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppCapScreenPermissionListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppCapScreenPermissionListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppCapScreenPermissionListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppCapScreenPermissionListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppCapScreenPermissionListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppCapScreenPermissionListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppCapScreenPermissionListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppCapScreenPermissionListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppCapScreenPermissionListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppCapScreenPermissionListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppCapScreenPermissionListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppCapScreenPermissionListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppDataClear(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppDataClear(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppDetailOptionIsVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppDetailOptionIsVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppDetailOptionVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppDetailOptionVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppDisableSet(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppDisableSet(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppEnableSet(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppEnableSet(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppForceStart(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppForceStart(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppForceStop(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppForceStop(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppFreezeListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppFreezeListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppFreezeListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppFreezeListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppFreezeListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppFreezeListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppFreezeListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppFreezeListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppFreezeListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppFreezeListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppFreezeListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppFreezeListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppFreezeListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppFreezeListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppFreezeListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppFreezeListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppGrantAllPermission(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->AppGrantAllPermission(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppGrantUsageStatePermission(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->AppGrantUsageStatePermission(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallBlackListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallBlackListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallBlackListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppInstallBlackListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppInstallBlackListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallBlackListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallBlackListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallBlackListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallBlackListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppInstallBlackListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppInstallBlackListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppInstallBlackListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public AppInstallBlackListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallBlackListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallBlackListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallBlackListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppInstallWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppInstallWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppInstallWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppInstallWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppInstallWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppInstallWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppInstallWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppInstallWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppManualInstallEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppManualInstallEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppManualInstallIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppManualInstallIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppNetworkBlackListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkBlackListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkBlackListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNetworkBlackListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppNetworkBlackListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkBlackListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkBlackListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkBlackListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkBlackListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNetworkBlackListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppNetworkBlackListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNetworkBlackListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppNetworkBlackListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkBlackListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkBlackListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkBlackListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNetworkWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppNetworkWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNetworkWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppNetworkWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNetworkWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppNetworkWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNetworkWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNetworkWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNotifyWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNotifyWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNotifyWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNotifyWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppNotifyWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNotifyWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNotifyWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNotifyWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNotifyWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNotifyWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppNotifyWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppNotifyWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppNotifyWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNotifyWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppNotifyWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppNotifyWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppSilentInstall(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->AppSilentInstall(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppSilentInstallPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IEduManager;->AppSilentInstallPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppSilentUninstall(Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->AppSilentUninstall(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppTopRunningGet()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppTopRunningGet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppTrustedListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppTrustedListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppTrustedListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppTrustedListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppTrustedListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppTrustedListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppTrustedListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppTrustedListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppTrustedListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppTrustedListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppTrustedListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppTrustedListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppTrustedListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppTrustedListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppTrustedListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppTrustedListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnBlockNetworkWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnBlockNetworkWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnBlockNetworkWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUnBlockNetworkWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppUnBlockNetworkWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnBlockNetworkWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnBlockNetworkWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnBlockNetworkWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnBlockNetworkWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUnBlockNetworkWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppUnBlockNetworkWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUnBlockNetworkWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppUnBlockNetworkWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnBlockNetworkWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnBlockNetworkWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnBlockNetworkWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnFreezeListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnFreezeListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnFreezeListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUnFreezeListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppUnFreezeListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnFreezeListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnFreezeListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnFreezeListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnFreezeListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUnFreezeListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppUnFreezeListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUnFreezeListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppUnFreezeListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnFreezeListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUnFreezeListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUnFreezeListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallBlackListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallBlackListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallBlackListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUninstallBlackListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppUninstallBlackListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallBlackListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallBlackListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallBlackListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallBlackListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUninstallBlackListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppUninstallBlackListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallBlackListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallBlackListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallBlackListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUninstallWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public AppUninstallWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUninstallWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AppUninstallWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AppUninstallWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public AppUninstallWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AppUninstallWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AppUninstallWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public ApppUninstallBlackListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->ApppUninstallBlackListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public AutoBrightnessEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->AutoBrightnessEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public AutoBrightnessIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->AutoBrightnessIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public BackKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BackKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BackKeyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BackKeyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothBlackListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothBlackListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothBlackListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothBlackListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public BluetoothBlackListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothBlackListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothBlackListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothBlackListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothBlackListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothBlackListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public BluetoothBlackListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothBlackListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothBlackListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothBlackListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothBlackListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothBlackListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothFirewallEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothFirewallEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothFirewallIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothFirewallIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothFirewallTypeGet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothFirewallTypeGet()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public BluetoothFirewallTypeSet(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothFirewallTypeSet(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothOpen(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothOpen(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothTransEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothTransEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothTransIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothTransIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public BluetoothWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public BluetoothWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BluetoothWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public BluetoothWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BluetoothWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BluetoothWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BrowserWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BrowserWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public BrowserWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BrowserWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BrowserWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BrowserWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BrowserWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BrowserWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public BrowserWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->BrowserWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public BrowserWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BrowserWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BrowserWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BrowserWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public BrowserWhiteListadd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->BrowserWhiteListadd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public CameraEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->CameraEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public CameraIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->CameraIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public CameraPhotoShutterSoundEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->CameraPhotoShutterSoundEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public CameraPhotoShutterSoundIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->CameraPhotoShutterSoundIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public CameraVideoShutterSoundEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->CameraVideoShutterSoundEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public CameraVideoShutterSoundIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->CameraVideoShutterSoundIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefAirPlaneEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefAirPlaneEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefAirPlaneIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefAirPlaneIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefApnEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefApnEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefApnIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefApnIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefAutoTimeEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefAutoTimeEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefBatterySaverEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefBatterySaverEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefBatterySaverIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefBatterySaverIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefBrowserClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefBrowserClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public DefBrowserSet(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefBrowserSet(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefClipboardEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefClipboardEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefClipboardIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefClipboardIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefDeviceAdminActive(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->DefDeviceAdminActive(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefDeviceOwner(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->DefDeviceOwner(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefFactoryResetEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefFactoryResetEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefFactoryResetIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefFactoryResetIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefFileShareEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefFileShareEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefFileShareIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefFileShareIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefGpsLocationEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefGpsLocationEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefGpsLocationIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefGpsLocationIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefHomeLauncherClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefHomeLauncherClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public DefHomeLauncherSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->DefHomeLauncherSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefInputMethodClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefInputMethodClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public DefInputMethodSet(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefInputMethodSet(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefInstallUnknownApkEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefInstallUnknownApkEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefInstallUnknownApkIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefInstallUnknownApkIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefLockScreenEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefLockScreenEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefLockScreenIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefLockScreenIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefLockScreenNotifyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefLockScreenNotifyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefLockScreenNotifyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefLockScreenNotifyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefMultiUserEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefMultiUserEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefMultiUserIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefMultiUserIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefNoColorReadEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefNoColorReadEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefNoColorReadIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefNoColorReadIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefNotifySendEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefNotifySendEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefNotifySendIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefNotifySendIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefOtaUpdateEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefOtaUpdateEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefOtaUpdateIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefOtaUpdateIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefPowerOffEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefPowerOffEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefPowerOffIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefPowerOffIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefPowerSleepEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefPowerSleepEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefPowerSleepIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefPowerSleepIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefSafeModeEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefSafeModeEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefSafeModeIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefSafeModeIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefScreenColorAdjustEnable(ZI)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->DefScreenColorAdjustEnable(ZI)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefScreenColorAdjustIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefScreenColorAdjustIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefScreenShotEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefScreenShotEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefScreenShotIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefScreenShotIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefShutdownRebootEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefShutdownRebootEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefShutdownRebootIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefShutdownRebootIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefSystemSettingEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefSystemSettingEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefSystemSettingIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefSystemSettingIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefSystemUpdateEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefSystemUpdateEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefTimeSetEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefTimeSetEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefUnknowSourceDetailEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefUnknowSourceDetailEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefUnknowSourceDetailIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefUnknowSourceDetailIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DefVideoPlayerClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefVideoPlayerClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public DefVideoPlayerSet(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefVideoPlayerSet(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefVolumeAdjustEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DefVolumeAdjustEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DefVolumeAdjustIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DefVolumeAdjustIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DevelopmentOptionIsVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DevelopmentOptionIsVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public DevelopmentOptionVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DevelopmentOptionVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DistanceProtectionEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->DistanceProtectionEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public DistanceProtectionIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->DistanceProtectionIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public EduVersion()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->EduVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public ExternalStorageEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->ExternalStorageEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public ExternalStorageIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->ExternalStorageIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public EyeComfortEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->EyeComfortEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public EyeComfortIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->EyeComfortIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public FatigueAlertEnable(ZI)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->FatigueAlertEnable(ZI)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public FatigueAlertIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->FatigueAlertIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public FirmwareVersionGet()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->FirmwareVersionGet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public GlobalNetworkBlackListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkBlackListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkBlackListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->GlobalNetworkBlackListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public GlobalNetworkBlackListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkBlackListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkBlackListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkBlackListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkBlackListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->GlobalNetworkBlackListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public GlobalNetworkBlackListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->GlobalNetworkBlackListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public GlobalNetworkBlackListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkBlackListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkBlackListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkBlackListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->GlobalNetworkWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public GlobalNetworkWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->GlobalNetworkWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public GlobalNetworkWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->GlobalNetworkWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public GlobalNetworkWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GlobalNetworkWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GlobalNetworkWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public GpsLocationIsOn()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->GpsLocationIsOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public GpsLocationOn(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->GpsLocationOn(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public HeadsetEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->HeadsetEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public HeadsetIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->HeadsetIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public HomeKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->HomeKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public HomeKeyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->HomeKeyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public MMSReceiveEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->MMSReceiveEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public MMSReceiveIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->MMSReceiveIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public MMSSendEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->MMSSendEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public MMSSendIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->MMSSendIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public MenuKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->MenuKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public MenuKeyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->MenuKeyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public MicphoneEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->MicphoneEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public MicphoneIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->MicphoneIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public MobileDataConnectivityEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->MobileDataConnectivityEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public MobileDataConnectivityIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->MobileDataConnectivityIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public MobileDataIsOn()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->MobileDataIsOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public MobileDataOn(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->MobileDataOn(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavBackButtonEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavBackButtonEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavBackButtonIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NavBackButtonIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public NavBackButtonVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavBackButtonVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavBarHide()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NavBarHide()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public NavBarIsShow()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NavBarIsShow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public NavBarShow()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NavBarShow()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public NavHomeButtonEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavHomeButtonEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavHomeButtonIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NavHomeButtonIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public NavHomeButtonVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavHomeButtonVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavMenuButtonVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavMenuButtonVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavRecentButtonEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavRecentButtonEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavRecentButtonIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NavRecentButtonIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public NavRecentButtonVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavRecentButtonVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavScreenshotButtonVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavScreenshotButtonVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavVolumeDownButtonVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavVolumeDownButtonVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NavVolumeUpButtonVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NavVolumeUpButtonVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NetworkAccessEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NetworkAccessEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NetworkFirewallEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NetworkFirewallEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NetworkFirewallIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NetworkFirewallIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public NetworkFirewallTypeGet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NetworkFirewallTypeGet()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public NetworkFirewallTypeSet(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NetworkFirewallTypeSet(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NetworkFirewallWorkTypeGet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NetworkFirewallWorkTypeGet()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public NetworkFirewallWorkTypeSet(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NetworkFirewallWorkTypeSet(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public NetworkResetOptionIsVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->NetworkResetOptionIsVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public NetworkResetOptionVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->NetworkResetOptionVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallBlackListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallBlackListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallBlackListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneCallBlackListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public PhoneCallBlackListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallBlackListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallBlackListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallBlackListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallBlackListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneCallBlackListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public PhoneCallBlackListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneCallBlackListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public PhoneCallBlackListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallBlackListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneCallIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public PhoneCallWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneCallWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public PhoneCallWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneCallWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneCallWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public PhoneCallWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneCallWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public PhoneCallWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneCallWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneNumerGet(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneNumerGet(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public PhoneVoiceInEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneVoiceInEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneVoiceInIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneVoiceInIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public PhoneVoiceOutEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PhoneVoiceOutEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PhoneVoiceOutIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PhoneVoiceOutIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public PlatformNameGet()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PlatformNameGet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public PowerKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PowerKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PowerKeyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PowerKeyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public PowerKeyLongPressEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PowerKeyLongPressEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PowerKeyLongPressIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PowerKeyLongPressIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public PowerKeyShortPressEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->PowerKeyShortPressEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public PowerKeyShortPressIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->PowerKeyShortPressIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public ProjectNameGet()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->ProjectNameGet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public RecentKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->RecentKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public RecentKeyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->RecentKeyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public RecentTaskAllClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->RecentTaskAllClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public ReverseAlertEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->ReverseAlertEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public ReverseAlertIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->ReverseAlertIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SMSEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SMSEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SMSIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SMSIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SdcardStorageEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SdcardStorageEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SdcardStorageIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SdcardStorageIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SettingAllOptionIsVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SettingAllOptionIsVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SettingAllOptionVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SettingAllOptionVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SettingOptionIsVisible(I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SettingOptionIsVisible(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public SettingOptionVisible(IZ)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->SettingOptionVisible(IZ)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SettingSearchOptionIsVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SettingSearchOptionIsVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SettingSearchOptionVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SettingSearchOptionVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public ShakeAlertEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->ShakeAlertEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public ShakeAlertIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->ShakeAlertIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SimEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SimEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SimImeiGet(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SimImeiGet(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public SimImeiNumGet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SimImeiNumGet()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SimIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SimIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SimSlotNumGet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SimSlotNumGet()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public StatusBarDropEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->StatusBarDropEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public StatusBarDropIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->StatusBarDropIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public StatusBarExpandPanelEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->StatusBarExpandPanelEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public StatusBarExpandPanelIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->StatusBarExpandPanelIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public StatusBarHide()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->StatusBarHide()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public StatusBarNotifyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->StatusBarNotifyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public StatusBarNotifyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->StatusBarNotifyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public StatusBarShow()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->StatusBarShow()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public StatusbarIsShow()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->StatusbarIsShow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SysBacklightEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysBacklightEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysBacklightIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysBacklightIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SysBacklightValAdjust(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysBacklightValAdjust(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysBootanimationClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysBootanimationClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysBootanimationSet(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysBootanimationSet(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysDateSet(III)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IEduManager;->SysDateSet(III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysDateTimeSet(IIIIII)I
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IEduManager;->SysDateTimeSet(IIIIII)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysDisplayDensityGet(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysDisplayDensityGet(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysDisplaySizeGet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysDisplaySizeGet()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysDisplaySizeSet(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysDisplaySizeSet(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysFaceRecognition()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysFaceRecognition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysFactoryRest()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysFactoryRest()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysFontSizeGet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysFontSizeGet()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysFontSizeSet(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysFontSizeSet(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysFontSizeValueSet(F)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysFontSizeValueSet(F)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysGoSleep()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysGoSleep()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysIsRoot()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysIsRoot()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SysLockPassword(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysLockPassword(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysMemoryClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysMemoryClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysPowerSaveMode(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysPowerSaveMode(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysReboot()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysReboot()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysRoot(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysRoot(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysScheduledPowerOff(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysScheduledPowerOff(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysScheduledPowerOn(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysScheduledPowerOn(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysScheduledTimePowerOff(ZIIZZZZZZZ)I
    .locals 13

    move-object v1, p0

    .line 1
    :try_start_0
    iget-object v2, v1, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v2 .. v12}, Landroid/os/IEduManager;->SysScheduledTimePowerOff(ZIIZZZZZZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysScheduledTimePowerOn(ZIIZZZZZZZ)I
    .locals 13

    move-object v1, p0

    .line 1
    :try_start_0
    iget-object v2, v1, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v2 .. v12}, Landroid/os/IEduManager;->SysScheduledTimePowerOn(ZIIZZZZZZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysScreenLock()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysScreenLock()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysScreenLockClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysScreenLockClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysScreenLockType(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysScreenLockType(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysScreenOff()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysScreenOff()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysScreenOn()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysScreenOn()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysScreenRecordStart(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysScreenRecordStart(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysScreenRecordStop()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysScreenRecordStop()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public SysScreenUnLock()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysScreenUnLock()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysScreenshot(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysScreenshot(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysScreenshotBmp()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysScreenshotBmp()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public SysScreenshotPath()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysScreenshotPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public SysSerialnoGet()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysSerialnoGet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public SysShutdown()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysShutdown()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysTimeSet(III)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IEduManager;->SysTimeSet(III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysTimeStampSet(J)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->SysTimeStampSet(J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysVolumeMuteEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysVolumeMuteEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public SysVolumeMuteIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysVolumeMuteIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public SysWakeUp()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->SysWakeUp()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public SysZenModeOn(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->SysZenModeOn(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public TouchScreenEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->TouchScreenEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public TouchScreenIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->TouchScreenIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public UsbDebugEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->UsbDebugEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public UsbDebugIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->UsbDebugIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public UsbMtpEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->UsbMtpEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public UsbMtpIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->UsbMtpIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public UsbOtgEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->UsbOtgEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public UsbOtgIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->UsbOtgIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public UsbStorageEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->UsbStorageEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public UsbStorageIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->UsbStorageIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public VolumeDownKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->VolumeDownKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public VolumeDownKeyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->VolumeDownKeyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public VolumeKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->VolumeKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public VolumeKeyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->VolumeKeyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public VolumeUpKeyEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->VolumeUpKeyEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public VolumeUpKeyIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->VolumeUpKeyIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public VpnOptionIsVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->VpnOptionIsVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public VpnOptionVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->VpnOptionVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiAdvanceOptionIsVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiAdvanceOptionIsVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public WifiAdvanceOptionVisible(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiAdvanceOptionVisible(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiBlackListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiBlackListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiBlackListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiBlackListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public WifiBlackListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiBlackListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiBlackListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiBlackListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiBlackListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiBlackListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public WifiBlackListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiBlackListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public WifiBlackListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiBlackListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiBlackListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiBlackListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiConfigurationClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiConfigurationClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public WifiConfigurationDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiConfigurationDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiConnectSSID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IEduManager;->WifiConnectSSID(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiDirectEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiDirectEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiDirectIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiDirectIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public WifiEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiFirewallEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiFirewallEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiFirewallIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiFirewallIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public WifiFirewallTypeGet()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiFirewallTypeGet()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public WifiFirewallTypeSet(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiFirewallTypeSet(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public WifiMacGet()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiMacGet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public WifiOpen(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiOpen(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiWhiteListAdd(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiWhiteListAdd(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiWhiteListClear()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiWhiteListClear()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public WifiWhiteListDel(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiWhiteListDel(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiWhiteListEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiWhiteListEnable(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiWhiteListGet()Ljava/util/List;
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
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiWhiteListGet()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public WifiWhiteListIsEnable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0}, Landroid/os/IEduManager;->WifiWhiteListIsEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public WifiWhiteListRemove(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiWhiteListRemove(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public WifiWhiteListSet(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/EduManager;->mService:Landroid/os/IEduManager;

    invoke-interface {v0, p1}, Landroid/os/IEduManager;->WifiWhiteListSet(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method
