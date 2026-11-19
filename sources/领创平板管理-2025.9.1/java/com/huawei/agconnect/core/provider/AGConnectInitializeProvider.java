package com.huawei.agconnect.core.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.huawei.hem.AgConnectServiceDiscovery;
import com.huawei.hem.AgConnectInstanceProvider;

/* loaded from: classes.dex */
public class AGConnectInitializeProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Log.i("AGConnectProvider", "AGConnectInitializeProvider#onCreate");
        Context context = getContext();
        synchronized (AgConnectServiceDiscovery.class) {
            Log.i("AGConnectInstance", "AGConnectInstance#initialize");
            AgConnectInstanceProvider.m2786a(context);
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (AgConnectServiceDiscovery.f2515a == null) {
                AgConnectServiceDiscovery.f2515a = new AgConnectServiceDiscovery(context);
            }
        }
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
