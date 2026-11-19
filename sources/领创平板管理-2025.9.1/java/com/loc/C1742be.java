package com.loc;

import android.content.Context;
import android.os.Build;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.C0917e1;
import com.huawei.hem.C1094l1;
import java.io.ByteArrayOutputStream;

/* compiled from: StatisticsHeaderDataStrategy.java */
/* renamed from: com.loc.be */
/* loaded from: classes.dex */
public final class C1742be extends AbstractC1744bg {

    /* renamed from: a */
    public static int f5101a = 13;

    /* renamed from: b */
    public static int f5102b = 6;

    /* renamed from: e */
    public Context f5103e;

    public C1742be(Context context, AbstractC1744bg abstractC1744bg) {
        super(abstractC1744bg);
        this.f5103e = context;
    }

    /* renamed from: a */
    public static byte[] m4205a(Context context) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] byteArray = new byte[0];
        try {
            try {
                C1094l1.m2241j(byteArrayOutputStream, "1.2." + f5101a + "." + f5102b);
                C1094l1.m2241j(byteArrayOutputStream, "Android");
                C1094l1.m2241j(byteArrayOutputStream, DeviceInfo.m1091y(context));
                C1094l1.m2241j(byteArrayOutputStream, DeviceInfo.m1086t(context));
                C1094l1.m2241j(byteArrayOutputStream, DeviceInfo.m1083q(context));
                C1094l1.m2241j(byteArrayOutputStream, Build.MANUFACTURER);
                C1094l1.m2241j(byteArrayOutputStream, Build.MODEL);
                C1094l1.m2241j(byteArrayOutputStream, Build.DEVICE);
                C1094l1.m2241j(byteArrayOutputStream, DeviceInfo.m1092z(context));
                C1094l1.m2241j(byteArrayOutputStream, C0917e1.m1638d(context));
                C1094l1.m2241j(byteArrayOutputStream, C0917e1.m1639e(context));
                C1094l1.m2241j(byteArrayOutputStream, C0917e1.m1641g(context));
                byteArrayOutputStream.write(new byte[]{0});
                byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            try {
                C1862w.m5333b(th2, "sm", "gh");
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
                throw th3;
            }
        }
        return byteArray;
    }

    @Override // com.loc.AbstractC1744bg
    /* renamed from: a */
    public final byte[] mo4202a(byte[] bArr) {
        byte[] bArrM4205a = m4205a(this.f5103e);
        byte[] bArr2 = new byte[bArrM4205a.length + bArr.length];
        System.arraycopy(bArrM4205a, 0, bArr2, 0, bArrM4205a.length);
        System.arraycopy(bArr, 0, bArr2, bArrM4205a.length, bArr.length);
        return bArr2;
    }
}
