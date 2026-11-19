package com.android.launcher3.p027db.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.huawei.hem.C0948f6;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import org.android.agoo.common.AgooConstants;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class ItemAppDao extends AbstractDao<ItemApp, Long> {
    public static final String TABLENAME = "app_tactics_table";

    public static class Properties {
        public static final Property Index = new Property(0, Long.class, "index", true, AgooConstants.MESSAGE_ID);

        /* renamed from: Id */
        public static final Property f1885Id = new Property(1, String.class, AgooConstants.MESSAGE_ID, false, HiAnalyticsConstant.BI_KEY_APP_ID);
        public static final Property Status = new Property(2, Integer.TYPE, "status", false, "status");
        public static final Property IsNew = new Property(3, Integer.TYPE, "isNew", false, "is_new");
        public static final Property Exception_white_url = new Property(4, Integer.TYPE, "exception_white_url", false, "exception_white_url");
        public static final Property IsTrust = new Property(5, Integer.TYPE, "isTrust", false, "is_trust");
        public static final Property Hide_icon_status = new Property(6, Integer.TYPE, "hide_icon_status", false, "hide_icon_status");
        public static final Property Packagename = new Property(7, String.class, "packagename", false, "name");
        public static final Property Versionname = new Property(8, String.class, "versionname", false, "version_name");
        public static final Property Versioncode = new Property(9, Integer.TYPE, "versioncode", false, "version_code");
        public static final Property IsForceApps = new Property(10, Integer.TYPE, "isForceApps", false, "isforce");
        public static final Property Sha1 = new Property(11, String.class, "sha1", false, "hash");
        public static final Property Updated_at = new Property(12, String.class, "updated_at", false, "update_at");
        public static final Property UserName = new Property(13, String.class, "userName", false, "user_name");
        public static final Property IsWhite = new Property(14, Integer.TYPE, "isWhite", false, "is_white_app");
        public static final Property Sort_weight = new Property(15, Integer.TYPE, "sort_weight", false, "SORT_WEIGHT");
    }

    public ItemAppDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"app_tactics_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"app_id\" TEXT,\"status\" INTEGER NOT NULL ,\"is_new\" INTEGER NOT NULL ,\"exception_white_url\" INTEGER NOT NULL ,\"is_trust\" INTEGER NOT NULL ,\"hide_icon_status\" INTEGER NOT NULL ,\"name\" TEXT,\"version_name\" TEXT,\"version_code\" INTEGER NOT NULL ,\"isforce\" INTEGER NOT NULL ,\"hash\" TEXT,\"update_at\" TEXT,\"user_name\" TEXT,\"is_white_app\" INTEGER NOT NULL ,\"SORT_WEIGHT\" INTEGER NOT NULL );");
    }

    public static void dropTable(Database database, boolean z) {
        C0948f6.m1743A(C0948f6.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"app_tactics_table\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public ItemAppDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(ItemApp itemApp) {
        if (itemApp != null) {
            return itemApp.getIndex();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(ItemApp itemApp) {
        return itemApp.getIndex() != null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public Long readKey(Cursor cursor, int i) {
        int i2 = i + 0;
        if (cursor.isNull(i2)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i2));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final Long updateKeyAfterInsert(ItemApp itemApp, long j) {
        itemApp.setIndex(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, ItemApp itemApp) {
        databaseStatement.clearBindings();
        Long index = itemApp.getIndex();
        if (index != null) {
            databaseStatement.bindLong(1, index.longValue());
        }
        String id = itemApp.getId();
        if (id != null) {
            databaseStatement.bindString(2, id);
        }
        databaseStatement.bindLong(3, itemApp.getStatus());
        databaseStatement.bindLong(4, itemApp.getIsNew());
        databaseStatement.bindLong(5, itemApp.getException_white_url());
        databaseStatement.bindLong(6, itemApp.getIsTrust());
        databaseStatement.bindLong(7, itemApp.getHide_icon_status());
        String packagename = itemApp.getPackagename();
        if (packagename != null) {
            databaseStatement.bindString(8, packagename);
        }
        String versionname = itemApp.getVersionname();
        if (versionname != null) {
            databaseStatement.bindString(9, versionname);
        }
        databaseStatement.bindLong(10, itemApp.getVersioncode());
        databaseStatement.bindLong(11, itemApp.getIsForceApps());
        String sha1 = itemApp.getSha1();
        if (sha1 != null) {
            databaseStatement.bindString(12, sha1);
        }
        String updated_at = itemApp.getUpdated_at();
        if (updated_at != null) {
            databaseStatement.bindString(13, updated_at);
        }
        String userName = itemApp.getUserName();
        if (userName != null) {
            databaseStatement.bindString(14, userName);
        }
        databaseStatement.bindLong(15, itemApp.getIsWhite());
        databaseStatement.bindLong(16, itemApp.getSort_weight());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public ItemApp readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = cursor.getInt(i + 2);
        int i5 = cursor.getInt(i + 3);
        int i6 = cursor.getInt(i + 4);
        int i7 = cursor.getInt(i + 5);
        int i8 = cursor.getInt(i + 6);
        int i9 = i + 7;
        String string2 = cursor.isNull(i9) ? null : cursor.getString(i9);
        int i10 = i + 8;
        String string3 = cursor.isNull(i10) ? null : cursor.getString(i10);
        int i11 = cursor.getInt(i + 9);
        int i12 = cursor.getInt(i + 10);
        int i13 = i + 11;
        String string4 = cursor.isNull(i13) ? null : cursor.getString(i13);
        int i14 = i + 12;
        String string5 = cursor.isNull(i14) ? null : cursor.getString(i14);
        int i15 = i + 13;
        return new ItemApp(lValueOf, string, i4, i5, i6, i7, i8, string2, string3, i11, i12, string4, string5, cursor.isNull(i15) ? null : cursor.getString(i15), cursor.getInt(i + 14), cursor.getInt(i + 15));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, ItemApp itemApp, int i) {
        int i2 = i + 0;
        itemApp.setIndex(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        itemApp.setId(cursor.isNull(i3) ? null : cursor.getString(i3));
        itemApp.setStatus(cursor.getInt(i + 2));
        itemApp.setIsNew(cursor.getInt(i + 3));
        itemApp.setException_white_url(cursor.getInt(i + 4));
        itemApp.setIsTrust(cursor.getInt(i + 5));
        itemApp.setHide_icon_status(cursor.getInt(i + 6));
        int i4 = i + 7;
        itemApp.setPackagename(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 8;
        itemApp.setVersionname(cursor.isNull(i5) ? null : cursor.getString(i5));
        itemApp.setVersioncode(cursor.getInt(i + 9));
        itemApp.setIsForceApps(cursor.getInt(i + 10));
        int i6 = i + 11;
        itemApp.setSha1(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 12;
        itemApp.setUpdated_at(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 13;
        itemApp.setUserName(cursor.isNull(i8) ? null : cursor.getString(i8));
        itemApp.setIsWhite(cursor.getInt(i + 14));
        itemApp.setSort_weight(cursor.getInt(i + 15));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, ItemApp itemApp) {
        sQLiteStatement.clearBindings();
        Long index = itemApp.getIndex();
        if (index != null) {
            sQLiteStatement.bindLong(1, index.longValue());
        }
        String id = itemApp.getId();
        if (id != null) {
            sQLiteStatement.bindString(2, id);
        }
        sQLiteStatement.bindLong(3, itemApp.getStatus());
        sQLiteStatement.bindLong(4, itemApp.getIsNew());
        sQLiteStatement.bindLong(5, itemApp.getException_white_url());
        sQLiteStatement.bindLong(6, itemApp.getIsTrust());
        sQLiteStatement.bindLong(7, itemApp.getHide_icon_status());
        String packagename = itemApp.getPackagename();
        if (packagename != null) {
            sQLiteStatement.bindString(8, packagename);
        }
        String versionname = itemApp.getVersionname();
        if (versionname != null) {
            sQLiteStatement.bindString(9, versionname);
        }
        sQLiteStatement.bindLong(10, itemApp.getVersioncode());
        sQLiteStatement.bindLong(11, itemApp.getIsForceApps());
        String sha1 = itemApp.getSha1();
        if (sha1 != null) {
            sQLiteStatement.bindString(12, sha1);
        }
        String updated_at = itemApp.getUpdated_at();
        if (updated_at != null) {
            sQLiteStatement.bindString(13, updated_at);
        }
        String userName = itemApp.getUserName();
        if (userName != null) {
            sQLiteStatement.bindString(14, userName);
        }
        sQLiteStatement.bindLong(15, itemApp.getIsWhite());
        sQLiteStatement.bindLong(16, itemApp.getSort_weight());
    }
}
