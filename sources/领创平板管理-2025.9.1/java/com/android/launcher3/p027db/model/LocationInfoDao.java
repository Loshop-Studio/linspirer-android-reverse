package com.android.launcher3.p027db.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.app.NotificationCompat;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.huawei.hem.C0948f6;
import org.android.agoo.common.AgooConstants;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class LocationInfoDao extends AbstractDao<LocationInfo, Long> {
    public static final String TABLENAME = "locations_table";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1887Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property Email = new Property(1, String.class, NotificationCompat.CATEGORY_EMAIL, false, "EMAIL");
        public static final Property Username = new Property(2, String.class, "username", false, "USERNAME");
        public static final Property Lat = new Property(3, String.class, DispatchConstants.LATITUDE, false, "LAT");
        public static final Property Lng = new Property(4, String.class, DispatchConstants.LONGTITUDE, false, "LNG");
        public static final Property Address = new Property(5, String.class, "address", false, "ADDRESS");
        public static final Property Location_time = new Property(6, String.class, "location_time", false, "LOCATION_TIME");
    }

    public LocationInfoDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"locations_table\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"EMAIL\" TEXT,\"USERNAME\" TEXT,\"LAT\" TEXT,\"LNG\" TEXT,\"ADDRESS\" TEXT,\"LOCATION_TIME\" TEXT);");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        C0948f6.m1743A(sb, str, "IDX_locations_table__id ON \"locations_table\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        C0948f6.m1743A(C0948f6.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"locations_table\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public LocationInfoDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(LocationInfo locationInfo) {
        if (locationInfo != null) {
            return locationInfo.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(LocationInfo locationInfo) {
        return locationInfo.getId() != null;
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
    public final Long updateKeyAfterInsert(LocationInfo locationInfo, long j) {
        locationInfo.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, LocationInfo locationInfo) {
        databaseStatement.clearBindings();
        Long id = locationInfo.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String email = locationInfo.getEmail();
        if (email != null) {
            databaseStatement.bindString(2, email);
        }
        String username = locationInfo.getUsername();
        if (username != null) {
            databaseStatement.bindString(3, username);
        }
        String lat = locationInfo.getLat();
        if (lat != null) {
            databaseStatement.bindString(4, lat);
        }
        String lng = locationInfo.getLng();
        if (lng != null) {
            databaseStatement.bindString(5, lng);
        }
        String address = locationInfo.getAddress();
        if (address != null) {
            databaseStatement.bindString(6, address);
        }
        String location_time = locationInfo.getLocation_time();
        if (location_time != null) {
            databaseStatement.bindString(7, location_time);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public LocationInfo readEntity(Cursor cursor, int i) {
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
        int i8 = i + 6;
        return new LocationInfo(lValueOf, string, string2, string3, string4, cursor.isNull(i7) ? null : cursor.getString(i7), cursor.isNull(i8) ? null : cursor.getString(i8));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, LocationInfo locationInfo, int i) {
        int i2 = i + 0;
        locationInfo.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        locationInfo.setEmail(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        locationInfo.setUsername(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        locationInfo.setLat(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        locationInfo.setLng(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 5;
        locationInfo.setAddress(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 6;
        locationInfo.setLocation_time(cursor.isNull(i8) ? null : cursor.getString(i8));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, LocationInfo locationInfo) {
        sQLiteStatement.clearBindings();
        Long id = locationInfo.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String email = locationInfo.getEmail();
        if (email != null) {
            sQLiteStatement.bindString(2, email);
        }
        String username = locationInfo.getUsername();
        if (username != null) {
            sQLiteStatement.bindString(3, username);
        }
        String lat = locationInfo.getLat();
        if (lat != null) {
            sQLiteStatement.bindString(4, lat);
        }
        String lng = locationInfo.getLng();
        if (lng != null) {
            sQLiteStatement.bindString(5, lng);
        }
        String address = locationInfo.getAddress();
        if (address != null) {
            sQLiteStatement.bindString(6, address);
        }
        String location_time = locationInfo.getLocation_time();
        if (location_time != null) {
            sQLiteStatement.bindString(7, location_time);
        }
    }
}
