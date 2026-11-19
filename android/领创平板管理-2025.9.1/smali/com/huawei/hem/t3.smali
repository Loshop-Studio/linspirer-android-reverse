.class public Lcom/huawei/hem/t3;
.super Ljava/lang/Object;
.source "DBController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/t3$b;
    }
.end annotation


# static fields
.field public static d:Landroid/content/Context;


# instance fields
.field public a:Lcom/huawei/hem/u3;

.field public b:Lcom/android/launcher3/db/model/DaoSession;

.field public c:Lcom/android/launcher3/db/model/DaoSession;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/t3$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "tactics3.db"

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    .line 3
    sget-object p1, Lcom/huawei/hem/t3;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    sget-object v2, Lcom/huawei/hem/t3;->d:Landroid/content/Context;

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "db has moved success"

    .line 8
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/huawei/hem/t3;->d:Landroid/content/Context;

    .line 10
    :cond_1
    :goto_0
    new-instance v1, Lcom/huawei/hem/u3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/huawei/hem/u3;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v1, p0, Lcom/huawei/hem/t3;->a:Lcom/huawei/hem/u3;

    .line 11
    new-instance p1, Lcom/android/launcher3/db/model/DaoMaster;

    .line 12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 13
    invoke-direct {p1, v0}, Lcom/android/launcher3/db/model/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/DaoMaster;->newSession()Lcom/android/launcher3/db/model/DaoSession;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    .line 16
    new-instance p1, Lcom/android/launcher3/db/model/DaoMaster;

    .line 17
    iget-object v0, p0, Lcom/huawei/hem/t3;->a:Lcom/huawei/hem/u3;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Lcom/android/launcher3/db/model/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/DaoMaster;->newSession()Lcom/android/launcher3/db/model/DaoSession;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/huawei/hem/t3;->b:Lcom/android/launcher3/db/model/DaoSession;

    return-void
.end method

.method public static a()Lcom/huawei/hem/t3;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 2
    sput-object v0, Lcom/huawei/hem/t3;->d:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/huawei/hem/t3$b;->a:Lcom/huawei/hem/t3;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/android/launcher3/db/model/GesturePasswordDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/t3;->b:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getGesturePasswordDao()Lcom/android/launcher3/db/model/GesturePasswordDao;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/android/launcher3/db/model/ItemAppDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/t3;->b:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getItemAppDao()Lcom/android/launcher3/db/model/ItemAppDao;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/android/launcher3/db/model/ManageDeviceDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/t3;->b:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getManageDeviceDao()Lcom/android/launcher3/db/model/ManageDeviceDao;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/android/launcher3/db/model/GesturePasswordDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getGesturePasswordDao()Lcom/android/launcher3/db/model/GesturePasswordDao;

    move-result-object v0

    return-object v0
.end method
