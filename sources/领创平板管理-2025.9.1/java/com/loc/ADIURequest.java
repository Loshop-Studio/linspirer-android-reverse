package com.loc;

import com.loc.AMapNetworkRequest;
import java.util.Map;

/* compiled from: ADIURequest.java */
/* renamed from: com.loc.al */
/* loaded from: classes.dex */
public final class ADIURequest extends AMapNetworkRequest {

    /* renamed from: a */
    public byte[] f4931a;

    /* renamed from: b */
    public Map<String, String> f4932b;

    public ADIURequest(byte[] bArr, Map<String, String> map) {
        this.f4931a = bArr;
        this.f4932b = map;
        m4136a(AMapNetworkRequest.a.SINGLE);
        m4138a(AMapNetworkRequest.c.HTTPS);
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: a */
    public final Map<String, String> mo1735a() {
        return null;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: b */
    public final String mo1737b() {
        return "https://adiu.amap.com/ws/device/adius";
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: d */
    public final Map<String, String> mo4055d() {
        return this.f4932b;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: e */
    public final byte[] mo4056e() {
        return this.f4931a;
    }
}
