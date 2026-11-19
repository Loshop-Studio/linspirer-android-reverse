package com.loc;

import anet.channel.util.HttpConstant;
import com.huawei.hem.IPV6Request;
import com.huawei.hem.AMapCoreUtilities;
import com.huawei.hem.ConstConfig;
import com.huawei.hem.AgooNotificationHandler;
import com.loc.AMapNetworkRequest;
import java.util.HashMap;
import java.util.Map;

/* compiled from: LogUpdateRequest.java */
/* renamed from: com.loc.v */
/* loaded from: classes.dex */
public final class LogUpdateRequest extends IPV6Request {

    /* renamed from: a */
    public byte[] f5955a;

    /* renamed from: b */
    public String f5956b;

    public LogUpdateRequest(byte[] bArr, String str) {
        this.f5956b = "1";
        this.f5955a = (byte[]) bArr.clone();
        this.f5956b = str;
        m4136a(AMapNetworkRequest.a.SINGLE);
        m4138a(AMapNetworkRequest.c.HTTP);
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
        String str = ConstConfig.f3229b;
        String strM2251t = AMapCoreUtilities.m2251t("IaHR0cDovL2xvZ3MuYW1hcC5jb20vd3MvbG9nL3VwbG9hZD9wcm9kdWN0PSVzJnR5cGU9JXMmcGxhdGZvcm09JXMmY2hhbm5lbD0lcyZzaWduPSVz");
        String str2 = ConstConfig.f3228a;
        byte[] bArrM2245n = AMapCoreUtilities.m2245n("9aj&#k81");
        byte[] bArr = new byte[bArrM2245n.length + 50];
        System.arraycopy(this.f5955a, 0, bArr, 0, 50);
        System.arraycopy(bArrM2245n, 0, bArr, 50, bArrM2245n.length);
        return String.format(strM2251t, "1", this.f5956b, "1", "open", AgooNotificationHandler.m2508d(bArr));
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
