package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.AMapCoreException;
import com.huawei.hem.C1094l1;
import java.io.ByteArrayOutputStream;

/* compiled from: StatisticsEntity.java */
/* renamed from: com.loc.ax */
/* loaded from: classes.dex */
public final class StatisticsEntity {

    /* renamed from: a */
    public Context f5075a;

    /* renamed from: b */
    public String f5076b;

    /* renamed from: c */
    public String f5077c;

    /* renamed from: d */
    public String f5078d;

    /* renamed from: e */
    public String f5079e;

    public StatisticsEntity(Context context, String str, String str2, String str3) throws AMapCoreException {
        if (TextUtils.isEmpty(str3) || str3.length() > 256) {
            throw new AMapCoreException("无效的参数 - IllegalArgumentException");
        }
        this.f5075a = context.getApplicationContext();
        this.f5077c = str;
        this.f5078d = str2;
        this.f5076b = str3;
    }

    /* renamed from: a */
    public static byte[] m4178a(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    /* renamed from: b */
    private byte[] m4179b(String str) {
        byte[] bArrM2245n;
        if (!TextUtils.isEmpty(str) && (bArrM2245n = C1094l1.m2245n(this.f5079e)) != null) {
            return C1094l1.m2244m(bArrM2245n.length);
        }
        return new byte[]{0, 0};
    }

    /* renamed from: a */
    public final void m4180a(String str) {
        if (TextUtils.isEmpty(str) || str.length() > 65536) {
            throw new AMapCoreException("无效的参数 - IllegalArgumentException");
        }
        this.f5079e = str;
    }

    /* renamed from: a */
    public final byte[] m4181a() {
        int iCurrentTimeMillis = 0;
        byte[] byteArray = new byte[0];
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    C1094l1.m2241j(byteArrayOutputStream2, this.f5077c);
                    C1094l1.m2241j(byteArrayOutputStream2, this.f5078d);
                    C1094l1.m2241j(byteArrayOutputStream2, this.f5076b);
                    C1094l1.m2241j(byteArrayOutputStream2, String.valueOf(DeviceInfo.m1087u(this.f5075a)));
                    try {
                        iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                    } catch (Throwable unused) {
                    }
                    byteArrayOutputStream2.write(m4178a(iCurrentTimeMillis));
                    byteArrayOutputStream2.write(m4179b(this.f5079e));
                    byteArrayOutputStream2.write(C1094l1.m2245n(this.f5079e));
                    byteArray = byteArrayOutputStream2.toByteArray();
                    byteArrayOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        SDKLogHandler.m5333b(th, "se", "tds");
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        return byteArray;
                    } catch (Throwable th2) {
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th3) {
                                th3.printStackTrace();
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
        return byteArray;
    }
}
