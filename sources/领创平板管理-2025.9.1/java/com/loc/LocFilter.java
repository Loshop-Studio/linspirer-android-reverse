package com.loc;

import android.text.TextUtils;
import com.amap.api.location.AMapLocation;

/* compiled from: LocFilter.java */
/* renamed from: com.loc.dt */
/* loaded from: classes.dex */
public final class LocFilter {

    /* renamed from: a */
    public AMapLocationServer f5429a = null;

    /* renamed from: b */
    public long f5430b = 0;

    /* renamed from: c */
    public long f5431c = 0;

    /* renamed from: h */
    public boolean f5436h = true;

    /* renamed from: d */
    public int f5432d = 0;

    /* renamed from: e */
    public long f5433e = 0;

    /* renamed from: f */
    public AMapLocation f5434f = null;

    /* renamed from: g */
    public long f5435g = 0;

    /* renamed from: b */
    private AMapLocationServer m4671b(AMapLocationServer c1812du) {
        int i;
        if (AMapLocationUtilities.m5117a(c1812du)) {
            if (!this.f5436h || !AuthUtil.m4976a(c1812du.getTime())) {
                i = this.f5432d;
            } else if (c1812du.getLocationType() == 5 || c1812du.getLocationType() == 6) {
                i = 4;
            }
            c1812du.setLocationType(i);
        }
        return c1812du;
    }

    /* renamed from: a */
    public final AMapLocation m4672a(AMapLocation aMapLocation) {
        if (!AMapLocationUtilities.m5116a(aMapLocation)) {
            return aMapLocation;
        }
        long jM5127b = AMapLocationUtilities.m5127b() - this.f5435g;
        this.f5435g = AMapLocationUtilities.m5127b();
        if (jM5127b > 5000) {
            return aMapLocation;
        }
        AMapLocation aMapLocation2 = this.f5434f;
        if (aMapLocation2 == null) {
            this.f5434f = aMapLocation;
            return aMapLocation;
        }
        if (1 != aMapLocation2.getLocationType() && !"gps".equalsIgnoreCase(this.f5434f.getProvider())) {
            this.f5434f = aMapLocation;
            return aMapLocation;
        }
        if (this.f5434f.getAltitude() == aMapLocation.getAltitude() && this.f5434f.getLongitude() == aMapLocation.getLongitude()) {
            this.f5434f = aMapLocation;
            return aMapLocation;
        }
        long jAbs = Math.abs(aMapLocation.getTime() - this.f5434f.getTime());
        if (30000 < jAbs) {
            this.f5434f = aMapLocation;
            return aMapLocation;
        }
        if (AMapLocationUtilities.m5103a(aMapLocation, this.f5434f) > ((aMapLocation.getAccuracy() + this.f5434f.getAccuracy()) * 2.0f) + (((aMapLocation.getSpeed() + this.f5434f.getSpeed()) * jAbs) / 2000.0f) + 3000.0f) {
            return this.f5434f;
        }
        this.f5434f = aMapLocation;
        return aMapLocation;
    }

    /* renamed from: a */
    public final AMapLocationServer m4673a(AMapLocationServer c1812du) {
        if (AMapLocationUtilities.m5127b() - this.f5433e > 30000) {
            this.f5429a = c1812du;
            this.f5433e = AMapLocationUtilities.m5127b();
            return this.f5429a;
        }
        this.f5433e = AMapLocationUtilities.m5127b();
        if (!AMapLocationUtilities.m5117a(this.f5429a) || !AMapLocationUtilities.m5117a(c1812du)) {
            this.f5430b = AMapLocationUtilities.m5127b();
            this.f5429a = c1812du;
            return c1812du;
        }
        if (c1812du.getTime() == this.f5429a.getTime() && c1812du.getAccuracy() < 300.0f) {
            return c1812du;
        }
        if (c1812du.getProvider().equals("gps")) {
            this.f5430b = AMapLocationUtilities.m5127b();
            this.f5429a = c1812du;
            return c1812du;
        }
        if (c1812du.m4686c() != this.f5429a.m4686c()) {
            this.f5430b = AMapLocationUtilities.m5127b();
            this.f5429a = c1812du;
            return c1812du;
        }
        if (!c1812du.getBuildingId().equals(this.f5429a.getBuildingId()) && !TextUtils.isEmpty(c1812du.getBuildingId())) {
            this.f5430b = AMapLocationUtilities.m5127b();
            this.f5429a = c1812du;
            return c1812du;
        }
        this.f5432d = c1812du.getLocationType();
        float fM5103a = AMapLocationUtilities.m5103a(c1812du, this.f5429a);
        float accuracy = this.f5429a.getAccuracy();
        float accuracy2 = c1812du.getAccuracy();
        float f = accuracy2 - accuracy;
        long jM5127b = AMapLocationUtilities.m5127b();
        long j = jM5127b - this.f5430b;
        boolean z = accuracy <= 100.0f && accuracy2 > 299.0f;
        boolean z2 = accuracy > 299.0f && accuracy2 > 299.0f;
        if (z || z2) {
            long j2 = this.f5431c;
            if (j2 == 0) {
                this.f5431c = jM5127b;
            } else if (jM5127b - j2 > 30000) {
                this.f5430b = jM5127b;
                this.f5429a = c1812du;
                this.f5431c = 0L;
                return c1812du;
            }
            AMapLocationServer c1812duM4671b = m4671b(this.f5429a);
            this.f5429a = c1812duM4671b;
            return c1812duM4671b;
        }
        if (accuracy2 < 100.0f && accuracy > 299.0f) {
            this.f5430b = jM5127b;
            this.f5429a = c1812du;
            this.f5431c = 0L;
            return c1812du;
        }
        if (accuracy2 <= 299.0f) {
            this.f5431c = 0L;
        }
        if (fM5103a >= 10.0f || fM5103a <= 0.1d || accuracy2 <= 5.0f) {
            if (f < 300.0f) {
                this.f5430b = AMapLocationUtilities.m5127b();
                this.f5429a = c1812du;
                return c1812du;
            }
            if (j >= 30000) {
                this.f5430b = AMapLocationUtilities.m5127b();
                this.f5429a = c1812du;
                return c1812du;
            }
            AMapLocationServer c1812duM4671b2 = m4671b(this.f5429a);
            this.f5429a = c1812duM4671b2;
            return c1812duM4671b2;
        }
        if (f >= -300.0f) {
            AMapLocationServer c1812duM4671b3 = m4671b(this.f5429a);
            this.f5429a = c1812duM4671b3;
            return c1812duM4671b3;
        }
        if (accuracy / accuracy2 >= 2.0f) {
            this.f5430b = jM5127b;
            this.f5429a = c1812du;
            return c1812du;
        }
        AMapLocationServer c1812duM4671b4 = m4671b(this.f5429a);
        this.f5429a = c1812duM4671b4;
        return c1812duM4671b4;
    }

    /* renamed from: a */
    public final void m4674a() {
        this.f5429a = null;
        this.f5430b = 0L;
        this.f5431c = 0L;
        this.f5434f = null;
        this.f5435g = 0L;
    }

    /* renamed from: a */
    public final void m4675a(boolean z) {
        this.f5436h = z;
    }
}
