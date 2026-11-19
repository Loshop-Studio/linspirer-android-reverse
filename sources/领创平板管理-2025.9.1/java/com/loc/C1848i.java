package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.C0994h1;
import java.util.List;
import org.json.JSONObject;

/* compiled from: LastLocationManager.java */
/* renamed from: com.loc.i */
/* loaded from: classes.dex */
public final class C1848i {

    /* renamed from: b */
    public static C1825eg f5872b;

    /* renamed from: e */
    public static C1865z f5873e;

    /* renamed from: g */
    public static long f5874g;

    /* renamed from: a */
    public String f5875a = null;

    /* renamed from: c */
    public C1825eg f5876c = null;

    /* renamed from: d */
    public C1825eg f5877d = null;

    /* renamed from: f */
    public long f5878f = 0;

    /* renamed from: h */
    public boolean f5879h = false;

    /* renamed from: i */
    public Context f5880i;

    public C1848i(Context context) {
        this.f5880i = context.getApplicationContext();
    }

    /* renamed from: e */
    private void m5244e() {
        if (f5872b == null || C1841ew.m5127b() - f5874g > 180000) {
            C1825eg c1825egM5245f = m5245f();
            f5874g = C1841ew.m5127b();
            if (c1825egM5245f == null || !C1841ew.m5116a(c1825egM5245f.m4906a())) {
                return;
            }
            f5872b = c1825egM5245f;
        }
    }

    /* renamed from: f */
    private C1825eg m5245f() {
        Throwable th;
        C1825eg c1825eg;
        byte[] bArrM4877b;
        byte[] bArrM4877b2;
        String str = null;
        if (this.f5880i == null) {
            return null;
        }
        m5247a();
        try {
        } catch (Throwable th2) {
            th = th2;
            c1825eg = null;
        }
        if (f5873e == null) {
            return null;
        }
        List listM5363a = f5873e.m5363a("_id=1", C1825eg.class);
        if (listM5363a == null || listM5363a.size() <= 0) {
            c1825eg = null;
        } else {
            c1825eg = (C1825eg) listM5363a.get(0);
            try {
                byte[] bArrM1934e = C0994h1.m1934e(c1825eg.m4912c());
                String str2 = (bArrM1934e == null || bArrM1934e.length <= 0 || (bArrM4877b2 = C1823ee.m4877b(bArrM1934e, this.f5875a)) == null || bArrM4877b2.length <= 0) ? null : new String(bArrM4877b2, "UTF-8");
                byte[] bArrM1934e2 = C0994h1.m1934e(c1825eg.m4910b());
                if (bArrM1934e2 != null && bArrM1934e2.length > 0 && (bArrM4877b = C1823ee.m4877b(bArrM1934e2, this.f5875a)) != null && bArrM4877b.length > 0) {
                    str = new String(bArrM4877b, "UTF-8");
                }
                c1825eg.m4909a(str);
                str = str2;
            } catch (Throwable th3) {
                th = th3;
                C1834ep.m5014a(th, "LastLocationManager", "readLastFix");
                return c1825eg;
            }
        }
        if (!TextUtils.isEmpty(str)) {
            AMapLocation aMapLocation = new AMapLocation("");
            C1834ep.m5012a(aMapLocation, new JSONObject(str));
            if (C1841ew.m5133b(aMapLocation)) {
                c1825eg.m4908a(aMapLocation);
            }
        }
        return c1825eg;
    }

