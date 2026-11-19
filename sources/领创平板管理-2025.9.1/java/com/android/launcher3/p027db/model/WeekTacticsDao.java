package com.android.launcher3.p027db.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.huawei.hem.C0948f6;
import org.android.agoo.common.AgooConstants;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class WeekTacticsDao extends AbstractDao<WeekTactics, Long> {
    public static final String TABLENAME = "worktime_table";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1897Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property Friday = new Property(1, String.class, "friday", false, "FRIDAY");
        public static final Property Monday = new Property(2, String.class, "monday", false, "MONDAY");
        public static final Property Sunday = new Property(3, String.class, "sunday", false, "SUNDAY");
        public static final Property Tuesday = new Property(4, String.class, "tuesday", false, "TUESDAY");
        public static final Property Saturday = new Property(5, String.class, "saturday", false, "SATURDAY");
        public static final Property Thursday = new Property(6, String.class, "thursday", false, "THURSDAY");
        public static final Property Wednesday = new Property(7, String.class, "wednesday", false, "WEDNESDAY");
    }

    public WeekTacticsDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"worktime_table\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"FRIDAY\" TEXT,\"MONDAY\" TEXT,\"SUNDAY\" TEXT,\"TUESDAY\" TEXT,\"SATURDAY\" TEXT,\"THURSDAY\" TEXT,\"WEDNESDAY\" TEXT);");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        C0948f6.m1743A(sb, str, "IDX_worktime_table__id ON \"worktime_table\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        C0948f6.m1743A(C0948f6.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"worktime_table\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public WeekTacticsDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(WeekTactics weekTactics) {
        if (weekTactics != null) {
            return weekTactics.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(WeekTactics weekTactics) {
        return weekTactics.getId() != null;
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
    public final Long updateKeyAfterInsert(WeekTactics weekTactics, long j) {
        weekTactics.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, WeekTactics weekTactics) {
        databaseStatement.clearBindings();
        Long id = weekTactics.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String friday = weekTactics.getFriday();
        if (friday != null) {
            databaseStatement.bindString(2, friday);
        }
        String monday = weekTactics.getMonday();
        if (monday != null) {
            databaseStatement.bindString(3, monday);
        }
        String sunday = weekTactics.getSunday();
        if (sunday != null) {
            databaseStatement.bindString(4, sunday);
        }
        String tuesday = weekTactics.getTuesday();
        if (tuesday != null) {
            databaseStatement.bindString(5, tuesday);
        }
        String saturday = weekTactics.getSaturday();
        if (saturday != null) {
            databaseStatement.bindString(6, saturday);
        }
        String thursday = weekTactics.getThursday();
        if (thursday != null) {
            databaseStatement.bindString(7, thursday);
        }
        String wednesday = weekTactics.getWednesday();
        if (wednesday != null) {
            databaseStatement.bindString(8, wednesday);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public WeekTactics readEntity(Cursor cursor, int i) {
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
        int i9 = i + 7;
        return new WeekTactics(lValueOf, string, string2, string3, string4, string5, cursor.isNull(i8) ? null : cursor.getString(i8), cursor.isNull(i9) ? null : cursor.getString(i9));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, WeekTactics weekTactics, int i) {
        int i2 = i + 0;
        weekTactics.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        weekTactics.setFriday(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        weekTactics.setMonday(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        weekTactics.setSunday(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        weekTactics.setTuesday(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 5;
        weekTactics.setSaturday(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 6;
        weekTactics.setThursday(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 7;
        weekTactics.setWednesday(cursor.isNull(i9) ? null : cursor.getString(i9));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, WeekTactics weekTactics) {
        sQLiteStatement.clearBindings();
        Long id = weekTactics.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String friday = weekTactics.getFriday();
        if (friday != null) {
            sQLiteStatement.bindString(2, friday);
        }
        String monday = weekTactics.getMonday();
        if (monday != null) {
            sQLiteStatement.bindString(3, monday);
        }
        String sunday = weekTactics.getSunday();
        if (sunday != null) {
            sQLiteStatement.bindString(4, sunday);
        }
        String tuesday = weekTactics.getTuesday();
        if (tuesday != null) {
            sQLiteStatement.bindString(5, tuesday);
        }
        String saturday = weekTactics.getSaturday();
        if (saturday != null) {
            sQLiteStatement.bindString(6, saturday);
        }
        String thursday = weekTactics.getThursday();
        if (thursday != null) {
            sQLiteStatement.bindString(7, thursday);
        }
        String wednesday = weekTactics.getWednesday();
        if (wednesday != null) {
            sQLiteStatement.bindString(8, wednesday);
        }
    }
}
