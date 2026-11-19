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
public class UserEventDao extends AbstractDao<UserEvent, Long> {
    public static final String TABLENAME = "user_events_table";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1895Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property EventName = new Property(1, String.class, "eventName", false, "EVENT_NAME");
        public static final Property EventTime = new Property(2, String.class, "eventTime", false, "EVENT_TIME");
        public static final Property EventResult = new Property(3, String.class, "eventResult", false, "EVENT_RESULT");
        public static final Property IsIllegal = new Property(4, Integer.TYPE, "isIllegal", false, "IS_ILLEGAL");
        public static final Property UserName = new Property(5, String.class, "userName", false, "USER_NAME");
        public static final Property Description = new Property(6, String.class, "description", false, "DESCRIPTION");
    }

    public UserEventDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"user_events_table\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"EVENT_NAME\" TEXT,\"EVENT_TIME\" TEXT,\"EVENT_RESULT\" TEXT,\"IS_ILLEGAL\" INTEGER NOT NULL ,\"USER_NAME\" TEXT,\"DESCRIPTION\" TEXT);");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        CompilerOutline.m1743A(sb, str, "IDX_user_events_table__id ON \"user_events_table\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        CompilerOutline.m1743A(CompilerOutline.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"user_events_table\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public UserEventDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(UserEvent userEvent) {
        if (userEvent != null) {
            return userEvent.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(UserEvent userEvent) {
        return userEvent.getId() != null;
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
    public final Long updateKeyAfterInsert(UserEvent userEvent, long j) {
        userEvent.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, UserEvent userEvent) {
        databaseStatement.clearBindings();
        Long id = userEvent.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String eventName = userEvent.getEventName();
        if (eventName != null) {
            databaseStatement.bindString(2, eventName);
        }
        String eventTime = userEvent.getEventTime();
        if (eventTime != null) {
            databaseStatement.bindString(3, eventTime);
        }
        String eventResult = userEvent.getEventResult();
        if (eventResult != null) {
            databaseStatement.bindString(4, eventResult);
        }
        databaseStatement.bindLong(5, userEvent.getIsIllegal());
        String userName = userEvent.getUserName();
        if (userName != null) {
            databaseStatement.bindString(6, userName);
        }
        String description = userEvent.getDescription();
        if (description != null) {
            databaseStatement.bindString(7, description);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public UserEvent readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 2;
        String string2 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 3;
        String string3 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = cursor.getInt(i + 4);
        int i7 = i + 5;
        int i8 = i + 6;
        return new UserEvent(lValueOf, string, string2, string3, i6, cursor.isNull(i7) ? null : cursor.getString(i7), cursor.isNull(i8) ? null : cursor.getString(i8));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, UserEvent userEvent, int i) {
        int i2 = i + 0;
        userEvent.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        userEvent.setEventName(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        userEvent.setEventTime(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        userEvent.setEventResult(cursor.isNull(i5) ? null : cursor.getString(i5));
        userEvent.setIsIllegal(cursor.getInt(i + 4));
        int i6 = i + 5;
        userEvent.setUserName(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 6;
        userEvent.setDescription(cursor.isNull(i7) ? null : cursor.getString(i7));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, UserEvent userEvent) {
        sQLiteStatement.clearBindings();
        Long id = userEvent.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String eventName = userEvent.getEventName();
        if (eventName != null) {
            sQLiteStatement.bindString(2, eventName);
        }
        String eventTime = userEvent.getEventTime();
        if (eventTime != null) {
            sQLiteStatement.bindString(3, eventTime);
        }
        String eventResult = userEvent.getEventResult();
        if (eventResult != null) {
            sQLiteStatement.bindString(4, eventResult);
        }
        sQLiteStatement.bindLong(5, userEvent.getIsIllegal());
        String userName = userEvent.getUserName();
        if (userName != null) {
            sQLiteStatement.bindString(6, userName);
        }
        String description = userEvent.getDescription();
        if (description != null) {
            sQLiteStatement.bindString(7, description);
        }
    }
}
