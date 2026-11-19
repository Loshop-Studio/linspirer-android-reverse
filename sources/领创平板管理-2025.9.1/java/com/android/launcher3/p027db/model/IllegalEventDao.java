package com.android.launcher3.p027db.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.app.NotificationCompat;
import com.huawei.hem.C0948f6;
import org.android.agoo.common.AgooConstants;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class IllegalEventDao extends AbstractDao<IllegalEvent, Long> {
    public static final String TABLENAME = "illegals_event_table";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1883Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property Event = new Property(1, String.class, "event", false, "EVENT");
        public static final Property Email = new Property(2, String.class, NotificationCompat.CATEGORY_EMAIL, false, "EMAIL");
        public static final Property Notify = new Property(3, Integer.TYPE, AgooConstants.MESSAGE_NOTIFICATION, false, "NOTIFY");
        public static final Property Lock = new Property(4, Integer.TYPE, "lock", false, "LOCK");
        public static final Property Reset = new Property(5, Integer.TYPE, "reset", false, "RESET");
        public static final Property Description = new Property(6, String.class, "description", false, "DESCRIPTION");
        public static final Property Clienttime = new Property(7, String.class, "clienttime", false, "CLIENTTIME");
    }

    public IllegalEventDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"illegals_event_table\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"EVENT\" TEXT,\"EMAIL\" TEXT,\"NOTIFY\" INTEGER NOT NULL ,\"LOCK\" INTEGER NOT NULL ,\"RESET\" INTEGER NOT NULL ,\"DESCRIPTION\" TEXT,\"CLIENTTIME\" TEXT);");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        C0948f6.m1743A(sb, str, "IDX_illegals_event_table__id ON \"illegals_event_table\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        C0948f6.m1743A(C0948f6.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"illegals_event_table\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public IllegalEventDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(IllegalEvent illegalEvent) {
        if (illegalEvent != null) {
            return illegalEvent.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(IllegalEvent illegalEvent) {
        return illegalEvent.getId() != null;
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
    public final Long updateKeyAfterInsert(IllegalEvent illegalEvent, long j) {
        illegalEvent.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, IllegalEvent illegalEvent) {
        databaseStatement.clearBindings();
        Long id = illegalEvent.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String event = illegalEvent.getEvent();
        if (event != null) {
            databaseStatement.bindString(2, event);
        }
        String email = illegalEvent.getEmail();
        if (email != null) {
            databaseStatement.bindString(3, email);
        }
        databaseStatement.bindLong(4, illegalEvent.getNotify());
        databaseStatement.bindLong(5, illegalEvent.getLock());
        databaseStatement.bindLong(6, illegalEvent.getReset());
        String description = illegalEvent.getDescription();
        if (description != null) {
            databaseStatement.bindString(7, description);
        }
        String clienttime = illegalEvent.getClienttime();
        if (clienttime != null) {
            databaseStatement.bindString(8, clienttime);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public IllegalEvent readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 2;
        String string2 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = cursor.getInt(i + 3);
        int i6 = cursor.getInt(i + 4);
        int i7 = cursor.getInt(i + 5);
        int i8 = i + 6;
        int i9 = i + 7;
        return new IllegalEvent(lValueOf, string, string2, i5, i6, i7, cursor.isNull(i8) ? null : cursor.getString(i8), cursor.isNull(i9) ? null : cursor.getString(i9));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, IllegalEvent illegalEvent, int i) {
        int i2 = i + 0;
        illegalEvent.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        illegalEvent.setEvent(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        illegalEvent.setEmail(cursor.isNull(i4) ? null : cursor.getString(i4));
        illegalEvent.setNotify(cursor.getInt(i + 3));
        illegalEvent.setLock(cursor.getInt(i + 4));
        illegalEvent.setReset(cursor.getInt(i + 5));
        int i5 = i + 6;
        illegalEvent.setDescription(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 7;
        illegalEvent.setClienttime(cursor.isNull(i6) ? null : cursor.getString(i6));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, IllegalEvent illegalEvent) {
        sQLiteStatement.clearBindings();
        Long id = illegalEvent.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String event = illegalEvent.getEvent();
        if (event != null) {
            sQLiteStatement.bindString(2, event);
        }
        String email = illegalEvent.getEmail();
        if (email != null) {
            sQLiteStatement.bindString(3, email);
        }
        sQLiteStatement.bindLong(4, illegalEvent.getNotify());
        sQLiteStatement.bindLong(5, illegalEvent.getLock());
        sQLiteStatement.bindLong(6, illegalEvent.getReset());
        String description = illegalEvent.getDescription();
        if (description != null) {
            sQLiteStatement.bindString(7, description);
        }
        String clienttime = illegalEvent.getClienttime();
        if (clienttime != null) {
            sQLiteStatement.bindString(8, clienttime);
        }
    }
}
