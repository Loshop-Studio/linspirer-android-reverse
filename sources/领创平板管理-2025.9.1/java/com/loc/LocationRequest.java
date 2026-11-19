package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.SDKInfo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;

/* compiled from: LocationRequest.java */
/* renamed from: com.loc.el */
/* loaded from: classes.dex */
public final class LocationRequest extends BinaryRequest {

    /* renamed from: g */
    public Map<String, String> f5655g;

    /* renamed from: h */
    public String f5656h;

    /* renamed from: i */
    public String f5657i;

    /* renamed from: j */
    public byte[] f5658j;

    /* renamed from: k */
    public byte[] f5659k;

    /* renamed from: l */
    public boolean f5660l;

    /* renamed from: m */
    public String f5661m;

    /* renamed from: n */
    public Map<String, String> f5662n;

    /* renamed from: o */
    public boolean f5663o;

    /* renamed from: p */
    public String f5664p;

    public LocationRequest(Context context, SDKInfo c1069k1) {
        super(context, c1069k1);
        this.f5655g = null;
        this.f5664p = "";
        this.f5656h = "";
        this.f5657i = "";
        this.f5658j = null;
        this.f5659k = null;
        this.f5660l = false;
        this.f5661m = null;
        this.f5662n = null;
        this.f5663o = false;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: a */
    public final Map<String, String> mo1735a() {
        return this.f5655g;
    }

    /* renamed from: a */
    public final void m4945a(Map<String, String> map) {
        this.f5662n = map;
    }

    @Override // com.loc.AbstractC1724an
    /* renamed from: a_ */
    public final byte[] mo1736a_() {
        return this.f5658j;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: b */
    public final String mo1737b() {
        return this.f5656h;
    }

    /* renamed from: b */
    public final void m4946b(String str) {
        this.f5661m = str;
    }

    /* renamed from: b */
    public final void m4947b(Map<String, String> map) {
        this.f5655g = map;
    }

    /* renamed from: b */
    public final void m4948b(boolean z) {
        this.f5660l = z;
    }

    /* renamed from: b */
    public final void m4949b(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            if (bArr != null) {
                try {
                    byteArrayOutputStream2.write(BinaryRequest.m4073a(bArr));
                    byteArrayOutputStream2.write(bArr);
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        th.printStackTrace();
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                                return;
                            } catch (IOException e) {
                                e.printStackTrace();
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th2) {
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th2;
                    }
                }
            }
            this.f5659k = byteArrayOutputStream2.toByteArray();
            try {
                byteArrayOutputStream2.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.loc.AbstractC1724an
    /* renamed from: b_ */
    public final byte[] mo1738b_() {
        return this.f5659k;
    }

    @Override // com.huawei.hem.AbstractC1044j1, com.loc.AbstractC1728ar
    /* renamed from: c */
    public final String mo1739c() {
        return this.f5657i;
    }

    /* renamed from: c */
    public final void m4950c(String str) {
        this.f5656h = str;
    }

    /* renamed from: c */
    public final void m4951c(boolean z) {
        this.f5663o = z;
    }

    /* renamed from: c */
    public final void m4952c(byte[] bArr) {
        this.f5658j = bArr;
    }

    @Override // com.loc.AbstractC1724an, com.loc.AbstractC1728ar
    /* renamed from: d */
    public final Map<String, String> mo4055d() {
        return this.f5662n;
    }

    /* renamed from: d */
    public final void m4953d(String str) {
        this.f5657i = str;
    }

    /* renamed from: e */
    public final void m4954e(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f5664p = "";
        } else {
            this.f5664p = str;
        }
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: g */
    public final String mo1741g() {
        return this.f5664p;
    }

    @Override // com.loc.AbstractC1724an
    /* renamed from: h */
    public final boolean mo4074h() {
        return this.f5660l;
    }

    @Override // com.loc.AbstractC1724an
    /* renamed from: i */
    public final String mo4075i() {
        return this.f5661m;
    }

    @Override // com.loc.AbstractC1724an
    /* renamed from: j */
    public final boolean mo4076j() {
        return this.f5663o;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: o */
    public final String mo4149o() {
        return "loc";
    }
}
