.class public Lcom/android/launcher3/db/model/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field public final appTimeLimitInfoDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

.field public final appTimeLimitInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final gesturePasswordDao:Lcom/android/launcher3/db/model/GesturePasswordDao;

.field public final gesturePasswordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final illegalDao:Lcom/android/launcher3/db/model/IllegalDao;

.field public final illegalDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

.field public final illegalEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final itemAppDao:Lcom/android/launcher3/db/model/ItemAppDao;

.field public final itemAppDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final locationInfoDao:Lcom/android/launcher3/db/model/LocationInfoDao;

.field public final locationInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final manageDeviceDao:Lcom/android/launcher3/db/model/ManageDeviceDao;

.field public final manageDeviceDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final pushMsgDao:Lcom/android/launcher3/db/model/PushMsgDao;

.field public final pushMsgDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final screenPartSettingsDao:Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

.field public final screenPartSettingsDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final userEventDao:Lcom/android/launcher3/db/model/UserEventDao;

.field public final userEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final weekTacticsDao:Lcom/android/launcher3/db/model/WeekTacticsDao;

.field public final weekTacticsDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 2
    const-class p1, Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->appTimeLimitInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 4
    const-class p1, Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->gesturePasswordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 5
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 6
    const-class p1, Lcom/android/launcher3/db/model/IllegalDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 7
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 8
    const-class p1, Lcom/android/launcher3/db/model/IllegalEventDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 9
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 10
    const-class p1, Lcom/android/launcher3/db/model/ItemAppDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->itemAppDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 11
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 12
    const-class p1, Lcom/android/launcher3/db/model/LocationInfoDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->locationInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 13
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 14
    const-class p1, Lcom/android/launcher3/db/model/ManageDeviceDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->manageDeviceDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 15
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 16
    const-class p1, Lcom/android/launcher3/db/model/PushMsgDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->pushMsgDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 17
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 18
    const-class p1, Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->screenPartSettingsDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 19
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 20
    const-class p1, Lcom/android/launcher3/db/model/UserEventDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->userEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 21
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 22
    const-class p1, Lcom/android/launcher3/db/model/WeekTacticsDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->weekTacticsDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 23
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 24
    new-instance p1, Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->appTimeLimitInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->appTimeLimitInfoDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    .line 25
    new-instance p1, Lcom/android/launcher3/db/model/GesturePasswordDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->gesturePasswordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/GesturePasswordDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->gesturePasswordDao:Lcom/android/launcher3/db/model/GesturePasswordDao;

    .line 26
    new-instance p1, Lcom/android/launcher3/db/model/IllegalDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/IllegalDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalDao:Lcom/android/launcher3/db/model/IllegalDao;

    .line 27
    new-instance p1, Lcom/android/launcher3/db/model/IllegalEventDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/IllegalEventDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

    .line 28
    new-instance p1, Lcom/android/launcher3/db/model/ItemAppDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->itemAppDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/ItemAppDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->itemAppDao:Lcom/android/launcher3/db/model/ItemAppDao;

    .line 29
    new-instance p1, Lcom/android/launcher3/db/model/LocationInfoDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->locationInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/LocationInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->locationInfoDao:Lcom/android/launcher3/db/model/LocationInfoDao;

    .line 30
    new-instance p1, Lcom/android/launcher3/db/model/ManageDeviceDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->manageDeviceDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/ManageDeviceDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->manageDeviceDao:Lcom/android/launcher3/db/model/ManageDeviceDao;

    .line 31
    new-instance p1, Lcom/android/launcher3/db/model/PushMsgDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->pushMsgDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/PushMsgDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->pushMsgDao:Lcom/android/launcher3/db/model/PushMsgDao;

    .line 32
    new-instance p1, Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->screenPartSettingsDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/ScreenPartSettingsDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->screenPartSettingsDao:Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

    .line 33
    new-instance p1, Lcom/android/launcher3/db/model/UserEventDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->userEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/UserEventDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->userEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    .line 34
    new-instance p1, Lcom/android/launcher3/db/model/WeekTacticsDao;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->weekTacticsDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/db/model/WeekTacticsDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V

    iput-object p1, p0, Lcom/android/launcher3/db/model/DaoSession;->weekTacticsDao:Lcom/android/launcher3/db/model/WeekTacticsDao;

    .line 35
    const-class p1, Lcom/android/launcher3/db/model/AppTimeLimitInfo;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->appTimeLimitInfoDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 36
    const-class p1, Lcom/android/launcher3/db/model/GesturePassword;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->gesturePasswordDao:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 37
    const-class p1, Lcom/android/launcher3/db/model/Illegal;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalDao:Lcom/android/launcher3/db/model/IllegalDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 38
    const-class p1, Lcom/android/launcher3/db/model/IllegalEvent;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 39
    const-class p1, Lcom/android/launcher3/db/model/ItemApp;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->itemAppDao:Lcom/android/launcher3/db/model/ItemAppDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 40
    const-class p1, Lcom/android/launcher3/db/model/LocationInfo;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->locationInfoDao:Lcom/android/launcher3/db/model/LocationInfoDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 41
    const-class p1, Lcom/android/launcher3/db/model/ManageDevice;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->manageDeviceDao:Lcom/android/launcher3/db/model/ManageDeviceDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 42
    const-class p1, Lcom/android/launcher3/db/model/PushMsg;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->pushMsgDao:Lcom/android/launcher3/db/model/PushMsgDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 43
    const-class p1, Lcom/android/launcher3/db/model/ScreenPartSettings;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->screenPartSettingsDao:Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 44
    const-class p1, Lcom/android/launcher3/db/model/UserEvent;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->userEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 45
    const-class p1, Lcom/android/launcher3/db/model/WeekTactics;

    iget-object p2, p0, Lcom/android/launcher3/db/model/DaoSession;->weekTacticsDao:Lcom/android/launcher3/db/model/WeekTacticsDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->appTimeLimitInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->gesturePasswordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->itemAppDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->locationInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->manageDeviceDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->pushMsgDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->screenPartSettingsDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->userEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->weekTacticsDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getAppTimeLimitInfoDao()Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->appTimeLimitInfoDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    return-object v0
