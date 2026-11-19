package com.huawei.updatesdk.p034a.p035a.p040d;

import com.huawei.hms.common.internal.TransactionIdCreater;
import java.io.UnsupportedEncodingException;

/* renamed from: com.huawei.updatesdk.a.a.d.b */
/* loaded from: classes.dex */
public class C1586b {

    /* renamed from: a */
    public byte[] f4622a;

    /* renamed from: b */
    public int f4623b = 1024;

    /* renamed from: c */
    public int f4624c = 0;

    public C1586b() {
        this.f4622a = null;
        this.f4622a = new byte[1024];
    }

    /* renamed from: a */
    public static String m3521a(byte[] bArr) {
        char[] cArr = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            cArr2[i] = cArr[(b >>> 4) & 15];
            i = i2 + 1;
            cArr2[i2] = cArr[b & 15];
        }
        return String.valueOf(cArr2);
    }

    /* renamed from: a */
    public String m3522a() {
        int i = this.f4624c;
        if (i <= 0) {
            return null;
        }
        try {
            return new String(this.f4622a, 0, i, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    /* renamed from: a */
    public void m3523a(byte[] bArr, int i) {
        if (i <= 0) {
            return;
        }
        byte[] bArr2 = this.f4622a;
        int length = bArr2.length;
        int i2 = this.f4624c;
        if (length - i2 >= i) {
            System.arraycopy(bArr, 0, bArr2, i2, i);
        } else {
            byte[] bArr3 = new byte[(bArr2.length + i) << 1];
            System.arraycopy(bArr2, 0, bArr3, 0, i2);
            System.arraycopy(bArr, 0, bArr3, this.f4624c, i);
            this.f4622a = bArr3;
        }
        this.f4624c += i;
    }
}
