package com.loc;

import com.amap.api.location.AMapLocation;

/* compiled from: LastLocationInfo.java */
@EntityClass(m3993a = "c")
/* renamed from: com.loc.eg */
/* loaded from: classes.dex */
public class LastLocationInfo {

    /* renamed from: a */
    @EntityField(m3995a = "a2", m3996b = 6)
    public String f5626a;

    /* renamed from: b */
    @EntityField(m3995a = "a3", m3996b = 5)
    public long f5627b;

    /* renamed from: c */
    @EntityField(m3995a = "a4", m3996b = 6)
    public String f5628c;

    /* renamed from: d */
    public AMapLocation f5629d;

    /* renamed from: a */
    public final AMapLocation m4906a() {
        return this.f5629d;
    }

    /* renamed from: a */
    public final void m4907a(long j) {
        this.f5627b = j;
    }

    /* renamed from: a */
    public final void m4908a(AMapLocation aMapLocation) {
        this.f5629d = aMapLocation;
    }

    /* renamed from: a */
    public final void m4909a(String str) {
        this.f5628c = str;
    }

    /* renamed from: b */
    public final String m4910b() {
        return this.f5628c;
    }

    /* renamed from: b */
    public final void m4911b(String str) {
        this.f5626a = str;
    }

    /* renamed from: c */
    public final String m4912c() {
        return this.f5626a;
    }

    /* renamed from: d */
    public final long m4913d() {
        return this.f5627b;
    }
}