.end method

.method public getGesturePasswordDao()Lcom/android/launcher3/db/model/GesturePasswordDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->gesturePasswordDao:Lcom/android/launcher3/db/model/GesturePasswordDao;

    return-object v0
.end method

.method public getIllegalDao()Lcom/android/launcher3/db/model/IllegalDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalDao:Lcom/android/launcher3/db/model/IllegalDao;

    return-object v0
.end method

.method public getIllegalEventDao()Lcom/android/launcher3/db/model/IllegalEventDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

    return-object v0
.end method

.method public getItemAppDao()Lcom/android/launcher3/db/model/ItemAppDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->itemAppDao:Lcom/android/launcher3/db/model/ItemAppDao;

    return-object v0
.end method

.method public getLocationInfoDao()Lcom/android/launcher3/db/model/LocationInfoDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->locationInfoDao:Lcom/android/launcher3/db/model/LocationInfoDao;

    return-object v0
.end method

.method public getManageDeviceDao()Lcom/android/launcher3/db/model/ManageDeviceDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->manageDeviceDao:Lcom/android/launcher3/db/model/ManageDeviceDao;

    return-object v0
.end method

.method public getPushMsgDao()Lcom/android/launcher3/db/model/PushMsgDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->pushMsgDao:Lcom/android/launcher3/db/model/PushMsgDao;

    return-object v0
.end method

.method public getScreenPartSettingsDao()Lcom/android/launcher3/db/model/ScreenPartSettingsDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->screenPartSettingsDao:Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

    return-object v0
.end method

.method public getUserEventDao()Lcom/android/launcher3/db/model/UserEventDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->userEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    return-object v0
.end method

.method public getWeekTacticsDao()Lcom/android/launcher3/db/model/WeekTacticsDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/DaoSession;->weekTacticsDao:Lcom/android/launcher3/db/model/WeekTacticsDao;

    return-object v0
.end method
