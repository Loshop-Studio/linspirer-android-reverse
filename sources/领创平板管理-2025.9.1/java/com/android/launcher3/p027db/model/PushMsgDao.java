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
public class PushMsgDao extends AbstractDao<PushMsg, Long> {
    public static final String TABLENAME = "app_push_table";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1891Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property Type = new Property(1, Integer.TYPE, "type", false, "TYPE");
        public static final Property Command = new Property(2, String.class, "command", false, "COMMAND");
        public static final Property Active = new Property(3, String.class, "active", false, "ACTIVE");
        public static final Property Sendtime = new Property(4, Long.TYPE, "sendtime", false, "SENDTIME");
        public static final Property UserId = new Property(5, String.class, "userId", false, "USER_ID");
    }

    public PushMsgDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"app_push_table\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"TYPE\" INTEGER NOT NULL ,\"COMMAND\" TEXT,\"ACTIVE\" TEXT,\"SENDTIME\" INTEGER NOT NULL ,\"USER_ID\" TEXT);");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        CompilerOutline.m1743A(sb, str, "IDX_app_push_table__id ON \"app_push_table\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        CompilerOutline.m1743A(CompilerOutline.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"app_push_table\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public PushMsgDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(PushMsg pushMsg) {
        if (pushMsg != null) {
            return pushMsg.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(PushMsg pushMsg) {
        return pushMsg.getId() != null;
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
    public final Long updateKeyAfterInsert(PushMsg pushMsg, long j) {
        pushMsg.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, PushMsg pushMsg) {
        databaseStatement.clearBindings();
        Long id = pushMsg.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        databaseStatement.bindLong(2, pushMsg.getType());
        String command = pushMsg.getCommand();
        if (command != null) {
            databaseStatement.bindString(3, command);
        }
        String active = pushMsg.getActive();
        if (active != null) {
            databaseStatement.bindString(4, active);
        }
        databaseStatement.bindLong(5, pushMsg.getSendtime());
        String userId = pushMsg.getUserId();
        if (userId != null) {
            databaseStatement.bindString(6, userId);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public PushMsg readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = cursor.getInt(i + 1);
        int i4 = i + 2;
        String string = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 3;
        String string2 = cursor.isNull(i5) ? null : cursor.getString(i5);
        long j = cursor.getLong(i + 4);
        int i6 = i + 5;
        return new PushMsg(lValueOf, i3, string, string2, j, cursor.isNull(i6) ? null : cursor.getString(i6));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, PushMsg pushMsg, int i) {
        int i2 = i + 0;
        pushMsg.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        pushMsg.setType(cursor.getInt(i + 1));
        int i3 = i + 2;
        pushMsg.setCommand(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 3;
        pushMsg.setActive(cursor.isNull(i4) ? null : cursor.getString(i4));
        pushMsg.setSendtime(cursor.getLong(i + 4));
        int i5 = i + 5;
        pushMsg.setUserId(cursor.isNull(i5) ? null : cursor.getString(i5));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, PushMsg pushMsg) {
        sQLiteStatement.clearBindings();
        Long id = pushMsg.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, pushMsg.getType());
        String command = pushMsg.getCommand();
        if (command != null) {
            sQLiteStatement.bindString(3, command);
        }
        String active = pushMsg.getActive();
        if (active != null) {
            sQLiteStatement.bindString(4, active);
        }
        sQLiteStatement.bindLong(5, pushMsg.getSendtime());
        String userId = pushMsg.getUserId();
        if (userId != null) {
            sQLiteStatement.bindString(6, userId);
        }
    }
}
