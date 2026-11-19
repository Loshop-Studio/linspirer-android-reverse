package com.huawei.hem;

import java.nio.charset.Charset;

/* compiled from: Util.java */
/* renamed from: com.huawei.hem.co */
/* loaded from: classes.dex */
public final class C0888co {

    /* renamed from: a */
    public static final Charset f2363a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static boolean m1542a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static void m1543b(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    /* renamed from: c */
    public static int m1544c(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    /* renamed from: d */
    public static short m1545d(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    /* renamed from: e */
    public static void m1546e(Throwable th) throws Throwable {
        throw th;
    }
}
