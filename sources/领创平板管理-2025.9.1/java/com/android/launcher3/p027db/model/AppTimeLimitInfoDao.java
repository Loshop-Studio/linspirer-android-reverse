package com.android.launcher3.p027db.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import org.android.agoo.common.AgooConstants;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class AppTimeLimitInfoDao extends AbstractDao<AppTimeLimitInfo, Long> {
    public static final String TABLENAME = "app_time_limit";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1879Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property Friday = new Property(1, String.class, "friday", false, "FRIDAY");
        public static final Property Monday = new Property(2, String.class, "monday", false, "MONDAY");
        public static final Property Sunday = new Property(3, String.class, "sunday", false, "SUNDAY");
        public static final Property Tuesday = new Property(4, String.class, "tuesday", false, "TUESDAY");
        public static final Property Saturday = new Property(5, String.class, "saturday", false, "SATURDAY");
        public static final Property Thursday = new Property(6, String.class, "thursday", false, "THURSDAY");
        public static final Property Wednesday = new Property(7, String.class, "wednesday", false, "WEDNESDAY");
        public static final Property PackageNames = new Property(8, String.class, Constants.KEY_PACKAGE_NAMES, false, "PACKAGE_NAMES");
    }

    public AppTimeLimitInfoDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"app_time_limit\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"FRIDAY\" TEXT,\"MONDAY\" TEXT,\"SUNDAY\" TEXT,\"TUESDAY\" TEXT,\"SATURDAY\" TEXT,\"THURSDAY\" TEXT,\"WEDNESDAY\" TEXT,\"PACKAGE_NAMES\" TEXT);");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        CompilerOutline.m1743A(sb, str, "IDX_app_time_limit__id ON \"app_time_limit\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        CompilerOutline.m1743A(CompilerOutline.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"app_time_limit\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public AppTimeLimitInfoDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(AppTimeLimitInfo appTimeLimitInfo) {
        if (appTimeLimitInfo != null) {
            return appTimeLimitInfo.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(AppTimeLimitInfo appTimeLimitInfo) {
        return appTimeLimitInfo.getId() != null;
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
    public final Long updateKeyAfterInsert(AppTimeLimitInfo appTimeLimitInfo, long j) {
        appTimeLimitInfo.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, AppTimeLimitInfo appTimeLimitInfo) {
        databaseStatement.clearBindings();
        Long id = appTimeLimitInfo.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String friday = appTimeLimitInfo.getFriday();
        if (friday != null) {
            databaseStatement.bindString(2, friday);
        }
        String monday = appTimeLimitInfo.getMonday();
        if (monday != null) {
            databaseStatement.bindString(3, monday);
        }
        String sunday = appTimeLimitInfo.getSunday();
        if (sunday != null) {
            databaseStatement.bindString(4, sunday);
        }
        String tuesday = appTimeLimitInfo.getTuesday();
        if (tuesday != null) {
            databaseStatement.bindString(5, tuesday);
        }
        String saturday = appTimeLimitInfo.getSaturday();
        if (saturday != null) {
            databaseStatement.bindString(6, saturday);
        }
        String thursday = appTimeLimitInfo.getThursday();
        if (thursday != null) {
            databaseStatement.bindString(7, thursday);
        }
        String wednesday = appTimeLimitInfo.getWednesday();
        if (wednesday != null) {
            databaseStatement.bindString(8, wednesday);
        }
        String packageNames = appTimeLimitInfo.getPackageNames();
        if (packageNames != null) {
            databaseStatement.bindString(9, packageNames);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public AppTimeLimitInfo readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 2;
        String string2 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 3;
        String string3 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 4;
        String string4 = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = i + 5;
        String string5 = cursor.isNull(i7) ? null : cursor.getString(i7);
        int i8 = i + 6;
        String string6 = cursor.isNull(i8) ? null : cursor.getString(i8);
        int i9 = i + 7;
        int i10 = i + 8;
        return new AppTimeLimitInfo(lValueOf, string, string2, string3, string4, string5, string6, cursor.isNull(i9) ? null : cursor.getString(i9), cursor.isNull(i10) ? null : cursor.getString(i10));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, AppTimeLimitInfo appTimeLimitInfo, int i) {
        int i2 = i + 0;
        appTimeLimitInfo.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        appTimeLimitInfo.setFriday(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        appTimeLimitInfo.setMonday(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        appTimeLimitInfo.setSunday(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        appTimeLimitInfo.setTuesday(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 5;
        appTimeLimitInfo.setSaturday(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 6;
        appTimeLimitInfo.setThursday(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 7;
        appTimeLimitInfo.setWednesday(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 8;
        appTimeLimitInfo.setPackageNames(cursor.isNull(i10) ? null : cursor.getString(i10));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, AppTimeLimitInfo appTimeLimitInfo) {
        sQLiteStatement.clearBindings();
        Long id = appTimeLimitInfo.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String friday = appTimeLimitInfo.getFriday();
        if (friday != null) {
            sQLiteStatement.bindString(2, friday);
        }
        String monday = appTimeLimitInfo.getMonday();
        if (monday != null) {
            sQLiteStatement.bindString(3, monday);
        }
        String sunday = appTimeLimitInfo.getSunday();
        if (sunday != null) {
            sQLiteStatement.bindString(4, sunday);
        }
        String tuesday = appTimeLimitInfo.getTuesday();
        if (tuesday != null) {
            sQLiteStatement.bindString(5, tuesday);
        }
        String saturday = appTimeLimitInfo.getSaturday();
        if (saturday != null) {
            sQLiteStatement.bindString(6, saturday);
        }
        String thursday = appTimeLimitInfo.getThursday();
        if (thursday != null) {
            sQLiteStatement.bindString(7, thursday);
        }
        String wednesday = appTimeLimitInfo.getWednesday();
        if (wednesday != null) {
            sQLiteStatement.bindString(8, wednesday);
        }
        String packageNames = appTimeLimitInfo.getPackageNames();
        if (packageNames != null) {
            sQLiteStatement.bindString(9, packageNames);
        }
    }
}
