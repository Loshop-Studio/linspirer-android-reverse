.class public Lcom/android/launcher3/db/model/ItemAppDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "ItemAppDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/db/model/ItemAppDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/android/launcher3/db/model/ItemApp;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "app_tactics_table"


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

    const-string p1, "\"app_tactics_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"app_id\" TEXT,\"status\" INTEGER NOT NULL ,\"is_new\" INTEGER NOT NULL ,\"exception_white_url\" INTEGER NOT NULL ,\"is_trust\" INTEGER NOT NULL ,\"hide_icon_status\" INTEGER NOT NULL ,\"name\" TEXT,\"version_name\" TEXT,\"version_code\" INTEGER NOT NULL ,\"isforce\" INTEGER NOT NULL ,\"hash\" TEXT,\"update_at\" TEXT,\"user_name\" TEXT,\"is_white_app\" INTEGER NOT NULL ,\"SORT_WEIGHT\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

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
    const-string v1, "\"app_tactics_table\""

    invoke-static {v0, p1, v1, p0}, Lcom/huawei/hem/f6;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method


# virtual methods
.method public final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/launcher3/db/model/ItemApp;)V
    .locals 4

    .line 27
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 28
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIndex()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 30
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 32
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 33
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIsNew()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 34
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getException_white_url()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 35
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIsTrust()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 36
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getHide_icon_status()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 37
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 39
    :cond_2
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getVersionname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0xa

    .line 41
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getVersioncode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 42
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIsForceApps()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 43
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getSha1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0xc

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    :cond_4
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getUpdated_at()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xd

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :cond_5
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0xe

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0xf

    .line 49
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIsWhite()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 50
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getSort_weight()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/launcher3/db/model/ItemApp;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/db/model/ItemAppDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/launcher3/db/model/ItemApp;)V

    return-void
.end method

.method public final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/launcher3/db/model/ItemApp;)V
    .locals 4

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIndex()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 7
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIsNew()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getException_white_url()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 11
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIsTrust()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 12
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getHide_icon_status()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 13
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 14
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 15
    :cond_2
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getVersionname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    .line 16
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0xa

    .line 17
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getVersioncode()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 18
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIsForceApps()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 19
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getSha1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0xc

    .line 20
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 21
    :cond_4
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getUpdated_at()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xd

    .line 22
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 23
    :cond_5
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0xe

    .line 24
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0xf

    .line 25
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getIsWhite()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 26
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ItemApp;->getSort_weight()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/android/launcher3/db/model/ItemApp;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/db/model/ItemAppDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/launcher3/db/model/ItemApp;)V

    return-void
.end method

.method public getKey(Lcom/android/launcher3/db/model/ItemApp;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ItemApp;->getIndex()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/db/model/ItemApp;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/db/model/ItemAppDao;->getKey(Lcom/android/launcher3/db/model/ItemApp;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/android/launcher3/db/model/ItemApp;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ItemApp;->getIndex()Ljava/lang/Long;

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
    check-cast p1, Lcom/android/launcher3/db/model/ItemApp;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/db/model/ItemAppDao;->hasKey(Lcom/android/launcher3/db/model/ItemApp;)Z

    move-result p1

    return p1
.end method

.method public final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/android/launcher3/db/model/ItemApp;
    .locals 20

    move-object/from16 v0, p1

    .line 3
    new-instance v18, Lcom/android/launcher3/db/model/ItemApp;

    add-int/lit8 v1, p2, 0x0

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v1

    :goto_0
    add-int/lit8 v1, p2, 0x1

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_1
    add-int/lit8 v1, p2, 0x2

    .line 6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v1, p2, 0x3

    .line 7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v1, p2, 0x4

    .line 8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v1, p2, 0x5

    .line 9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v1, p2, 0x6

    .line 10
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v1, p2, 0x7

    .line 11
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v3

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    :goto_2
    add-int/lit8 v1, p2, 0x8

    .line 12
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v3

    goto :goto_3

    :cond_3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    :goto_3
    add-int/lit8 v1, p2, 0x9

    .line 13
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v1, p2, 0xa

    .line 14
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v1, p2, 0xb

    .line 15
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v3

    goto :goto_4

    :cond_4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    :goto_4
    add-int/lit8 v1, p2, 0xc

    .line 16
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v15, v3

    goto :goto_5

    :cond_5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    :goto_5
    add-int/lit8 v1, p2, 0xd

    .line 17
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v19, v3

    goto :goto_6

    :cond_6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_6
    add-int/lit8 v1, p2, 0xe

    .line 18
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    add-int/lit8 v1, p2, 0xf

    .line 19
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v1, v18

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v19

    invoke-direct/range {v1 .. v17}, Lcom/android/launcher3/db/model/ItemApp;-><init>(Ljava/lang/Long;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v18
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/db/model/ItemAppDao;->readEntity(Landroid/database/Cursor;I)Lcom/android/launcher3/db/model/ItemApp;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/android/launcher3/db/model/ItemApp;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setIndex(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setStatus(I)V

    add-int/lit8 v0, p3, 0x3

    .line 23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setIsNew(I)V

    add-int/lit8 v0, p3, 0x4

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setException_white_url(I)V

    add-int/lit8 v0, p3, 0x5

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setIsTrust(I)V

    add-int/lit8 v0, p3, 0x6

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setHide_icon_status(I)V

    add-int/lit8 v0, p3, 0x7

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setPackagename(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setVersionname(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 29
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setVersioncode(I)V

    add-int/lit8 v0, p3, 0xa

    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setIsForceApps(I)V

    add-int/lit8 v0, p3, 0xb

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setSha1(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setUpdated_at(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xd

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {p2, v2}, Lcom/android/launcher3/db/model/ItemApp;->setUserName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xe

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/db/model/ItemApp;->setIsWhite(I)V

    add-int/lit8 p3, p3, 0xf

    .line 35
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/db/model/ItemApp;->setSort_weight(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/android/launcher3/db/model/ItemApp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/db/model/ItemAppDao;->readEntity(Landroid/database/Cursor;Lcom/android/launcher3/db/model/ItemApp;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/db/model/ItemAppDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final updateKeyAfterInsert(Lcom/android/launcher3/db/model/ItemApp;J)Ljava/lang/Long;
    .locals 1

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/db/model/ItemApp;->setIndex(Ljava/lang/Long;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/db/model/ItemApp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/db/model/ItemAppDao;->updateKeyAfterInsert(Lcom/android/launcher3/db/model/ItemApp;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
