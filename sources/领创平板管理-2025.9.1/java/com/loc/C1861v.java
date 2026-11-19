package com.loc;

import anet.channel.util.HttpConstant;
import com.huawei.hem.AbstractC1044j1;
import com.huawei.hem.C1094l1;
import com.huawei.hem.C1120m1;
import com.huawei.hem.C1219q0;
import com.loc.AbstractC1728ar;
import java.util.HashMap;
import java.util.Map;

/* compiled from: LogUpdateRequest.java */
/* renamed from: com.loc.v */
/* loaded from: classes.dex */
public final class C1861v extends AbstractC1044j1 {

    /* renamed from: a */
    public byte[] f5955a;

    /* renamed from: b */
    public String f5956b;

    public C1861v(byte[] bArr, String str) {
        this.f5956b = "1";
        this.f5955a = (byte[]) bArr.clone();
        this.f5956b = str;
        m4136a(AbstractC1728ar.a.SINGLE);
        m4138a(AbstractC1728ar.c.HTTP);
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: a */
    public final Map<String, String> mo1735a() {
        HashMap map = new HashMap();
        map.put(HttpConstant.CONTENT_TYPE, "application/zip");
        map.put(HttpConstant.CONTENT_LENGTH, String.valueOf(this.f5955a.length));
        return map;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: b */
    public final String mo1737b() {
        String str = C1120m1.f3229b;
        String strM2251t = C1094l1.m2251t("IaHR0cDovL2xvZ3MuYW1hcC5jb20vd3MvbG9nL3VwbG9hZD9wcm9kdWN0PSVzJnR5cGU9JXMmcGxhdGZvcm09JXMmY2hhbm5lbD0lcyZzaWduPSVz");
        String str2 = C1120m1.f3228a;
        byte[] bArrM2245n = C1094l1.m2245n("9aj&#k81");
        byte[] bArr = new byte[bArrM2245n.length + 50];
        System.arraycopy(this.f5955a, 0, bArr, 0, 50);
        System.arraycopy(bArrM2245n, 0, bArr, 50, bArrM2245n.length);
        return String.format(strM2251t, "1", this.f5956b, "1", "open", C1219q0.m2508d(bArr));
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: c_ */
    public final boolean mo4144c_() {
        return false;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: d */
    public final Map<String, String> mo4055d() {
        return null;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: e */
    public final byte[] mo4056e() {
        return this.f5955a;
    }
}
