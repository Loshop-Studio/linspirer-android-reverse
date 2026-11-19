package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import anet.channel.request.Request;
import anet.channel.util.HttpConstant;
import com.huawei.hem.CookieJar;

/* compiled from: HttpHeaders.java */
/* renamed from: com.huawei.hem.pl */
/* loaded from: classes.dex */
public final class OkHttpHeaders {
    static {
        ByteString.encodeUtf8("\"\\");
        ByteString.encodeUtf8("\t ,=");
    }

    /* renamed from: a */
    public static long m2491a(OkHttpResponse c1088kk) {
        String strM3110c = c1088kk.f3096f.m3110c(HttpConstant.CONTENT_LENGTH);
        if (strM3110c == null) {
            return -1L;
        }
        try {
            return Long.parseLong(strM3110c);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* renamed from: b */
    public static boolean m2492b(OkHttpResponse c1088kk) {
        if (c1088kk.f3091a.f2786b.equals(Request.Method.HEAD)) {
            return false;
        }
        int i = c1088kk.f3093c;
        if (((i >= 100 && i < 200) || i == 204 || i == 304) && m2491a(c1088kk) == -1) {
            String strM3110c = c1088kk.f3096f.m3110c("Transfer-Encoding");
            if (strM3110c == null) {
                strM3110c = null;
            }
            if (!"chunked".equalsIgnoreCase(strM3110c)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static int m2493c(String str, int i) throws NumberFormatException {
        try {
            long j = Long.parseLong(str);
            if (j > 2147483647L) {
                return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            if (j < 0) {
                return 0;
            }
            return (int) j;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    /* renamed from: d */
    public static void m2494d(CookieJar interfaceC1263rj, OkHttpUrl c1463zj, OkHttpHeaderList c1438yj) {
        if (interfaceC1263rj != CookieJar.f3644a && !Cookie.m2643b(c1463zj, c1438yj).isEmpty() && ((CookieJar.a) interfaceC1263rj) == null) {
            throw null;
        }
    }

    /* renamed from: e */
    public static int m2495e(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }
}
