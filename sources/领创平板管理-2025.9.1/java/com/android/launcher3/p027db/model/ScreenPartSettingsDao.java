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
public class ScreenPartSettingsDao extends AbstractDao<ScreenPartSettings, Long> {
    public static final String TABLENAME = "screen_setting_info";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1893Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property Position = new Property(1, Integer.TYPE, "position", false, "POSITION");
        public static final Property Title = new Property(2, String.class, "title", false, "TITLE");
        public static final Property Type = new Property(3, Integer.TYPE, "type", false, "TYPE");
        public static final Property Url = new Property(4, String.class, AgooConstants.OPEN_URL, false, "URL");
        public static final Property Component = new Property(5, String.class, "component", false, "COMPONENT");
        public static final Property Package_name = new Property(6, String.class, "package_name", false, "PACKAGE_NAME");
        public static final Property B_img_path = new Property(7, String.class, "b_img_path", false, "B_IMG_PATH");
        public static final Property Description = new Property(8, String.class, "description", false, "DESCRIPTION");
    }

    public ScreenPartSettingsDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"screen_setting_info\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"POSITION\" INTEGER NOT NULL ,\"TITLE\" TEXT,\"TYPE\" INTEGER NOT NULL ,\"URL\" TEXT,\"COMPONENT\" TEXT,\"PACKAGE_NAME\" TEXT,\"B_IMG_PATH\" TEXT,\"DESCRIPTION\" TEXT);");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        C0948f6.m1743A(sb, str, "IDX_screen_setting_info__id ON \"screen_setting_info\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        C0948f6.m1743A(C0948f6.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"screen_setting_info\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public ScreenPartSettingsDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(ScreenPartSettings screenPartSettings) {
        if (screenPartSettings != null) {
            return screenPartSettings.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(ScreenPartSettings screenPartSettings) {
        return screenPartSettings.getId() != null;
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
    public final Long updateKeyAfterInsert(ScreenPartSettings screenPartSettings, long j) {
        screenPartSettings.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, ScreenPartSettings screenPartSettings) {
        databaseStatement.clearBindings();
        Long id = screenPartSettings.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        databaseStatement.bindLong(2, screenPartSettings.getPosition());
        String title = screenPartSettings.getTitle();
        if (title != null) {
            databaseStatement.bindString(3, title);
        }
        databaseStatement.bindLong(4, screenPartSettings.getType());
        String url = screenPartSettings.getUrl();
        if (url != null) {
            databaseStatement.bindString(5, url);
        }
        String component = screenPartSettings.getComponent();
        if (component != null) {
            databaseStatement.bindString(6, component);
        }
        String package_name = screenPartSettings.getPackage_name();
        if (package_name != null) {
            databaseStatement.bindString(7, package_name);
        }
        String b_img_path = screenPartSettings.getB_img_path();
        if (b_img_path != null) {
            databaseStatement.bindString(8, b_img_path);
        }
        String description = screenPartSettings.getDescription();
        if (description != null) {
            databaseStatement.bindString(9, description);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public ScreenPartSettings readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = cursor.getInt(i + 1);
        int i4 = i + 2;
        String string = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = cursor.getInt(i + 3);
        int i6 = i + 4;
        String string2 = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = i + 5;
        String string3 = cursor.isNull(i7) ? null : cursor.getString(i7);
        int i8 = i + 6;
        String string4 = cursor.isNull(i8) ? null : cursor.getString(i8);
        int i9 = i + 7;
        int i10 = i + 8;
        return new ScreenPartSettings(lValueOf, i3, string, i5, string2, string3, string4, cursor.isNull(i9) ? null : cursor.getString(i9), cursor.isNull(i10) ? null : cursor.getString(i10));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, ScreenPartSettings screenPartSettings, int i) {
        int i2 = i + 0;
        screenPartSettings.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        screenPartSettings.setPosition(cursor.getInt(i + 1));
        int i3 = i + 2;
        screenPartSettings.setTitle(cursor.isNull(i3) ? null : cursor.getString(i3));
        screenPartSettings.setType(cursor.getInt(i + 3));
        int i4 = i + 4;
        screenPartSettings.setUrl(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 5;
        screenPartSettings.setComponent(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 6;
        screenPartSettings.setPackage_name(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 7;
        screenPartSettings.setB_img_path(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 8;
        screenPartSettings.setDescription(cursor.isNull(i8) ? null : cursor.getString(i8));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, ScreenPartSettings screenPartSettings) {
        sQLiteStatement.clearBindings();
        Long id = screenPartSettings.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, screenPartSettings.getPosition());
        String title = screenPartSettings.getTitle();
        if (title != null) {
            sQLiteStatement.bindString(3, title);
        }
        sQLiteStatement.bindLong(4, screenPartSettings.getType());
        String url = screenPartSettings.getUrl();
        if (url != null) {
            sQLiteStatement.bindString(5, url);
        }
        String component = screenPartSettings.getComponent();
        if (component != null) {
            sQLiteStatement.bindString(6, component);
        }
        String package_name = screenPartSettings.getPackage_name();
        if (package_name != null) {
            sQLiteStatement.bindString(7, package_name);
        }
        String b_img_path = screenPartSettings.getB_img_path();
        if (b_img_path != null) {
            sQLiteStatement.bindString(8, b_img_path);
        }
        String description = screenPartSettings.getDescription();
        if (description != null) {
            sQLiteStatement.bindString(9, description);
        }
    }
}
