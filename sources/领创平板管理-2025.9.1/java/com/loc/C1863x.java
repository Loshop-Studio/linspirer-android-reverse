package com.loc;

import android.content.Context;
import android.os.Build;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.C0891d1;
import com.huawei.hem.C0917e1;
import com.huawei.hem.C1069k1;
import com.huawei.hem.C1094l1;
import com.huawei.hem.C1219q0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ErrorLogManager.java */
/* renamed from: com.loc.x */
/* loaded from: classes.dex */
public class C1863x {

    /* renamed from: a */
    public static WeakReference<C1730at> f5967a = null;

    /* renamed from: b */
    public static boolean f5968b = true;

    /* renamed from: c */
    public static WeakReference<AbstractC1750bm> f5969c = null;

    /* renamed from: d */
    public static WeakReference<AbstractC1750bm> f5970d = null;

    /* renamed from: e */
    public static String[] f5971e = new String[10];

    /* renamed from: f */
    public static int f5972f = 0;

    /* renamed from: g */
    public static boolean f5973g = false;

    /* renamed from: h */
    public static int f5974h;

    /* renamed from: i */
    public static C1069k1 f5975i;

    /* renamed from: a */
    public static C1069k1 m5335a(String str) {
        List<C1069k1> listM5318a = C1860u.m5318a();
        if (listM5318a == null) {
            listM5318a = new ArrayList();
        }
        if (str != null && !"".equals(str)) {
            for (C1069k1 c1069k1 : listM5318a) {
                if (C1860u.m5322a(c1069k1.m2159d(), str)) {
                    return c1069k1;
                }
            }
            if (str.contains("com.amap.api.col")) {
                try {
                    return C1094l1.m2232a();
                } catch (C0891d1 e) {
                    e.printStackTrace();
                }
            }
            if (str.contains("com.amap.co") || str.contains("com.amap.opensdk.co") || str.contains("com.amap.location")) {
                try {
                    C1069k1 c1069k1M2246o = C1094l1.m2246o();
                    c1069k1M2246o.f3004c = 1;
                    return c1069k1M2246o;
                } catch (C0891d1 e2) {
                    e2.printStackTrace();
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0102 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x00b3 -> B:104:0x00f9). Please report as a decompilation issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m5336a(java.util.List<com.huawei.hem.C1069k1> r11) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1863x.m5336a(java.util.List):java.lang.String");
    }

    /* renamed from: a */
    public static void m5338a(Context context) {
        String strM5336a;
        C1069k1 c1069k1;
        List<C1069k1> listM5318a = C1860u.m5318a();
        if (listM5318a == null || listM5318a.size() == 0 || (strM5336a = m5336a(listM5318a)) == null || "".equals(strM5336a) || (c1069k1 = f5975i) == null) {
            return;
        }
        m5339a(context, c1069k1, 2, "ANR", strM5336a);
    }

    /* renamed from: a */
    public static void m5340a(final Context context, final AbstractC1750bm abstractC1750bm, final String str) {
        C1753bp.m4236a().m4242b(new AbstractRunnableC1754bq() { // from class: com.loc.x.1
            @Override // com.loc.AbstractRunnableC1754bq
            /* renamed from: a */
            public final void mo1093a() {
                try {
                    synchronized (C1863x.class) {
                        C1730at c1730atM4191a = C1736az.m4191a(C1863x.f5967a);
                        C1736az.m4195a(context, c1730atM4191a, str, 1000, 4096000, "1");
                        c1730atM4191a.f5059f = abstractC1750bm;
                        if (c1730atM4191a.f5060g == null) {
                            c1730atM4191a.f5060g = new C1741bd(new C1740bc(context, new C1745bh(), new C1716af(new C1718ah(new C1719ai())), "QImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJhZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMi", C0917e1.m1641g(context), DeviceInfo.m1091y(context), DeviceInfo.m1090x(context), C0917e1.m1638d(context), Build.MODEL, C0917e1.m1636b(context), C0917e1.m1639e(context), Build.VERSION.RELEASE));
                        }
                        c1730atM4191a.f5061h = 3600000;
                        C1731au.m4166a(c1730atM4191a);
                    }
                } catch (Throwable th) {
                    C1862w.m5333b(th, "lg", "pul");
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5341a(Context context, Throwable th, int i, String str, String str2) {
        String strM2235d = C1094l1.m2235d(th);
        C1069k1 c1069k1M5335a = m5335a(strM2235d);
        if (m5343a(c1069k1M5335a)) {
            String strReplaceAll = strM2235d.replaceAll("\n", "<br/>");
            String string = th.toString();
            if (string == null || "".equals(string)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            if (str != null) {
                sb.append("class:");
                sb.append(str);
            }
            if (str2 != null) {
                sb.append(" method:");
                sb.append(str2);
                sb.append("$<br/>");
            }
            sb.append(strReplaceAll);
            m5339a(context, c1069k1M5335a, i, string, sb.toString());
        }
    }

    /* renamed from: a */
    public static void m5342a(C1069k1 c1069k1, Context context, String str, String str2) {
        if (!m5343a(c1069k1) || str == null || "".equals(str)) {
            return;
        }
        m5339a(context, c1069k1, 1, str, str2);
    }

    /* renamed from: b */
    public static String m5344b() {
        StringBuilder sb = new StringBuilder();
        try {
            for (int i = f5972f; i < 10 && i <= 9; i++) {
                sb.append(f5971e[i]);
            }
            for (int i2 = 0; i2 < f5972f; i2++) {
                sb.append(f5971e[i2]);
            }
        } catch (Throwable th) {
            C1862w.m5333b(th, "alg", "gLI");
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static void m5345b(Context context) {
        C1748bk c1748bk = new C1748bk(f5968b);
        f5968b = false;
        m5340a(context, c1748bk, C1860u.f5943c);
    }

    /* renamed from: c */
    public static void m5346c(Context context) {
        WeakReference<AbstractC1750bm> weakReference = f5969c;
        if (weakReference == null || weakReference.get() == null) {
            f5969c = new WeakReference<>(new C1749bl(context, 3600000, "hKey", new C1751bn(context)));
        }
        m5340a(context, f5969c.get(), C1860u.f5944d);
    }

    /* renamed from: d */
    public static void m5347d(Context context) {
        WeakReference<AbstractC1750bm> weakReference = f5970d;
        if (weakReference == null || weakReference.get() == null) {
            f5970d = new WeakReference<>(new C1749bl(context, 3600000, "gKey", new C1751bn(context)));
        }
        m5340a(context, f5970d.get(), C1860u.f5942b);
    }

    /* renamed from: a */
    public static void m5339a(Context context, C1069k1 c1069k1, int i, String str, String str2) {
        byte[] bArrM2520p;
        String str3;
        String strM4192a = C1736az.m4192a();
        String strM4193a = C1736az.m4193a(context, c1069k1);
        try {
            C0917e1.m1642h(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        String strM4194a = C1736az.m4194a(strM4193a, strM4192a, i, str, str2);
        if (strM4194a == null || "".equals(strM4194a)) {
            return;
        }
        try {
            bArrM2520p = C1219q0.m2520p(str2);
        } catch (Throwable th2) {
            th2.printStackTrace();
            bArrM2520p = new byte[0];
        }
        String strM2228A = C1094l1.m2228A(bArrM2520p);
        if (i == 1) {
            str3 = C1860u.f5942b;
        } else if (i == 2) {
            str3 = C1860u.f5944d;
        } else if (i != 0) {
            return;
        } else {
            str3 = C1860u.f5943c;
        }
        String str4 = str3;
        C1730at c1730atM4191a = C1736az.m4191a(f5967a);
        C1736az.m4195a(context, c1730atM4191a, str4, 1000, 4096000, "1");
        if (c1730atM4191a.f5058e == null) {
            c1730atM4191a.f5058e = new C1715ae(new C1716af(new C1718ah(new C1719ai())));
        }
        try {
            C1731au.m4168a(strM2228A, C1094l1.m2245n(strM4194a.replaceAll("\n", "<br/>")), c1730atM4191a);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static boolean m5343a(C1069k1 c1069k1) {
        if (c1069k1 != null) {
            if (c1069k1.f3004c == 1) {
                return true;
            }
        }
        return false;
    }
}
