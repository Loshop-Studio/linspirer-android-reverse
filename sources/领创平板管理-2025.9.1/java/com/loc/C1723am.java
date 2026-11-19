package com.loc;

import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hem.C0891d1;
import com.huawei.hem.C0943f1;
import com.loc.AbstractC1728ar;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;

/* compiled from: BaseNetManager.java */
/* renamed from: com.loc.am */
/* loaded from: classes.dex */
public final class C1723am {

    /* renamed from: a */
    public static int f4933a = 0;

    /* renamed from: b */
    public static String f4934b = "";

    /* renamed from: c */
    public static HashMap<String, String> f4935c;

    /* renamed from: d */
    public static HashMap<String, String> f4936d;

    /* renamed from: e */
    public static HashMap<String, String> f4937e;

    /* renamed from: f */
    public static C1723am f4938f;

    /* compiled from: BaseNetManager.java */
    /* renamed from: com.loc.am$a */
    public interface a {
        /* renamed from: a */
        URLConnection m4068a();
    }

    public C1723am() {
        C0943f1.m1704G();
    }

    /* renamed from: a */
    public static int m4057a(AbstractC1728ar abstractC1728ar, long j) {
        try {
            m4067d(abstractC1728ar);
            long jElapsedRealtime = 0;
            if (j != 0) {
                jElapsedRealtime = SystemClock.elapsedRealtime() - j;
            }
            int iM4147m = abstractC1728ar.m4147m();
            if (abstractC1728ar.m4150p() != AbstractC1728ar.a.FIX && abstractC1728ar.m4150p() != AbstractC1728ar.a.SINGLE) {
                long j2 = iM4147m;
                if (jElapsedRealtime < j2) {
                    long j3 = j2 - jElapsedRealtime;
                    if (j3 >= 1000) {
                        return (int) j3;
                    }
                }
                return Math.min(1000, abstractC1728ar.m4147m());
            }
            return iM4147m;
        } catch (Throwable unused) {
            return 5000;
        }
    }

    /* renamed from: a */
    public static C1723am m4058a() {
        if (f4938f == null) {
            f4938f = new C1723am();
        }
        return f4938f;
    }

    /* renamed from: a */
    public static C1729as m4059a(AbstractC1728ar abstractC1728ar) {
        return m4061a(abstractC1728ar, abstractC1728ar.m4153s());
    }

    /* renamed from: a */
    public static C1729as m4060a(AbstractC1728ar abstractC1728ar, AbstractC1728ar.b bVar, int i) throws C0891d1 {
        try {
            m4067d(abstractC1728ar);
            abstractC1728ar.m4137a(bVar);
            abstractC1728ar.m4143c(i);
            return new C1726ap().m4110a(abstractC1728ar);
        } catch (C0891d1 e) {
            throw e;
        } catch (Throwable th) {
            th.printStackTrace();
            throw new C0891d1("未知的错误");
        }
    }

    @Deprecated
    /* renamed from: a */
    public static C1729as m4061a(AbstractC1728ar abstractC1728ar, boolean z) throws C0891d1 {
        byte[] bArr;
        m4067d(abstractC1728ar);
        abstractC1728ar.m4138a(z ? AbstractC1728ar.c.HTTPS : AbstractC1728ar.c.HTTP);
        C1729as c1729asM4060a = null;
        long jElapsedRealtime = 0;
        boolean z2 = false;
        if (m4063b(abstractC1728ar)) {
            boolean zM4065c = m4065c(abstractC1728ar);
            try {
                jElapsedRealtime = SystemClock.elapsedRealtime();
                c1729asM4060a = m4060a(abstractC1728ar, m4062b(abstractC1728ar, zM4065c), m4066d(abstractC1728ar, zM4065c));
            } catch (C0891d1 e) {
                if ((e.m1560f() == 21 && abstractC1728ar.m4150p() == AbstractC1728ar.a.INTERRUPT_IO) || !zM4065c) {
                    throw e;
                }
                z2 = true;
            }
        }
        if (c1729asM4060a != null && (bArr = c1729asM4060a.f5048a) != null && bArr.length > 0) {
            return c1729asM4060a;
        }
        try {
            return m4060a(abstractC1728ar, m4064c(abstractC1728ar, z2), m4057a(abstractC1728ar, jElapsedRealtime));
        } catch (C0891d1 e2) {
            throw e2;
        }
    }

    /* renamed from: b */
    public static AbstractC1728ar.b m4062b(AbstractC1728ar abstractC1728ar, boolean z) {
        if (abstractC1728ar.m4150p() == AbstractC1728ar.a.FIX) {
            return AbstractC1728ar.b.FIX_NONDEGRADE;
        }
        if (abstractC1728ar.m4150p() != AbstractC1728ar.a.SINGLE && z) {
            return AbstractC1728ar.b.FIRST_NONDEGRADE;
        }
        return AbstractC1728ar.b.NEVER_GRADE;
    }

    /* renamed from: b */
    public static boolean m4063b(AbstractC1728ar abstractC1728ar) throws C0891d1 {
        m4067d(abstractC1728ar);
        try {
            String strMo1739c = abstractC1728ar.mo1739c();
            if (TextUtils.isEmpty(strMo1739c)) {
                return false;
            }
            String host = new URL(strMo1739c).getHost();
            if (!TextUtils.isEmpty(abstractC1728ar.mo1741g())) {
                host = abstractC1728ar.mo1741g();
            }
            return C0943f1.m1703F(host);
        } catch (Throwable unused) {
            return true;
        }
    }

    /* renamed from: c */
    public static AbstractC1728ar.b m4064c(AbstractC1728ar abstractC1728ar, boolean z) {
        return abstractC1728ar.m4150p() == AbstractC1728ar.a.FIX ? z ? AbstractC1728ar.b.FIX_DEGRADE_BYERROR : AbstractC1728ar.b.FIX_DEGRADE_ONLY : z ? AbstractC1728ar.b.DEGRADE_BYERROR : AbstractC1728ar.b.DEGRADE_ONLY;
    }

    /* renamed from: c */
    public static boolean m4065c(AbstractC1728ar abstractC1728ar) throws C0891d1 {
        m4067d(abstractC1728ar);
        if (!m4063b(abstractC1728ar)) {
            return true;
        }
        if (abstractC1728ar.mo1737b().equals(abstractC1728ar.mo1739c()) || abstractC1728ar.m4150p() == AbstractC1728ar.a.SINGLE) {
            return false;
        }
        return C0943f1.f2601r;
    }

    /* renamed from: d */
    public static int m4066d(AbstractC1728ar abstractC1728ar, boolean z) {
        try {
            m4067d(abstractC1728ar);
            int iM4147m = abstractC1728ar.m4147m();
            int i = C0943f1.f2597n;
            if (abstractC1728ar.m4150p() != AbstractC1728ar.a.FIX) {
                if (abstractC1728ar.m4150p() != AbstractC1728ar.a.SINGLE && iM4147m >= i && z) {
                    return i;
                }
            }
            return iM4147m;
        } catch (Throwable unused) {
            return 5000;
        }
    }

    /* renamed from: d */
    public static void m4067d(AbstractC1728ar abstractC1728ar) throws C0891d1 {
        if (abstractC1728ar == null) {
            throw new C0891d1("requeust is null");
        }
        if (abstractC1728ar.mo1737b() == null || "".equals(abstractC1728ar.mo1737b())) {
            throw new C0891d1("request url is empty");
        }
    }
}
