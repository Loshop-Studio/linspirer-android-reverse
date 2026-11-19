package com.huawei.updatesdk.p048b.p052b;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;

/* renamed from: com.huawei.updatesdk.b.b.b */
/* loaded from: classes.dex */
public class C1613b {

    /* renamed from: a */
    public SharedPreferences f4682a;

    public C1613b(SharedPreferences sharedPreferences) {
        this.f4682a = sharedPreferences;
    }

    /* renamed from: a */
    public static C1613b m3678a(String str, Context context) {
        SharedPreferences sharedPreferences;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                context = context.createDeviceProtectedStorageContext();
            }
            sharedPreferences = context.getSharedPreferences(str, 0);
        } catch (Exception unused) {
            C1584a.m3516b("SharedPreferencesWrapper", "getSharedPreference error");
            sharedPreferences = null;
        }
        return new C1613b(sharedPreferences);
    }

    /* renamed from: a */
    public long m3679a(String str, long j) {
        try {
            return this.f4682a.getLong(str, j);
        } catch (Exception unused) {
            return j;
        }
    }

    /* renamed from: a */
    public String m3680a(String str, String str2) {
        try {
            return this.f4682a.getString(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    /* renamed from: a */
    public void m3681a(String str) {
        try {
            if (this.f4682a.contains(str)) {
                SharedPreferences.Editor editorEdit = this.f4682a.edit();
                editorEdit.remove(str);
                editorEdit.commit();
            }
        } catch (Exception unused) {
            C1584a.m3516b("SharedPreferencesWrapper", "remove error!!key:" + str);
        }
    }

    /* renamed from: b */
    public void m3682b(String str, long j) {
        try {
            SharedPreferences.Editor editorEdit = this.f4682a.edit();
            editorEdit.putLong(str, j);
            editorEdit.commit();
        } catch (Exception e) {
            C1584a.m3515a("SharedPreferencesWrapper", "putLong error!!key:" + str, e);
        }
    }

    /* renamed from: b */
    public void m3683b(String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = this.f4682a.edit();
            editorEdit.putString(str, str2);
            editorEdit.commit();
        } catch (Exception e) {
            C1584a.m3515a("SharedPreferencesWrapper", "putString error!!key:" + str, e);
        }
    }
}