    /* renamed from: a */
    public final AMapLocation m5246a(AMapLocation aMapLocation, String str, long j) {
        if (aMapLocation == null || aMapLocation.getErrorCode() == 0 || aMapLocation.getLocationType() == 1 || aMapLocation.getErrorCode() == 7) {
            return aMapLocation;
        }
        try {
            m5244e();
            if (f5872b != null && f5872b.m4906a() != null) {
                boolean zM5119a = false;
                if (TextUtils.isEmpty(str)) {
                    long jM5127b = C1841ew.m5127b() - f5872b.m4913d();
                    if (jM5127b >= 0 && jM5127b <= j) {
                        zM5119a = true;
                    }
                    aMapLocation.setTrustedLevel(3);
                } else {
                    zM5119a = C1841ew.m5119a(f5872b.m4910b(), str);
                    aMapLocation.setTrustedLevel(2);
                }
                if (!zM5119a) {
                    return aMapLocation;
                }
                AMapLocation aMapLocationM4906a = f5872b.m4906a();
                try {
                    aMapLocationM4906a.setLocationType(9);
                    aMapLocationM4906a.setFixLastLocation(true);
                    aMapLocationM4906a.setLocationDetail(aMapLocation.getLocationDetail());
                    return aMapLocationM4906a;
                } catch (Throwable th) {
                    th = th;
                    aMapLocation = aMapLocationM4906a;
                    C1834ep.m5014a(th, "LastLocationManager", "fixLastLocation");
                    return aMapLocation;
                }
            }
            return aMapLocation;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    public final void m5247a() {
        if (this.f5879h) {
            return;
        }
        try {
            if (this.f5875a == null) {
                this.f5875a = C1823ee.m4871a("MD5", DeviceInfo.m1091y(this.f5880i));
            }
            if (f5873e == null) {
                f5873e = new C1865z(this.f5880i, C1865z.m5350a((Class<? extends InterfaceC1864y>) C1826eh.class));
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "LastLocationManager", "<init>:DBOperation");
        }
        this.f5879h = true;
    }

    /* renamed from: a */
    public final boolean m5248a(AMapLocation aMapLocation, String str) {
        if (this.f5880i != null && aMapLocation != null && C1841ew.m5116a(aMapLocation) && aMapLocation.getLocationType() != 2 && !aMapLocation.isMock() && !aMapLocation.isFixLastLocation()) {
            C1825eg c1825eg = new C1825eg();
            c1825eg.m4908a(aMapLocation);
            if (aMapLocation.getLocationType() == 1) {
                c1825eg.m4909a((String) null);
            } else {
                c1825eg.m4909a(str);
            }
            try {
                f5872b = c1825eg;
                f5874g = C1841ew.m5127b();
                this.f5876c = c1825eg;
                if (this.f5877d != null && C1841ew.m5103a(this.f5877d.m4906a(), c1825eg.m4906a()) <= 500.0f) {
                    return false;
                }
                if (C1841ew.m5127b() - this.f5878f > 30000) {
                    return true;
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "LastLocationManager", "setLastFix");
            }
        }
        return false;
    }

    /* renamed from: b */
    public final AMapLocation m5249b() {
        m5244e();
        C1825eg c1825eg = f5872b;
        if (c1825eg != null && C1841ew.m5116a(c1825eg.m4906a())) {
            return f5872b.m4906a();
        }
        return null;
    }

    /* renamed from: c */
    public final void m5250c() {
        try {
            m5251d();
            this.f5878f = 0L;
            this.f5879h = false;
            this.f5876c = null;
            this.f5877d = null;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "LastLocationManager", "destroy");
        }
    }

    /* renamed from: d */
    public final void m5251d() {
        String strM1933d;
        try {
            m5247a();
            if (this.f5876c != null && C1841ew.m5116a(this.f5876c.m4906a()) && f5873e != null && this.f5876c != this.f5877d && this.f5876c.m4913d() == 0) {
                String str = this.f5876c.m4906a().toStr();
                String strM4910b = this.f5876c.m4910b();
                this.f5877d = this.f5876c;
                if (TextUtils.isEmpty(str)) {
                    strM1933d = null;
                } else {
                    String strM1933d2 = C0994h1.m1933d(C1823ee.m4874a(str.getBytes("UTF-8"), this.f5875a));
                    strM1933d = TextUtils.isEmpty(strM4910b) ? null : C0994h1.m1933d(C1823ee.m4874a(strM4910b.getBytes("UTF-8"), this.f5875a));
                    str = strM1933d2;
                }
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                C1825eg c1825eg = new C1825eg();
                c1825eg.m4911b(str);
                c1825eg.m4907a(C1841ew.m5127b());
                c1825eg.m4909a(strM1933d);
                f5873e.m5364a(c1825eg, "_id=1");
                this.f5878f = C1841ew.m5127b();
                if (f5872b != null) {
                    f5872b.m4907a(C1841ew.m5127b());
                }
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "LastLocationManager", "saveLastFix");
        }
    }
}
