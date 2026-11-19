package com.huawei.hem;

import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.RecyclerView;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.C1438yj;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.AccessControlException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* compiled from: Util.java */
/* renamed from: com.huawei.hem.tk */
/* loaded from: classes.dex */
public final class C1314tk {

    /* renamed from: a */
    public static final byte[] f3815a = new byte[0];

    /* renamed from: b */
    public static final String[] f3816b = new String[0];

    /* renamed from: c */
    public static final C1438yj f3817c = C1438yj.m3109f(new String[0]);

    /* renamed from: d */
    public static final AbstractC1139mk f3818d;

    /* renamed from: e */
    public static final OkioOptions f3819e;

    /* renamed from: f */
    public static final Charset f3820f;

    /* renamed from: g */
    public static final Charset f3821g;

    /* renamed from: h */
    public static final TimeZone f3822h;

    /* renamed from: i */
    public static final Comparator<String> f3823i;

    /* renamed from: j */
    public static final Method f3824j;

    /* renamed from: k */
    public static final Pattern f3825k;

    static {
        byte[] bArr = f3815a;
        OkioBuffer c1016hn = new OkioBuffer();
        c1016hn.m1986P(bArr);
        Method declaredMethod = null;
        f3818d = new C1114lk(null, bArr.length, c1016hn);
        AbstractC1063jk.m2135d(null, f3815a);
        f3819e = OkioOptions.m2777e(ByteString.decodeHex("efbbbf"), ByteString.decodeHex("feff"), ByteString.decodeHex("fffe"), ByteString.decodeHex("0000ffff"), ByteString.decodeHex("ffff0000"));
        f3820f = Charset.forName("UTF-32BE");
        f3821g = Charset.forName("UTF-32LE");
        f3822h = TimeZone.getTimeZone("GMT");
        f3823i = new Comparator() { // from class: com.huawei.hem.pk
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((String) obj).compareTo((String) obj2);
            }
        };
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        f3824j = declaredMethod;
        f3825k = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    /* renamed from: A */
    public static ThreadFactory m2743A(String str, boolean z) {
        return new ThreadFactoryC1239qk(str, z);
    }

    /* renamed from: B */
    public static C1438yj m2744B(List<Http2Header> list) {
        C1438yj.a aVar = new C1438yj.a();
        for (Http2Header c1415xl : list) {
            AbstractC1264rk.f3645a.mo1612a(aVar, c1415xl.f4091a.utf8(), c1415xl.f4092b.utf8());
        }
        return new C1438yj(aVar);
    }

    /* renamed from: C */
    public static String m2745C(String str, int i, int i2) {
        int iM2770y = m2770y(str, i, i2);
        return str.substring(iM2770y, m2771z(str, iM2770y, i2));
    }

    /* renamed from: a */
    public static String m2746a(String str) {
        int i = -1;
        int i2 = 0;
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                for (int i3 = 0; i3 < lowerCase.length(); i3++) {
                    char cCharAt = lowerCase.charAt(i3);
                    if (cCharAt > 31 && cCharAt < 127 && " #%/:?@[\\]".indexOf(cCharAt) == -1) {
                    }
                    i2 = 1;
                }
                if (i2 != 0) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressM2752g = (str.startsWith("[") && str.endsWith("]")) ? m2752g(str, 1, str.length() - 1) : m2752g(str, 0, str.length());
        if (inetAddressM2752g == null) {
            return null;
        }
        byte[] address = inetAddressM2752g.getAddress();
        if (address.length != 16) {
            if (address.length == 4) {
                return inetAddressM2752g.getHostAddress();
            }
            throw new AssertionError(CompilerOutline.m1761f("Invalid IPv6 address: '", str, "'"));
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < address.length) {
            int i6 = i4;
            while (i6 < 16 && address[i6] == 0 && address[i6 + 1] == 0) {
                i6 += 2;
            }
            int i7 = i6 - i4;
            if (i7 > i5 && i7 >= 4) {
                i = i4;
                i5 = i7;
            }
            i4 = i6 + 2;
        }
        OkioBuffer c1016hn = new OkioBuffer();
        while (i2 < address.length) {
            if (i2 == i) {
                c1016hn.m1988R(58);
                i2 += i5;
                if (i2 == 16) {
                    c1016hn.m1988R(58);
                }
            } else {
                if (i2 > 0) {
                    c1016hn.m1988R(58);
                }
                c1016hn.mo2010r(((address[i2] & Base64.EQUALS_SIGN_ENC) << 8) | (address[i2 + 1] & Base64.EQUALS_SIGN_ENC));
                i2 += 2;
            }
        }
        return c1016hn.m2004j();
    }

