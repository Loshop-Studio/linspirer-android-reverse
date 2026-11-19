package com.huawei.updatesdk.p034a.p043b.p045b;

import android.content.Intent;
import android.os.Bundle;
import com.huawei.updatesdk.p034a.p035a.C1581a;

/* renamed from: com.huawei.updatesdk.a.b.b.b */
/* loaded from: classes.dex */
public final class C1600b {

    /* renamed from: a */
    public Intent f4646a;

    public C1600b(Intent intent) {
        this.f4646a = intent;
    }

    /* renamed from: a */
    public static C1600b m3595a(Intent intent) {
        return new C1600b(intent);
    }

    /* renamed from: a */
    public int m3596a(String str, int i) {
        if (m3603d()) {
            try {
                return this.f4646a.getIntExtra(str, i);
            } catch (Exception unused) {
                C1581a.m3500a("SecureIntent", "getIntExtra exception!");
            }
        }
        return i;
    }

    /* renamed from: a */
    public String m3597a() {
        String action;
        return (!m3603d() || (action = this.f4646a.getAction()) == null) ? "" : action;
    }

    /* renamed from: a */
    public String m3598a(String str) {
        if (!m3603d()) {
            return "";
        }
        try {
            return this.f4646a.getStringExtra(str);
        } catch (Exception unused) {
            C1581a.m3500a("SecureIntent", "getStringExtra exception!");
            return "";
        }
    }

    /* renamed from: a */
    public boolean m3599a(String str, boolean z) {
        if (m3603d()) {
            try {
                return this.f4646a.getBooleanExtra(str, z);
            } catch (Exception unused) {
                C1581a.m3500a("SecureIntent", "getBooleanExtra exception!");
            }
        }
        return z;
    }

    /* renamed from: b */
    public long m3600b(String str, int i) {
        if (m3603d()) {
            try {
                return this.f4646a.getLongExtra(str, i);
            } catch (Exception unused) {
                C1581a.m3500a("SecureIntent", "getIntExtra exception!");
            }
        }
        return i;
    }

    /* renamed from: b */
    public Bundle m3601b() {
        if (m3603d()) {
            return this.f4646a.getExtras();
        }
        return null;
    }

    /* renamed from: c */
    public Intent m3602c() {
        return this.f4646a;
    }

    /* renamed from: d */
    public boolean m3603d() {
        return this.f4646a != null;
    }
}
