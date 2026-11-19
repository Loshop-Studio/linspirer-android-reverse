.class public Landroid/os/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Landroid/os/IApiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IApiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/os/ApiManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    return-void
.end method


# virtual methods
.method public AccessibilityServiceEnable(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IApiManager;->AccessibilityServiceEnable(Ljava/lang/String;Ljava/lang/String;Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AirPlaneOptionIsVisible()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AirPlaneOptionVisible(Z)I

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

.method public ApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->ApiVersion()Ljava/lang/String;

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

.method public AppAccessEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppAccessEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->AppAccessMobile(Ljava/lang/String;Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->AppAccessWlan(Ljava/lang/String;Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppAliveListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppAliveListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppAliveListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppAliveListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppAliveListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppAliveListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppAliveListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppAliveListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppAllRunningGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppCacheClear(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppCapScreenPermissionListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppCapScreenPermissionListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppCapScreenPermissionListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppDataClear(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppDetailOptionIsVisible()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppDetailOptionVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppDisableSet(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppEnableSet(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppForceStart(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppForceStop(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppFreezeListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppFreezeListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppFreezeListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppFreezeListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppFreezeListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppFreezeListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppFreezeListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppFreezeListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->AppGrantAllPermission(Ljava/lang/String;Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->AppGrantUsageStatePermission(Ljava/lang/String;Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallBlackListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppInstallBlackListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallBlackListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallBlackListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppInstallBlackListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppInstallBlackListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallBlackListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallBlackListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppInstallWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppInstallWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppInstallWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppManualInstallEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppManualInstallIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNetworkBlackListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNetworkBlackListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNetworkBlackListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNetworkWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNetworkWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNetworkWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNotifyWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNotifyWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppNotifyWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->AppSilentInstall(Ljava/lang/String;Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IApiManager;->AppSilentInstallPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->AppSilentUninstall(Ljava/lang/String;Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppTopRunningGet()Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppTrustedListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppTrustedListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppTrustedListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppTrustedListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppTrustedListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppTrustedListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppTrustedListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppTrustedListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnFreezeListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUnFreezeListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnFreezeListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnFreezeListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUnFreezeListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUnFreezeListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnFreezeListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUnFreezeListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUninstallBlackListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUninstallBlackListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUninstallWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUninstallWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AppUninstallWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->ApppUninstallBlackListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->AutoBrightnessEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->AutoBrightnessIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BackKeyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BackKeyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothBlackListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothBlackListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothBlackListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothBlackListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothBlackListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothBlackListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothBlackListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothBlackListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothFirewallEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothFirewallIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothFirewallTypeGet()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothFirewallTypeSet(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothOpen(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothTransEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothTransIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BluetoothWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BrowserWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BrowserWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BrowserWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BrowserWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->BrowserWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BrowserWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BrowserWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->BrowserWhiteListadd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->CameraEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->CameraIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->CameraPhotoShutterSoundEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->CameraPhotoShutterSoundIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->CameraVideoShutterSoundEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->CameraVideoShutterSoundIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefAirPlaneEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefAirPlaneIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefApnEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefApnIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefAutoTimeEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefBatterySaverEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefBatterySaverIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefBrowserClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefBrowserSet(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefClipboardEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefClipboardIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->DefDeviceAdminActive(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->DefDeviceOwner(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefFactoryResetEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefFactoryResetIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefFileShareEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefFileShareIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefGpsLocationEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefGpsLocationIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefHomeLauncherClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->DefHomeLauncherSet(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefInputMethodClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefInputMethodSet(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefInstallUnknownApkEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefInstallUnknownApkIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefLockScreenEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefLockScreenIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefLockScreenNotifyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefLockScreenNotifyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefMultiUserEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefMultiUserIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefNoColorReadEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefNoColorReadIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefNotifySendEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefNotifySendIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefOtaUpdateEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefOtaUpdateIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefPowerOffEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefPowerOffIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefPowerSleepEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefPowerSleepIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefSafeModeEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefSafeModeIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->DefScreenColorAdjustEnable(ZI)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefScreenColorAdjustIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefScreenShotEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefScreenShotIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefShutdownRebootEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefShutdownRebootIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefSystemSettingEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefSystemSettingIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefSystemUpdateEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefTimeSetEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefUnknowSourceDetailEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefUnknowSourceDetailIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefVideoPlayerClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefVideoPlayerSet(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DefVolumeAdjustEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DefVolumeAdjustIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DevelopmentOptionIsVisible()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DevelopmentOptionVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->DistanceProtectionEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->DistanceProtectionIsEnable()Z

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

.method public ExternalStorageEnable(Z)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->ExternalStorageEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->ExternalStorageIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->EyeComfortEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->EyeComfortIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->FatigueAlertEnable(ZI)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->FatigueAlertIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->FirmwareVersionGet()Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->GlobalNetworkBlackListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->GlobalNetworkBlackListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->GlobalNetworkBlackListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->GlobalNetworkWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->GlobalNetworkWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->GlobalNetworkWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->GpsLocationIsOn()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->GpsLocationOn(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->HeadsetEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->HeadsetIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->HomeKeyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->HomeKeyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->MMSReceiveEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->MMSReceiveIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->MMSSendEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->MMSSendIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->MenuKeyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->MenuKeyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->MicphoneEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->MicphoneIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->MobileDataConnectivityEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->MobileDataConnectivityIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->MobileDataIsOn()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->MobileDataOn(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavBackButtonEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NavBackButtonIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavBackButtonVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NavBarHide()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NavBarIsShow()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NavBarShow()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavHomeButtonEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NavHomeButtonIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavHomeButtonVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavMenuButtonVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavRecentButtonEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NavRecentButtonIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavRecentButtonVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavScreenshotButtonVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavVolumeDownButtonVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NavVolumeUpButtonVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NetworkAccessEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NetworkFirewallEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NetworkFirewallIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NetworkFirewallTypeGet()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NetworkFirewallTypeSet(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NetworkFirewallWorkTypeGet()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NetworkFirewallWorkTypeSet(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->NetworkResetOptionIsVisible()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->NetworkResetOptionVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallBlackListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneCallBlackListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallBlackListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallBlackListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneCallBlackListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneCallBlackListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallBlackListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneCallIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneCallWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneCallWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneCallWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneCallWhiteListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneNumerGet(I)Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneVoiceInEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneVoiceInIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PhoneVoiceOutEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PhoneVoiceOutIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PlatformNameGet()Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PowerKeyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PowerKeyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PowerKeyLongPressEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PowerKeyLongPressIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->PowerKeyShortPressEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->PowerKeyShortPressIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->ProjectNameGet()Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->RecentKeyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->RecentKeyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->RecentTaskAllClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->ReverseAlertEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->ReverseAlertIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SMSEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SMSIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SdcardStorageEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SdcardStorageIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SettingAllOptionIsVisible()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SettingAllOptionVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SettingOptionIsVisible(I)Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->SettingOptionVisible(IZ)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SettingSearchOptionIsVisible()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SettingSearchOptionVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->ShakeAlertEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->ShakeAlertIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SimEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SimImeiGet(I)Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SimImeiNumGet()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SimIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SimSlotNumGet()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->StatusBarDropEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->StatusBarDropIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->StatusBarExpandPanelEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->StatusBarExpandPanelIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->StatusBarHide()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->StatusBarNotifyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->StatusBarNotifyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->StatusBarShow()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->StatusbarIsShow()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysBacklightEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysBacklightIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysBacklightValAdjust(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysBootanimationClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysBootanimationSet(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IApiManager;->SysDateSet(III)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IApiManager;->SysDateTimeSet(IIIIII)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysDisplayDensityGet(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysDisplaySizeGet()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysDisplaySizeSet(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysFaceRecognition()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysFactoryRest()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysFontSizeGet()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysFontSizeSet(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysFontSizeValueSet(F)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysGoSleep()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysIsRoot()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysLockPassword(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysMemoryClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysPowerSaveMode(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysReboot()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysRoot(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysScheduledPowerOff(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysScheduledPowerOn(Z)I

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
    iget-object v2, v1, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

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

    invoke-interface/range {v2 .. v12}, Landroid/os/IApiManager;->SysScheduledTimePowerOff(ZIIZZZZZZZ)I

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
    iget-object v2, v1, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

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

    invoke-interface/range {v2 .. v12}, Landroid/os/IApiManager;->SysScheduledTimePowerOn(ZIIZZZZZZZ)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysScreenLock()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysScreenLockClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysScreenLockType(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysScreenOff()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysScreenOn()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysScreenRecordStart(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysScreenRecordStop()Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysScreenUnLock()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysScreenshot(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysScreenshotBmp()Landroid/graphics/Bitmap;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysScreenshotPath()Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysSerialnoGet()Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysShutdown()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IApiManager;->SysTimeSet(III)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->SysTimeStampSet(J)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysVolumeMuteEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysVolumeMuteIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->SysWakeUp()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->SysZenModeOn(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->TouchScreenEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->TouchScreenIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->UsbDebugEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->UsbDebugIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->UsbMtpEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->UsbMtpIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->UsbOtgEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->UsbOtgIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->UsbStorageEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->UsbStorageIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->VolumeDownKeyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->VolumeDownKeyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->VolumeKeyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->VolumeKeyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->VolumeUpKeyEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->VolumeUpKeyIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->VpnOptionIsVisible()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->VpnOptionVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiAdvanceOptionIsVisible()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiAdvanceOptionVisible(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiBlackListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiBlackListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiBlackListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiBlackListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiBlackListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiBlackListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiBlackListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiBlackListSet(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiConfigurationClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiConfigurationDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IApiManager;->WifiConnectSSID(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiDirectEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiDirectIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiFirewallEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiFirewallIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiFirewallTypeGet()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiFirewallTypeSet(I)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiMacGet()Ljava/lang/String;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiOpen(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiWhiteListAdd(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiWhiteListClear()I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiWhiteListDel(Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiWhiteListEnable(Z)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiWhiteListGet()Ljava/util/List;

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0}, Landroid/os/IApiManager;->WifiWhiteListIsEnable()Z

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiWhiteListRemove(Ljava/util/List;)I

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
    iget-object v0, p0, Landroid/os/ApiManager;->mService:Landroid/os/IApiManager;

    invoke-interface {v0, p1}, Landroid/os/IApiManager;->WifiWhiteListSet(Ljava/util/List;)I

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
