package com.huawei.hem;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: UserInfoDBHelper.java */
/* renamed from: com.huawei.hem.v3 */
/* loaded from: classes.dex */
public class C1347v3 extends SQLiteOpenHelper {
    public C1347v3(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE common_login_user_table (id INTEGER PRIMARY KEY,user_id VARCHAR(100),user_name VARCHAR(100),school_id VARCHAR(100),swdid VARCHAR(100));");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS common_login_user_table");
        sQLiteDatabase.execSQL("CREATE TABLE common_login_user_table (id INTEGER PRIMARY KEY,user_id VARCHAR(100),user_name VARCHAR(100),school_id VARCHAR(100),swdid VARCHAR(100));");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        try {
            if (i != 1) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS common_login_user_table");
                sQLiteDatabase.execSQL("CREATE TABLE common_login_user_table (id INTEGER PRIMARY KEY,user_id VARCHAR(100),user_name VARCHAR(100),school_id VARCHAR(100),swdid VARCHAR(100));");
            } else if (i2 != 2) {
            } else {
                sQLiteDatabase.execSQL("alter table common_login_user_table add column swdid text ");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
