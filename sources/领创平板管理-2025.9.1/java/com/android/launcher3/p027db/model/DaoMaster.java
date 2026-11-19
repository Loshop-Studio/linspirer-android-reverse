package com.android.launcher3.p027db.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import org.greenrobot.greendao.AbstractDaoMaster;
import org.greenrobot.greendao.DaoLog;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseOpenHelper;
import org.greenrobot.greendao.database.StandardDatabase;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

/* loaded from: classes.dex */
public class DaoMaster extends AbstractDaoMaster {
    public static final int SCHEMA_VERSION = 17;

    public static class DevOpenHelper extends OpenHelper {
        public DevOpenHelper(Context context, String str) {
            super(context, str);
        }

        @Override // org.greenrobot.greendao.database.DatabaseOpenHelper
        public void onUpgrade(Database database, int i, int i2) {
            Log.i(DaoLog.TAG, "Upgrading schema from version " + i + " to " + i2 + " by dropping all tables");
            DaoMaster.dropAllTables(database, true);
            onCreate(database);
        }

        public DevOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory);
        }
    }

    public static abstract class OpenHelper extends DatabaseOpenHelper {
        public OpenHelper(Context context, String str) {
            super(context, str, 17);
        }

        @Override // org.greenrobot.greendao.database.DatabaseOpenHelper
        public void onCreate(Database database) {
            Log.i(DaoLog.TAG, "Creating tables for schema version 17");
            DaoMaster.createAllTables(database, false);
        }

        public OpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory, 17);
        }
    }

    public DaoMaster(SQLiteDatabase sQLiteDatabase) {
        this(new StandardDatabase(sQLiteDatabase));
    }

    public static void createAllTables(Database database, boolean z) {
        AppTimeLimitInfoDao.createTable(database, z);
        GesturePasswordDao.createTable(database, z);
        IllegalDao.createTable(database, z);
        IllegalEventDao.createTable(database, z);
        ItemAppDao.createTable(database, z);
        LocationInfoDao.createTable(database, z);
        ManageDeviceDao.createTable(database, z);
        PushMsgDao.createTable(database, z);
        ScreenPartSettingsDao.createTable(database, z);
        UserEventDao.createTable(database, z);
        WeekTacticsDao.createTable(database, z);
    }

    public static void dropAllTables(Database database, boolean z) {
        AppTimeLimitInfoDao.dropTable(database, z);
        GesturePasswordDao.dropTable(database, z);
        IllegalDao.dropTable(database, z);
        IllegalEventDao.dropTable(database, z);
        ItemAppDao.dropTable(database, z);
        LocationInfoDao.dropTable(database, z);
        ManageDeviceDao.dropTable(database, z);
        PushMsgDao.dropTable(database, z);
        ScreenPartSettingsDao.dropTable(database, z);
        UserEventDao.dropTable(database, z);
        WeekTacticsDao.dropTable(database, z);
    }

    public static DaoSession newDevSession(Context context, String str) {
        return new DaoMaster(new DevOpenHelper(context, str).getWritableDb()).newSession();
    }

    public DaoMaster(Database database) {
        super(database, 17);
        registerDaoClass(AppTimeLimitInfoDao.class);
        registerDaoClass(GesturePasswordDao.class);
        registerDaoClass(IllegalDao.class);
        registerDaoClass(IllegalEventDao.class);
        registerDaoClass(ItemAppDao.class);
        registerDaoClass(LocationInfoDao.class);
        registerDaoClass(ManageDeviceDao.class);
        registerDaoClass(PushMsgDao.class);
        registerDaoClass(ScreenPartSettingsDao.class);
        registerDaoClass(UserEventDao.class);
        registerDaoClass(WeekTacticsDao.class);
    }

    @Override // org.greenrobot.greendao.AbstractDaoMaster
    public DaoSession newSession() {
        return new DaoSession(this.f6504db, IdentityScopeType.Session, this.daoConfigMap);
    }

    @Override // org.greenrobot.greendao.AbstractDaoMaster
    public DaoSession newSession(IdentityScopeType identityScopeType) {
        return new DaoSession(this.f6504db, identityScopeType, this.daoConfigMap);
    }
}
