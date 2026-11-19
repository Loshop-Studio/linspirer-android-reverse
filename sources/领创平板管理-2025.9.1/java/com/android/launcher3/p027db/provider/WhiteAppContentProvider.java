package com.android.launcher3.p027db.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C1297t3;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.HashMap;
import org.android.agoo.common.AgooConstants;

/* loaded from: classes.dex */
public class WhiteAppContentProvider extends ContentProvider {

    /* renamed from: b */
    public static UriMatcher f1903b;

    /* renamed from: c */
    public static HashMap<String, String> f1904c;

    /* renamed from: a */
    public SQLiteDatabase f1905a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f1903b = uriMatcher;
        uriMatcher.addURI("com.drupe.swd.launcher.huoshan.mdm.provider.MdmContentProvider", "packagenames", 1);
        HashMap<String, String> map = new HashMap<>();
        f1904c = map;
        map.put(AgooConstants.MESSAGE_ID, AgooConstants.MESSAGE_ID);
        f1904c.put(HiAnalyticsConstant.BI_KEY_APP_ID, HiAnalyticsConstant.BI_KEY_APP_ID);
        f1904c.put("name", "name");
        f1904c.put("is_white_app", "is_white_app");
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        C1297t3.f3748d = getContext();
        this.f1905a = C1297t3.b.f3752a.f3749a.getReadableDatabase();
        return false;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        if (f1903b.match(uri) == 1) {
            C0850bc.m1403m("query app ids from table");
            sQLiteQueryBuilder.setTables(ItemAppDao.TABLENAME);
            sQLiteQueryBuilder.setProjectionMap(f1904c);
        }
        return sQLiteQueryBuilder.query(this.f1905a, strArr, str, strArr2, null, null, str2);
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
