package com.huawei.hms.p032ui;

import android.os.Bundle;
import com.huawei.hem.C0948f6;
import com.huawei.hms.base.p031ui.C1529a;

/* loaded from: classes.dex */
public class SafeBundle {

    /* renamed from: a */
    public final Bundle f4579a;

    public SafeBundle() {
        this(new Bundle());
    }

    public boolean containsKey(String str) {
        try {
            return this.f4579a.containsKey(str);
        } catch (Exception unused) {
            C1529a.m3379a("SafeBundle", "containsKey exception. key:");
            return false;
        }
    }

    public Object get(String str) {
        try {
            return this.f4579a.get(str);
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("get exception: ");
            sbM1765j.append(e.getMessage());
            C1529a.m3380a("SafeBundle", sbM1765j.toString(), true);
            return null;
        }
    }

    public Bundle getBundle() {
        return this.f4579a;
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public String getString(String str) {
        try {
            return this.f4579a.getString(str);
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("getString exception: ");
            sbM1765j.append(e.getMessage());
            C1529a.m3380a("SafeBundle", sbM1765j.toString(), true);
            return "";
        }
    }

    public boolean isEmpty() {
        try {
            return this.f4579a.isEmpty();
        } catch (Exception unused) {
            C1529a.m3379a("SafeBundle", "isEmpty exception");
            return true;
        }
    }

    public int size() {
        try {
            return this.f4579a.size();
        } catch (Exception unused) {
            C1529a.m3379a("SafeBundle", "size exception");
            return 0;
        }
    }

    public String toString() {
        return this.f4579a.toString();
    }

    public SafeBundle(Bundle bundle) {
        this.f4579a = bundle == null ? new Bundle() : bundle;
    }

    public int getInt(String str, int i) {
        try {
            return this.f4579a.getInt(str, i);
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("getInt exception: ");
            sbM1765j.append(e.getMessage());
            C1529a.m3380a("SafeBundle", sbM1765j.toString(), true);
            return i;
        }
    }

    public String getString(String str, String str2) {
        try {
            return this.f4579a.getString(str, str2);
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("getString exception: ");
            sbM1765j.append(e.getMessage());
            C1529a.m3380a("SafeBundle", sbM1765j.toString(), true);
            return str2;
        }
    }
}
