.class public Lcom/android/launcher3/db/model/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/db/model/DaoMaster$DevOpenHelper;,
        Lcom/android/launcher3/db/model/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x11


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/db/model/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/16 v0, 0x11

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 3
    const-class p1, Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 4
    const-class p1, Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 5
    const-class p1, Lcom/android/launcher3/db/model/IllegalDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 6
    const-class p1, Lcom/android/launcher3/db/model/IllegalEventDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 7
    const-class p1, Lcom/android/launcher3/db/model/ItemAppDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 8
    const-class p1, Lcom/android/launcher3/db/model/LocationInfoDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 9
    const-class p1, Lcom/android/launcher3/db/model/ManageDeviceDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 10
    const-class p1, Lcom/android/launcher3/db/model/PushMsgDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 11
    const-class p1, Lcom/android/launcher3/db/model/ScreenPartSettingsDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 12
    const-class p1, Lcom/android/launcher3/db/model/UserEventDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 13
    const-class p1, Lcom/android/launcher3/db/model/WeekTacticsDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 2
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/GesturePasswordDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 3
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/IllegalDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 4
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/IllegalEventDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 5
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/ItemAppDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 6
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/LocationInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 7
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/ManageDeviceDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 8
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/PushMsgDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 9
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/ScreenPartSettingsDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 10
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/UserEventDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 11
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/WeekTacticsDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 2
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/GesturePasswordDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 3
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/IllegalDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 4
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/IllegalEventDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 5
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/ItemAppDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 6
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/LocationInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 7
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/ManageDeviceDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 8
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/PushMsgDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 9
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/ScreenPartSettingsDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 10
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/UserEventDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 11
    invoke-static {p0, p1}, Lcom/android/launcher3/db/model/WeekTacticsDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/db/model/DaoSession;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/launcher3/db/model/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/db/model/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    .line 2
    new-instance p1, Lcom/android/launcher3/db/model/DaoMaster;

    invoke-direct {p1, p0}, Lcom/android/launcher3/db/model/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/DaoMaster;->newSession()Lcom/android/launcher3/db/model/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/android/launcher3/db/model/DaoSession;
    .locals 4

    .line 3
    new-instance v0, Lcom/android/launcher3/db/model/DaoSession;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/db/model/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/android/launcher3/db/model/DaoSession;
    .locals 3

    .line 4
    new-instance v0, Lcom/android/launcher3/db/model/DaoSession;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/db/model/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/db/model/DaoMaster;->newSession()Lcom/android/launcher3/db/model/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/db/model/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/android/launcher3/db/model/DaoSession;

    move-result-object p1

    return-object p1
.end method
