package okhttp3.internal.publicsuffix;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.Timeout;
import com.huawei.hem.GzipSource;
import com.huawei.hem.OkioStreamFactory;
import com.huawei.hem.RealBufferedSource;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class PublicSuffixDatabase {

    /* renamed from: e */
    public static final byte[] f6446e = {42};

    /* renamed from: f */
    public static final String[] f6447f = new String[0];

    /* renamed from: g */
    public static final String[] f6448g = {"*"};

    /* renamed from: h */
    public static final PublicSuffixDatabase f6449h = new PublicSuffixDatabase();

    /* renamed from: a */
    public final AtomicBoolean f6450a = new AtomicBoolean(false);

    /* renamed from: b */
    public final CountDownLatch f6451b = new CountDownLatch(1);

    /* renamed from: c */
    public byte[] f6452c;

    /* renamed from: d */
    public byte[] f6453d;

    /* renamed from: a */
    public static String m5823a(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int length = bArr.length;
        int i5 = 0;
        while (i5 < length) {
            int i6 = (i5 + length) / 2;
            while (i6 > -1 && bArr[i6] != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (bArr[i2] == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    z = z2;
                    i3 = bArr2[i10][i11] & Base64.EQUALS_SIGN_ENC;
                }
                i4 = i3 - (bArr[i7 + i12] & Base64.EQUALS_SIGN_ENC);
                if (i4 == 0) {
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    }
                    if (bArr2[i10].length != i11) {
                        z2 = z;
                    } else {
                        if (i10 == bArr2.length - 1) {
                            break;
                        }
                        i10++;
                        i11 = -1;
                        z2 = true;
                    }
                } else {
                    break;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i13 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    while (true) {
                        i10++;
                        if (i10 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i10].length;
                    }
                    if (length2 >= i13) {
                        if (length2 <= i13) {
                            return new String(bArr, i7, i9, StandardCharsets.UTF_8);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            length = i7 - 1;
        }
        return null;
    }

    /* renamed from: b */
    public final void m5824b() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        RealBufferedSource c1367vn = new RealBufferedSource(new GzipSource(OkioStreamFactory.m2674f(resourceAsStream, new Timeout())));
        try {
            byte[] bArr = new byte[c1367vn.readInt()];
            c1367vn.m2881c(bArr);
            byte[] bArr2 = new byte[c1367vn.readInt()];
            c1367vn.m2881c(bArr2);
            c1367vn.close();
            synchronized (this) {
                this.f6452c = bArr;
                this.f6453d = bArr2;
            }
            this.f6451b.countDown();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    c1367vn.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
