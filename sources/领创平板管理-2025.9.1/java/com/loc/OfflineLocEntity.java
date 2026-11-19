package com.loc;

import android.content.Context;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.SDKInfo;
import com.huawei.hem.AMapCoreUtilities;

/* compiled from: OfflineLocEntity.java */
/* renamed from: com.loc.av */
/* loaded from: classes.dex */
public final class OfflineLocEntity {

    /* renamed from: a */
    public Context f5063a;

    /* renamed from: b */
    public SDKInfo f5064b;

    /* renamed from: c */
    public String f5065c;

    public OfflineLocEntity(Context context, SDKInfo c1069k1, String str) {
        this.f5063a = context.getApplicationContext();
        this.f5064b = c1069k1;
        this.f5065c = str;
    }

    /* renamed from: a */
    public static String m4171a(Context context, SDKInfo c1069k1, String str) {
        int iM1074h;
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("\"sdkversion\":\"");
            sb.append(c1069k1.m2157b());
            sb.append("\",\"product\":\"");
            sb.append(c1069k1.m2156a());
            sb.append("\",\"nt\":\"");
            try {
                iM1074h = DeviceInfo.m1074h(context);
            } catch (Throwable th) {
                th.printStackTrace();
                iM1074h = -1;
            }
            sb.append(iM1074h);
            sb.append("\",\"details\":");
            sb.append(str);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final byte[] m4172a() {
        return AMapCoreUtilities.m2245n(m4171a(this.f5063a, this.f5064b, this.f5065c));
    }
}
