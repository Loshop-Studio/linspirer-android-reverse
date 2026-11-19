package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.C1094l1;

/* compiled from: HeaderAddStrategy.java */
/* renamed from: com.loc.bc */
/* loaded from: classes.dex */
public final class HeaderAddStrategy extends UpdateDataStrategy {

    /* renamed from: a */
    public Context f5095a;

    /* renamed from: b */
    public String f5096b;

    /* renamed from: e */
    public EncryptProcessor f5097e;

    /* renamed from: f */
    public Object[] f5098f;

    public HeaderAddStrategy(Context context, UpdateDataStrategy abstractC1744bg, EncryptProcessor abstractC1717ag, String str, Object... objArr) {
        super(abstractC1744bg);
        this.f5095a = context;
        this.f5096b = str;
        this.f5097e = abstractC1717ag;
        this.f5098f = objArr;
    }

    /* renamed from: b */
    private String m4204b() {
        try {
            return String.format(C1094l1.m2251t(this.f5096b), this.f5098f);
        } catch (Throwable th) {
            th.printStackTrace();
            SDKLogHandler.m5333b(th, "ofm", "gpj");
            return "";
        }
    }

    @Override // com.loc.AbstractC1744bg
    /* renamed from: a */
    public final byte[] mo4202a(byte[] bArr) {
        String strM2236e = C1094l1.m2236e(bArr);
        if (TextUtils.isEmpty(strM2236e)) {
            return null;
        }
        return C1094l1.m2245n("{\"pinfo\":\"" + C1094l1.m2236e(this.f5097e.m3998b(C1094l1.m2245n(m4204b()))) + "\",\"els\":[" + strM2236e + "]}");
    }
}
