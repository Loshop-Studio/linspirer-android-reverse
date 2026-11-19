package com.p061ta.utdid2.p066a.p067a;

import android.annotation.SuppressLint;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.io.UnsupportedEncodingException;

/* renamed from: com.ta.utdid2.a.a.a */
/* loaded from: classes.dex */
public class UtBase64Encoder {

    /* renamed from: d */
    public static final /* synthetic */ boolean f6006d = !UtBase64Encoder.class.desiredAssertionStatus();

    /* renamed from: com.ta.utdid2.a.a.a$a */
    public static abstract class a {

        /* renamed from: a */
        public byte[] f6007a;

        /* renamed from: b */
        public int f6008b;
    }

    /* renamed from: com.ta.utdid2.a.a.a$b */
    public static class b extends a {

        /* renamed from: c */
        public int f6012c;
        public int count;

        /* renamed from: d */
        public final byte[] f6013d;

        /* renamed from: e */
        public final boolean f6014e;

        /* renamed from: e */
        public final byte[] f6015e;

        /* renamed from: f */
        public final boolean f6016f;

        /* renamed from: g */
        public final boolean f6017g;

        /* renamed from: d */
        public static final /* synthetic */ boolean f6011d = !UtBase64Encoder.class.desiredAssertionStatus();

        /* renamed from: b */
        public static final byte[] f6009b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

        /* renamed from: c */
        public static final byte[] f6010c = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

        public b(int i, byte[] bArr) {
            this.f6007a = bArr;
            this.f6014e = (i & 1) == 0;
            this.f6016f = (i & 2) == 0;
            this.f6017g = (i & 4) != 0;
            this.f6015e = (i & 8) == 0 ? f6009b : f6010c;
            this.f6013d = new byte[2];
            this.f6012c = 0;
            this.count = this.f6016f ? 19 : -1;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        /* JADX WARN: Removed duplicated region for block: B:100:0x00e6 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0094  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m5410a(byte[] r18, int r19, int r20, boolean r21) {
            /*
                Method dump skipped, instructions count: 518
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.p061ta.utdid2.p066a.p067a.C1883a.b.m5410a(byte[], int, int, boolean):boolean");
        }
    }

    public static byte[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, bArr.length, i);
    }

    public static String encodeToString(byte[] bArr, int i) {
        try {
            return new String(encode(bArr, i), Base64.PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @SuppressLint({"Assert"})
    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        b bVar = new b(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!bVar.f6014e) {
            int i5 = i2 % 3;
            if (i5 == 1) {
                i4 += 2;
            } else if (i5 == 2) {
                i4 += 3;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (bVar.f6016f && i2 > 0) {
            i4 += (((i2 - 1) / 57) + 1) * (bVar.f6017g ? 2 : 1);
        }
        bVar.f6007a = new byte[i4];
        bVar.m5410a(bArr, i, i2, true);
        if (f6006d || bVar.f6008b == i4) {
            return bVar.f6007a;
        }
        throw new AssertionError();
    }
}
