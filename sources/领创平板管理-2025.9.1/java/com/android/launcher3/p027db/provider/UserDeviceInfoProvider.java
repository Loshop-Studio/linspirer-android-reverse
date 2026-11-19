package com.android.launcher3.p027db.provider;

// RE note 本类字节码直接引用的读写或显示接口包括SQLite。

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.provider.BaseColumns;
import com.huawei.hem.UserInfoDBHelper;
import java.util.HashMap;
import org.android.agoo.common.AgooConstants;

/* loaded from: classes.dex */
public class UserDeviceInfoProvider extends ContentProvider {

    /* renamed from: b */
    public static HashMap<String, String> f1898b;

    /* renamed from: c */
    public static final UriMatcher f1899c;

    /* renamed from: d */
    public static final Uri f1900d = Uri.parse("content://com.drupe.swd.launcher.huoshan.mdm.provider.CommonLoginContentProvider/users");

    /* renamed from: a */
    public UserInfoDBHelper f1901a;

    /* renamed from: com.android.launcher3.db.provider.UserDeviceInfoProvider$a */
    public static final class C0650a implements BaseColumns {

        /* renamed from: a */
        public static final Uri f1902a = Uri.parse("content://com.drupe.swd.launcher.huoshan.mdm.provider.CommonLoginContentProvider/users");
    }

    static {
        HashMap<String, String> map = new HashMap<>();
        f1898b = map;
        map.put(AgooConstants.MESSAGE_ID, AgooConstants.MESSAGE_ID);
        f1898b.put("user_id", "user_id");
        f1898b.put("user_name", "user_name");
        f1898b.put("school_id", "school_id");
        f1898b.put("swdid", "swdid");
        UriMatcher uriMatcher = new UriMatcher(-1);
        f1899c = uriMatcher;
        uriMatcher.addURI("com.drupe.swd.launcher.huoshan.mdm.provider.CommonLoginContentProvider", "users", 1);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        SQLiteDatabase writableDatabase = this.f1901a.getWritableDatabase();
        if (f1899c.match(uri) == 1) {
            int iDelete = writableDatabase.delete("common_login_user_table", str, strArr);
            getContext().getContentResolver().notifyChange(uri, null);
            return iDelete;
        }
        throw new IllegalArgumentException("Unknow URI :" + uri);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (f1899c.match(uri) != 1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        long jInsert = this.f1901a.getWritableDatabase().insert("common_login_user_table", null, contentValues);
        if (jInsert <= 0) {
            return null;
        }
        Uri uriWithAppendedId = ContentUris.withAppendedId(C0650a.f1902a, jInsert);
        getContext().getContentResolver().notifyChange(uri, null);
        return uriWithAppendedId;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f1901a = new UserInfoDBHelper(getContext(), "common_login_user.db", 2);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteDatabase readableDatabase = this.f1901a.getReadableDatabase();
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        if (f1899c.match(uri) == 1) {
            sQLiteQueryBuilder.setTables("common_login_user_table");
            sQLiteQueryBuilder.setProjectionMap(f1898b);
            return sQLiteQueryBuilder.query(readableDatabase, strArr, str, strArr2, null, null, str2);
        }
        throw new IllegalArgumentException("Unknow URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        SQLiteDatabase writableDatabase = this.f1901a.getWritableDatabase();
        if (f1899c.match(uri) == 1) {
            int iUpdate = writableDatabase.update("common_login_user_table", contentValues, str, strArr);
            getContext().getContentResolver().notifyChange(uri, null);
            return iUpdate;
        }
        throw new IllegalArgumentException("Unknow URI :" + uri);
    }
}
