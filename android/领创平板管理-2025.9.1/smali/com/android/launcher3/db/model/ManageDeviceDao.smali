.class public Lcom/android/launcher3/db/model/ManageDeviceDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "ManageDeviceDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/db/model/ManageDeviceDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/android/launcher3/db/model/ManageDevice;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "device_tactic_info"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/launcher3/db/model/DaoSession;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"device_tactic_info\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"COMMAND_CAMERA\" INTEGER NOT NULL ,\"COMMAND_BLUETOOTH\" INTEGER NOT NULL ,\"COMMAND_CONNECT_USB\" INTEGER NOT NULL ,\"COMMAND_RECORDING\" INTEGER NOT NULL ,\"COMMAND_WIFI_SWITCH\" INTEGER NOT NULL );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE UNIQUE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IDX_device_tactic_info__id ON \"device_tactic_info\" (\"_id\" ASC);"

    invoke-static {v0, p1, v1, p0}, Lcom/huawei/hem/f6;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    const-string v0, "DROP TABLE "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v1, "\"device_tactic_info\""

    invoke-static {v0, p1, v1, p0}, Lcom/huawei/hem/f6;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method


# virtual methods
.method public final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/launcher3/db/model/ManageDevice;)V
    .locals 8

    .line 11
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 12
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_camera()Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v4

    :goto_0
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 15
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_bluetooth()Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v6, v2

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 16
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_connect_usb()Z

    move-result v1

    if-eqz v1, :cond_3

    move-wide v6, v2

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 17
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_recording()Z

    move-result v1

    if-eqz v1, :cond_4

    move-wide v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 18
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_wifi_switch()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move-wide v2, v4

    :goto_4
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/launcher3/db/model/ManageDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/db/model/ManageDeviceDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/launcher3/db/model/ManageDevice;)V

    return-void
.end method

.method public final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/launcher3/db/model/ManageDevice;)V
    .locals 8

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_camera()Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v4

    :goto_0
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_bluetooth()Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v6, v2

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_connect_usb()Z

    move-result v1

    if-eqz v1, :cond_3

    move-wide v6, v2

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_recording()Z

    move-result v1

    if-eqz v1, :cond_4

    move-wide v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 10
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ManageDevice;->getCommand_wifi_switch()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move-wide v2, v4

    :goto_4
    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/android/launcher3/db/model/ManageDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/db/model/ManageDeviceDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/launcher3/db/model/ManageDevice;)V

    return-void
.end method

.method public getKey(Lcom/android/launcher3/db/model/ManageDevice;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ManageDevice;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/db/model/ManageDevice;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/db/model/ManageDeviceDao;->getKey(Lcom/android/launcher3/db/model/ManageDevice;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/android/launcher3/db/model/ManageDevice;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ManageDevice;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/db/model/ManageDevice;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/db/model/ManageDeviceDao;->hasKey(Lcom/android/launcher3/db/model/ManageDevice;)Z

    move-result p1

    return p1
.end method

.method public final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/android/launcher3/db/model/ManageDevice;
    .locals 9

    .line 3
    new-instance v7, Lcom/android/launcher3/db/model/ManageDevice;

    add-int/lit8 v0, p2, 0x0

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    move-object v1, v0

    add-int/lit8 v0, p2, 0x1

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    add-int/lit8 v0, p2, 0x2

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    add-int/lit8 v0, p2, 0x3

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    add-int/lit8 v0, p2, 0x4

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    add-int/lit8 p2, p2, 0x5

    .line 9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_5

    :cond_5
    move p1, v3

    :goto_5
    move-object v0, v7

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v8

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/db/model/ManageDevice;-><init>(Ljava/lang/Long;ZZZZZ)V

    return-object v7
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/db/model/ManageDeviceDao;->readEntity(Landroid/database/Cursor;I)Lcom/android/launcher3/db/model/ManageDevice;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/android/launcher3/db/model/ManageDevice;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ManageDevice;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ManageDevice;->setCommand_camera(Z)V

    add-int/lit8 v0, p3, 0x2

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ManageDevice;->setCommand_bluetooth(Z)V

    add-int/lit8 v0, p3, 0x3

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ManageDevice;->setCommand_connect_usb(Z)V

    add-int/lit8 v0, p3, 0x4

    .line 14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ManageDevice;->setCommand_recording(Z)V

    add-int/lit8 p3, p3, 0x5

    .line 15
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-virtual {p2, v1}, Lcom/android/launcher3/db/model/ManageDevice;->setCommand_wifi_switch(Z)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/android/launcher3/db/model/ManageDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/db/model/ManageDeviceDao;->readEntity(Landroid/database/Cursor;Lcom/android/launcher3/db/model/ManageDevice;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/db/model/ManageDeviceDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final updateKeyAfterInsert(Lcom/android/launcher3/db/model/ManageDevice;J)Ljava/lang/Long;
    .locals 1

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/db/model/ManageDevice;->setId(Ljava/lang/Long;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/db/model/ManageDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/db/model/ManageDeviceDao;->updateKeyAfterInsert(Lcom/android/launcher3/db/model/ManageDevice;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
