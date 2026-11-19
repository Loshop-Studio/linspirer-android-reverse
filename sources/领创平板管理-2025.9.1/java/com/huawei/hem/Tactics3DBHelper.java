package com.huawei.hem;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.android.launcher3.p027db.model.AppTimeLimitInfoDao;
import com.android.launcher3.p027db.model.DaoMaster;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.android.launcher3.p027db.model.IllegalDao;
import com.android.launcher3.p027db.model.IllegalEventDao;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.android.launcher3.p027db.model.LocationInfoDao;
import com.android.launcher3.p027db.model.ManageDeviceDao;
import com.android.launcher3.p027db.model.PushMsgDao;
import com.android.launcher3.p027db.model.ScreenPartSettingsDao;
import com.android.launcher3.p027db.model.UserEventDao;
import com.android.launcher3.p027db.model.WeekTacticsDao;
import org.greenrobot.greendao.database.Database;

/* compiled from: Tactics3DBHelper.java */
/* renamed from: com.huawei.hem.u3 */
/* loaded from: classes.dex */
public class Tactics3DBHelper extends DaoMaster.DevOpenHelper {

    /* renamed from: a */
    public boolean f3839a;

    public Tactics3DBHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
        super(context, str, null);
        this.f3839a = false;
    }

    /* renamed from: a */
    public final void m2779a(Database database) {
        try {
            IllegalDao.createTable(database, true);
            IllegalEventDao.createTable(database, true);
            LocationInfoDao.createTable(database, true);
            UserEventDao.createTable(database, true);
            WeekTacticsDao.createTable(database, true);
            GesturePasswordDao.createTable(database, true);
            AppTimeLimitInfoDao.createTable(database, true);
            ItemAppDao.createTable(database, true);
            ManageDeviceDao.createTable(database, true);
            PushMsgDao.createTable(database, true);
            ScreenPartSettingsDao.createTable(database, true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public final boolean m2780c(Database database, String str, String str2) {
        Cursor cursorRawQuery = null;
        boolean z = false;
        try {
            try {
                cursorRawQuery = database.rawQuery("SELECT * FROM " + str2 + " LIMIT 0", null);
                if (cursorRawQuery != null) {
                    if (cursorRawQuery.getColumnIndex(str) != -1) {
                        z = true;
                    }
                }
            } catch (Exception e) {
                LTKDateUtil.m1403m("Tactics3DBHelper isExsit column is exception " + e.getMessage());
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                }
            }
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            return z;
        } catch (Throwable th) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* renamed from: d */
    public final boolean m2781d(Database database, String str) {
        try {
            database.execSQL("SELECT * FROM " + str);
            LTKDateUtil.m1403m("Tactics3DBHelper   table is exsit" + str);
            return true;
        } catch (Exception unused) {
            CompilerOutline.m1779x("Tactics3DBHelper   table is not  exsit", str);
            return false;
        }
    }

    @Override // com.android.launcher3.db.model.DaoMaster.OpenHelper, org.greenrobot.greendao.database.DatabaseOpenHelper
    public void onCreate(Database database) {
        super.onCreate(database);
        m2779a(database);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        sQLiteDatabase.execSQL("drop table if exists illegal_table");
        sQLiteDatabase.execSQL("drop table if exists illegals_event_table");
        sQLiteDatabase.execSQL("drop table if exists locations_table");
        sQLiteDatabase.execSQL("drop table if exists user_events_table");
        sQLiteDatabase.execSQL("drop table if exists worktime_table");
        sQLiteDatabase.execSQL("drop table if exists gestrue_password_table");
        sQLiteDatabase.execSQL("drop table if exists app_time_limit");
        sQLiteDatabase.execSQL("drop table if exists app_tactics_table");
        sQLiteDatabase.execSQL("drop table if exists device_tactic_info");
        sQLiteDatabase.execSQL("drop table if exists app_push_table");
        sQLiteDatabase.execSQL("drop table if exists screen_setting_info");
    }

    @Override // com.android.launcher3.db.model.DaoMaster.DevOpenHelper, org.greenrobot.greendao.database.DatabaseOpenHelper
    public void onUpgrade(Database database, int i, int i2) {
        LTKDateUtil.m1403m("Tactics3DBHelper db onUpgrade ");
        try {
            if (i < 5) {
                LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................original way to update database .");
                m2779a(database);
                return;
            }
            while (i < i2) {
                i++;
                switch (i) {
                    case 6:
                        database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.Status.columnName + " integer default(0) ");
                        LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................AppTactics add status keyword");
                        break;
                    case 7:
                        database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.Exception_white_url.columnName + " integer default(0) ");
                        LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................AppTactics add exception_white_url keyword");
                        break;
                    case 8:
                        database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.IsForceApps.columnName + " integer default(0) ");
                        LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................AppTactics add isforce keyword");
                        break;
                    case 9:
                        database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.IsTrust.columnName + " integer default(0) ");
                        LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................AppTactics add is_trust keyword");
                        break;
                    case 11:
                        database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.Hide_icon_status.columnName + " integer default(0) ");
                        if (!m2780c(database, ItemAppDao.Properties.IsTrust.columnName, ItemAppDao.TABLENAME)) {
                            LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................AppTactics no is_trust");
                            database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.IsTrust.columnName + " integer default(0) ");
                        }
                        LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................AppTactics add icon hide status keyword");
                        break;
                    case 12:
                        database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.Sha1.columnName + " text ");
                        this.f3839a = true;
                        LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................AppTactics add hash keyword");
                        break;
                    case 13:
                    case 14:
                        if (!this.f3839a && !m2780c(database, ItemAppDao.Properties.Sha1.columnName, ItemAppDao.TABLENAME)) {
                            LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade...14.....................AppTactics no hash and add this .");
                            database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.Sha1.columnName + " text ");
                            this.f3839a = true;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (!m2781d(database, ManageDeviceDao.TABLENAME)) {
                            break;
                        } else {
                            database.execSQL("alter table device_tactic_info add column " + ManageDeviceDao.Properties.Command_recording.columnName + " boolean  ");
                            database.execSQL("alter table device_tactic_info add column " + ManageDeviceDao.Properties.Command_wifi_switch.columnName + " boolean ");
                            LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................ManageDeviceDao add Command_recording Command_wifi_switch  keyword");
                            break;
                        }
                    case 17:
                        database.execSQL("alter table app_tactics_table add column " + ItemAppDao.Properties.Sort_weight.columnName + " text ");
                        LTKDateUtil.m1403m("Tactics3DBHelper onUpgrade........................app_tactics_table add sort_weight ");
                        break;
                }
            }
            m2779a(database);
        } catch (Exception e) {
            e.printStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append("Tactics3DBHelper onUpgrade:");
            CompilerOutline.m1776u(e, sb);
        }
    }
}
