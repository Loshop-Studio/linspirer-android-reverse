package com.android.launcher3.p027db.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.huawei.hem.CompilerOutline;
import org.android.agoo.common.AgooConstants;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class IllegalDao extends AbstractDao<Illegal, Long> {
    public static final String TABLENAME = "illegal_table";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1881Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property Name = new Property(1, String.class, "name", false, "NAME");
        public static final Property Enable = new Property(2, Boolean.TYPE, "enable", false, "ENABLE");
        public static final Property Notify_admin = new Property(3, Boolean.TYPE, "notify_admin", false, "NOTIFY_ADMIN");
        public static final Property Eliminate_data = new Property(4, Boolean.TYPE, "eliminate_data", false, "ELIMINATE_DATA");
        public static final Property Lock_workspace = new Property(5, Boolean.TYPE, "lock_workspace", false, "LOCK_WORKSPACE");
    }

    public IllegalDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"illegal_table\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"NAME\" TEXT,\"ENABLE\" INTEGER NOT NULL ,\"NOTIFY_ADMIN\" INTEGER NOT NULL ,\"ELIMINATE_DATA\" INTEGER NOT NULL ,\"LOCK_WORKSPACE\" INTEGER NOT NULL );");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        CompilerOutline.m1743A(sb, str, "IDX_illegal_table__id ON \"illegal_table\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        CompilerOutline.m1743A(CompilerOutline.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"illegal_table\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public IllegalDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(Illegal illegal) {
        if (illegal != null) {
            return illegal.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(Illegal illegal) {
        return illegal.getId() != null;
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
    public final Long updateKeyAfterInsert(Illegal illegal, long j) {
        illegal.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, Illegal illegal) {
        databaseStatement.clearBindings();
        Long id = illegal.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String name = illegal.getName();
        if (name != null) {
            databaseStatement.bindString(2, name);
        }
        databaseStatement.bindLong(3, illegal.getEnable() ? 1L : 0L);
        databaseStatement.bindLong(4, illegal.getNotify_admin() ? 1L : 0L);
        databaseStatement.bindLong(5, illegal.getEliminate_data() ? 1L : 0L);
        databaseStatement.bindLong(6, illegal.getLock_workspace() ? 1L : 0L);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public Illegal readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        return new Illegal(lValueOf, cursor.isNull(i3) ? null : cursor.getString(i3), cursor.getShort(i + 2) != 0, cursor.getShort(i + 3) != 0, cursor.getShort(i + 4) != 0, cursor.getShort(i + 5) != 0);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, Illegal illegal, int i) {
        int i2 = i + 0;
        illegal.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        illegal.setName(cursor.isNull(i3) ? null : cursor.getString(i3));
        illegal.setEnable(cursor.getShort(i + 2) != 0);
        illegal.setNotify_admin(cursor.getShort(i + 3) != 0);
        illegal.setEliminate_data(cursor.getShort(i + 4) != 0);
        illegal.setLock_workspace(cursor.getShort(i + 5) != 0);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, Illegal illegal) {
        sQLiteStatement.clearBindings();
        Long id = illegal.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String name = illegal.getName();
        if (name != null) {
            sQLiteStatement.bindString(2, name);
        }
        sQLiteStatement.bindLong(3, illegal.getEnable() ? 1L : 0L);
        sQLiteStatement.bindLong(4, illegal.getNotify_admin() ? 1L : 0L);
        sQLiteStatement.bindLong(5, illegal.getEliminate_data() ? 1L : 0L);
        sQLiteStatement.bindLong(6, illegal.getLock_workspace() ? 1L : 0L);
    }
}
