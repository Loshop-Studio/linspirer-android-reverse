package com.p061ta.p062a.p065c;

import com.alibaba.sdk.android.tbrest.utils.RC4;

/* renamed from: com.ta.a.c.e */
/* loaded from: classes.dex */
public class UtdidStreamCipher {

    /* renamed from: com.ta.a.c.e$a */
    public static class a {

        /* renamed from: a */
        public int[] f6001a;

        /* renamed from: x */
        public int f6002x;

        /* renamed from: y */
        public int f6003y;

        public a() {
            this.f6001a = new int[256];
        }
    }

    /* renamed from: a */
    public static a m5397a(String str) {
        if (str == null) {
            return null;
        }
        a aVar = new a();
        for (int i = 0; i < 256; i++) {
            aVar.f6001a[i] = i;
        }
        aVar.f6002x = 0;
        aVar.f6003y = 0;
        int length = 0;
        int iCharAt = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            try {
                iCharAt = ((str.charAt(length) + aVar.f6001a[i2]) + iCharAt) % 256;
                int i3 = aVar.f6001a[i2];
                aVar.f6001a[i2] = aVar.f6001a[iCharAt];
                aVar.f6001a[iCharAt] = i3;
                length = (length + 1) % str.length();
            } catch (Exception unused) {
                return null;
            }
        }
        return aVar;
    }

    /* renamed from: b */
    public static byte[] m5399b(byte[] bArr) {
        a aVarM5397a;
        if (bArr == null || (aVarM5397a = m5397a(RC4.RC4_PK)) == null) {
            return null;
        }
        return m5398a(bArr, aVarM5397a);
    }

    /* renamed from: a */
    public static byte[] m5398a(byte[] bArr, a aVar) {
        if (bArr == null || aVar == null) {
            return null;
        }
        int i = aVar.f6002x;
        int i2 = aVar.f6003y;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) % 256;
            int[] iArr = aVar.f6001a;
            i2 = (iArr[i] + i2) % 256;
            int i4 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i4;
            int i5 = (iArr[i] + iArr[i2]) % 256;
            bArr[i3] = (byte) (iArr[i5] ^ bArr[i3]);
        }
        aVar.f6002x = i;
        aVar.f6003y = i2;
        return bArr;
    }
}
