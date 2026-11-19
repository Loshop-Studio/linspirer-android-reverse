package com.android.launcher3.p027db.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.huawei.hem.C0948f6;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class GesturePasswordDao extends AbstractDao<GesturePassword, Long> {
    public static final String TABLENAME = "gestrue_password_table";

    public static class Properties {
        public static final Property _id = new Property(0, Long.class, "_id", true, "_id");
        public static final Property User_name = new Property(1, String.class, "user_name", false, "USER_NAME");
        public static final Property Gesture_password = new Property(2, String.class, "gesture_password", false, "GESTURE_PASSWORD");
    }

    public GesturePasswordDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"gestrue_password_table\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"USER_NAME\" TEXT,\"GESTURE_PASSWORD\" TEXT);");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        C0948f6.m1743A(sb, str, "IDX_gestrue_password_table__id ON \"gestrue_password_table\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        C0948f6.m1743A(C0948f6.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"gestrue_password_table\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public GesturePasswordDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(GesturePassword gesturePassword) {
        if (gesturePassword != null) {
            return gesturePassword.get_id();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(GesturePassword gesturePassword) {
        return gesturePassword.get_id() != null;
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
    public final Long updateKeyAfterInsert(GesturePassword gesturePassword, long j) {
        gesturePassword.set_id(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, GesturePassword gesturePassword) {
        databaseStatement.clearBindings();
        Long l = gesturePassword.get_id();
        if (l != null) {
            databaseStatement.bindLong(1, l.longValue());
        }
        String user_name = gesturePassword.getUser_name();
        if (user_name != null) {
            databaseStatement.bindString(2, user_name);
        }
        String gesture_password = gesturePassword.getGesture_password();
        if (gesture_password != null) {
            databaseStatement.bindString(3, gesture_password);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public GesturePassword readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        int i3 = i + 1;
        int i4 = i + 2;
        return new GesturePassword(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)), cursor.isNull(i3) ? null : cursor.getString(i3), cursor.isNull(i4) ? null : cursor.getString(i4));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, GesturePassword gesturePassword, int i) {
        int i2 = i + 0;
        gesturePassword.set_id(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        gesturePassword.setUser_name(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        gesturePassword.setGesture_password(cursor.isNull(i4) ? null : cursor.getString(i4));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, GesturePassword gesturePassword) {
        sQLiteStatement.clearBindings();
        Long l = gesturePassword.get_id();
        if (l != null) {
            sQLiteStatement.bindLong(1, l.longValue());
        }
        String user_name = gesturePassword.getUser_name();
        if (user_name != null) {
            sQLiteStatement.bindString(2, user_name);
        }
        String gesture_password = gesturePassword.getGesture_password();
        if (gesture_password != null) {
            sQLiteStatement.bindString(3, gesture_password);
        }
    }
}
