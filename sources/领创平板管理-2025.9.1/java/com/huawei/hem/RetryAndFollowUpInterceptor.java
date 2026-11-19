package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;

/* compiled from: RetryAndFollowUpInterceptor.java */
/* renamed from: com.huawei.hem.sl */
/* loaded from: classes.dex */
public final class RetryAndFollowUpInterceptor implements OkHttpInterceptor {

    /* renamed from: a */
    public final OkHttpClient f3722a;

    public RetryAndFollowUpInterceptor(OkHttpClient c0910dk) {
        this.f3722a = c0910dk;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01c9 A[PHI: r7
      0x01c9: PHI (r7v12 com.huawei.hem.sl) = 
      (r7v11 com.huawei.hem.sl)
      (r7v13 com.huawei.hem.sl)
      (r7v13 com.huawei.hem.sl)
      (r7v13 com.huawei.hem.sl)
      (r7v13 com.huawei.hem.sl)
      (r7v16 com.huawei.hem.sl)
      (r7v16 com.huawei.hem.sl)
      (r7v18 com.huawei.hem.sl)
      (r7v18 com.huawei.hem.sl)
      (r7v18 com.huawei.hem.sl)
     binds: [B:86:0x0181, B:89:0x0188, B:95:0x0197, B:105:0x01b2, B:110:0x01c7, B:80:0x0162, B:77:0x0157, B:54:0x010f, B:62:0x0122, B:59:0x0119] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x022b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0184 A[PHI: r7
      0x0184: PHI (r7v13 com.huawei.hem.sl) = (r7v27 com.huawei.hem.sl), (r7v28 com.huawei.hem.sl), (r7v19 com.huawei.hem.sl) binds: [B:84:0x0179, B:86:0x0181, B:52:0x0105] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x018b  */
    /* JADX WARN: Type inference failed for: r19v1, types: [javax.net.ssl.HostnameVerifier] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [com.huawei.hem.mj] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.huawei.hem.ql] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.huawei.hem.el, java.io.IOException] */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.huawei.hem.sl] */
    /* JADX WARN: Type inference failed for: r7v8, types: [com.huawei.hem.sl] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.huawei.hem.kl] */
    @Override // com.huawei.hem.InterfaceC0832ak
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hem.OkHttpResponse mo1363a(com.huawei.hem.OkHttpInterceptor.a r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1290sl.mo1363a(com.huawei.hem.ak$a):com.huawei.hem.kk");
    }

    /* renamed from: b */
    public final boolean m2699b(IOException iOException, Transmitter c1089kl, boolean z, OkHttpRequest c0988gk) {
        boolean z2;
        if (!this.f3722a.f2439w) {
            return false;
        }
        if (z) {
            AbstractC1063jk abstractC1063jk = c0988gk.f2788d;
            if (iOException instanceof FileNotFoundException) {
                return false;
            }
        }
        if (!(!(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? ((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException) : !((iOException instanceof SocketTimeoutException) && !z)))) {
            return false;
        }
        ExchangeFinder c0937el = c1089kl.f3125h;
        synchronized (c0937el.f2553c) {
            z2 = c0937el.f2559i;
        }
        return z2 && c1089kl.f3125h.m1686c();
    }

    /* renamed from: c */
    public final int m2700c(OkHttpResponse c1088kk, int i) {
        String strM3110c = c1088kk.f3096f.m3110c("Retry-After");
        if (strM3110c == null) {
            strM3110c = null;
        }
        return strM3110c == null ? i : strM3110c.matches("\\d+") ? Integer.valueOf(strM3110c).intValue() : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }
}
