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
public class ManageDeviceDao extends AbstractDao<ManageDevice, Long> {
    public static final String TABLENAME = "device_tactic_info";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f1889Id = new Property(0, Long.class, AgooConstants.MESSAGE_ID, true, "_id");
        public static final Property Command_camera = new Property(1, Boolean.TYPE, "command_camera", false, "COMMAND_CAMERA");
        public static final Property Command_bluetooth = new Property(2, Boolean.TYPE, "command_bluetooth", false, "COMMAND_BLUETOOTH");
        public static final Property Command_connect_usb = new Property(3, Boolean.TYPE, "command_connect_usb", false, "COMMAND_CONNECT_USB");
        public static final Property Command_recording = new Property(4, Boolean.TYPE, "command_recording", false, "COMMAND_RECORDING");
        public static final Property Command_wifi_switch = new Property(5, Boolean.TYPE, "command_wifi_switch", false, "COMMAND_WIFI_SWITCH");
    }

    public ManageDeviceDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public static void createTable(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"device_tactic_info\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"COMMAND_CAMERA\" INTEGER NOT NULL ,\"COMMAND_BLUETOOTH\" INTEGER NOT NULL ,\"COMMAND_CONNECT_USB\" INTEGER NOT NULL ,\"COMMAND_RECORDING\" INTEGER NOT NULL ,\"COMMAND_WIFI_SWITCH\" INTEGER NOT NULL );");
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE UNIQUE INDEX ");
        C0948f6.m1743A(sb, str, "IDX_device_tactic_info__id ON \"device_tactic_info\" (\"_id\" ASC);", database);
    }

    public static void dropTable(Database database, boolean z) {
        C0948f6.m1743A(C0948f6.m1765j("DROP TABLE "), z ? "IF EXISTS " : "", "\"device_tactic_info\"", database);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    public ManageDeviceDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(ManageDevice manageDevice) {
        if (manageDevice != null) {
            return manageDevice.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(ManageDevice manageDevice) {
        return manageDevice.getId() != null;
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
    public final Long updateKeyAfterInsert(ManageDevice manageDevice, long j) {
        manageDevice.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, ManageDevice manageDevice) {
        databaseStatement.clearBindings();
        Long id = manageDevice.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        databaseStatement.bindLong(2, manageDevice.getCommand_camera() ? 1L : 0L);
        databaseStatement.bindLong(3, manageDevice.getCommand_bluetooth() ? 1L : 0L);
        databaseStatement.bindLong(4, manageDevice.getCommand_connect_usb() ? 1L : 0L);
        databaseStatement.bindLong(5, manageDevice.getCommand_recording() ? 1L : 0L);
        databaseStatement.bindLong(6, manageDevice.getCommand_wifi_switch() ? 1L : 0L);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public ManageDevice readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        return new ManageDevice(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)), cursor.getShort(i + 1) != 0, cursor.getShort(i + 2) != 0, cursor.getShort(i + 3) != 0, cursor.getShort(i + 4) != 0, cursor.getShort(i + 5) != 0);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, ManageDevice manageDevice, int i) {
        int i2 = i + 0;
        manageDevice.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        manageDevice.setCommand_camera(cursor.getShort(i + 1) != 0);
        manageDevice.setCommand_bluetooth(cursor.getShort(i + 2) != 0);
        manageDevice.setCommand_connect_usb(cursor.getShort(i + 3) != 0);
        manageDevice.setCommand_recording(cursor.getShort(i + 4) != 0);
        manageDevice.setCommand_wifi_switch(cursor.getShort(i + 5) != 0);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, ManageDevice manageDevice) {
        sQLiteStatement.clearBindings();
        Long id = manageDevice.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, manageDevice.getCommand_camera() ? 1L : 0L);
        sQLiteStatement.bindLong(3, manageDevice.getCommand_bluetooth() ? 1L : 0L);
        sQLiteStatement.bindLong(4, manageDevice.getCommand_connect_usb() ? 1L : 0L);
        sQLiteStatement.bindLong(5, manageDevice.getCommand_recording() ? 1L : 0L);
        sQLiteStatement.bindLong(6, manageDevice.getCommand_wifi_switch() ? 1L : 0L);
    }
}
