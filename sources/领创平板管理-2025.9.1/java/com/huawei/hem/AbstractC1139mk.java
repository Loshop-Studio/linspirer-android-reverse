package com.huawei.hem;

import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import javax.annotation.Nullable;

/* compiled from: ResponseBody.java */
/* renamed from: com.huawei.hem.mk */
/* loaded from: classes.dex */
public abstract class AbstractC1139mk implements Closeable {
    /* renamed from: a */
    public static /* synthetic */ void m2393a(Throwable th, AutoCloseable autoCloseable) throws Exception {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    /* renamed from: c */
    public final byte[] m2394c() throws Exception {
        long jMo2324d = mo2324d();
        if (jMo2324d > 2147483647L) {
            throw new IOException(CompilerOutline.m1755M("Cannot buffer entire body for content length: ", jMo2324d));
        }
        BufferedSource interfaceC1066jnMo2326g = mo2326g();
        try {
            byte[] bArrMo2014v = interfaceC1066jnMo2326g.mo2014v();
            m2393a(null, interfaceC1066jnMo2326g);
            if (jMo2324d == -1 || jMo2324d == bArrMo2014v.length) {
                return bArrMo2014v;
            }
            throw new IOException("Content-Length (" + jMo2324d + ") and stream length (" + bArrMo2014v.length + ") disagree");
        } finally {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        C1314tk.m2749d(mo2326g());
    }

    /* renamed from: d */
    public abstract long mo2324d();

    @Nullable
    /* renamed from: f */
    public abstract OkHttpMediaType mo2325f();

    /* renamed from: g */
    public abstract BufferedSource mo2326g();

    /* renamed from: h */
    public final String m2395h() throws Exception {
        BufferedSource interfaceC1066jnMo2326g = mo2326g();
        try {
            OkHttpMediaType c0858bkMo2325f = mo2325f();
            Charset charsetForName = StandardCharsets.UTF_8;
            if (c0858bkMo2325f != null) {
                try {
                    if (c0858bkMo2325f.f2309c != null) {
                        charsetForName = Charset.forName(c0858bkMo2325f.f2309c);
                    }
                } catch (IllegalArgumentException unused) {
                }
            }
            int iMo1983M = interfaceC1066jnMo2326g.mo1983M(C1314tk.f3819e);
            if (iMo1983M != -1) {
                if (iMo1983M == 0) {
                    charsetForName = StandardCharsets.UTF_8;
                } else if (iMo1983M == 1) {
                    charsetForName = StandardCharsets.UTF_16BE;
                } else if (iMo1983M == 2) {
                    charsetForName = StandardCharsets.UTF_16LE;
                } else if (iMo1983M == 3) {
                    charsetForName = C1314tk.f3820f;
                } else {
                    if (iMo1983M != 4) {
                        throw new AssertionError();
                    }
                    charsetForName = C1314tk.f3821g;
                }
            }
            String strMo1982L = interfaceC1066jnMo2326g.mo1982L(charsetForName);
            m2393a(null, interfaceC1066jnMo2326g);
            return strMo1982L;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (interfaceC1066jnMo2326g != null) {
                    m2393a(th, interfaceC1066jnMo2326g);
                }
                throw th2;
            }
        }
    }
}