    /* renamed from: b */
    public static int m2747b(String str, long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(CompilerOutline.m1760e(str, " < 0"));
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(CompilerOutline.m1760e(str, " too large."));
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(CompilerOutline.m1760e(str, " too small."));
    }

    /* renamed from: c */
    public static void m2748c(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: d */
    public static void m2749d(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: e */
    public static void m2750e(Socket socket) throws IOException {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m2765t(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: f */
    public static int m2751f(char c) {
        if (c >= '0' && c <= '9') {
            return c - TransactionIdCreater.FILL_BYTE;
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x009a, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d9, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ab  */
    @javax.annotation.Nullable
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.InetAddress m2752g(java.lang.String r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1314tk.m2752g(java.lang.String, int, int):java.net.InetAddress");
    }

    /* renamed from: h */
    public static int m2753h(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: i */
    public static int m2754i(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: j */
    public static boolean m2755j(Source interfaceC0836ao, int i, TimeUnit timeUnit) {
        try {
            return m2769x(interfaceC0836ao, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    /* renamed from: k */
    public static String m2756k(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: l */
    public static String m2757l(String str, @Nullable String str2) {
        String property;
        try {
            property = System.getProperty(str);
        } catch (AccessControlException unused) {
        }
        if (property != null) {
            return property;
        }
        return null;
    }

    /* renamed from: m */
    public static String m2758m(OkHttpUrl c1463zj, boolean z) {
        String strM1762g = c1463zj.f4314d.contains(":") ? CompilerOutline.m1762g(CompilerOutline.m1765j("["), c1463zj.f4314d, "]") : c1463zj.f4314d;
        if (!z && c1463zj.f4315e == OkHttpUrl.m3151c(c1463zj.f4311a)) {
            return strM1762g;
        }
        StringBuilder sbM1767l = CompilerOutline.m1767l(strM1762g, ":");
        sbM1767l.append(c1463zj.f4315e);
        return sbM1767l.toString();
    }

    /* renamed from: n */
    public static <T> List<T> m2759n(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    @SafeVarargs
    /* renamed from: o */
    public static <T> List<T> m2760o(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: p */
    public static <K, V> Map<K, V> m2761p(Map<K, V> map) {
        return map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    /* renamed from: q */
    public static int m2762q(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: r */
    public static int m2763r(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: s */
    public static String[] m2764s(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: t */
    public static boolean m2765t(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: u */
    public static /* synthetic */ Thread m2766u(String str, boolean z, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(z);
        return thread;
    }

    /* renamed from: v */
    public static boolean m2767v(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: w */
    public static boolean m2768w(OkHttpUrl c1463zj, OkHttpUrl c1463zj2) {
        return c1463zj.f4314d.equals(c1463zj2.f4314d) && c1463zj.f4315e == c1463zj2.f4315e && c1463zj.f4311a.equals(c1463zj2.f4311a);
    }

    /* renamed from: x */
    public static boolean m2769x(Source interfaceC0836ao, int i, TimeUnit timeUnit) {
        long jNanoTime = System.nanoTime();
        long jMo1428c = interfaceC0836ao.mo1381n().mo1430e() ? interfaceC0836ao.mo1381n().mo1428c() - jNanoTime : Long.MAX_VALUE;
        interfaceC0836ao.mo1381n().mo1429d(Math.min(jMo1428c, timeUnit.toNanos(i)) + jNanoTime);
        try {
            OkioBuffer c1016hn = new OkioBuffer();
            while (interfaceC0836ao.mo1380e(c1016hn, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                c1016hn.m1996a();
            }
            if (jMo1428c == RecyclerView.FOREVER_NS) {
                interfaceC0836ao.mo1381n().mo1426a();
            } else {
                interfaceC0836ao.mo1381n().mo1429d(jNanoTime + jMo1428c);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (jMo1428c == RecyclerView.FOREVER_NS) {
                interfaceC0836ao.mo1381n().mo1426a();
            } else {
                interfaceC0836ao.mo1381n().mo1429d(jNanoTime + jMo1428c);
            }
            return false;
        } catch (Throwable th) {
            if (jMo1428c == RecyclerView.FOREVER_NS) {
                interfaceC0836ao.mo1381n().mo1426a();
            } else {
                interfaceC0836ao.mo1381n().mo1429d(jNanoTime + jMo1428c);
            }
            throw th;
        }
    }

    /* renamed from: y */
    public static int m2770y(String str, int i, int i2) {
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: z */
    public static int m2771z(String str, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            char cCharAt = str.charAt(i3);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i3 + 1;
            }
        }
        return i;
    }
}
