package com.loc;

import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hem.AMapCoreException;
import com.huawei.hem.AuthConfigManager;
import com.loc.AMapNetworkRequest;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;

/* compiled from: BaseNetManager.java */
/* renamed from: com.loc.am */
/* loaded from: classes.dex */
public final class BaseNetManager {

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
    public static BaseNetManager f4938f;

    /* compiled from: BaseNetManager.java */
    /* renamed from: com.loc.am$a */
    public interface a {
        /* renamed from: a */
        URLConnection m4068a();
    }

    public BaseNetManager() {
        AuthConfigManager.m1704G();
    }

    /* renamed from: a */
    public static int m4057a(AMapNetworkRequest abstractC1728ar, long j) {
        try {
            m4067d(abstractC1728ar);
            long jElapsedRealtime = 0;
            if (j != 0) {
                jElapsedRealtime = SystemClock.elapsedRealtime() - j;
            }
            int iM4147m = abstractC1728ar.m4147m();
            if (abstractC1728ar.m4150p() != AMapNetworkRequest.a.FIX && abstractC1728ar.m4150p() != AMapNetworkRequest.a.SINGLE) {
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
    public static BaseNetManager m4058a() {
        if (f4938f == null) {
            f4938f = new BaseNetManager();
        }
        return f4938f;
    }

    /* renamed from: a */
    public static ResponseEntity m4059a(AMapNetworkRequest abstractC1728ar) {
        return m4061a(abstractC1728ar, abstractC1728ar.m4153s());
    }

    /* renamed from: a */
    public static ResponseEntity m4060a(AMapNetworkRequest abstractC1728ar, AMapNetworkRequest.b bVar, int i) throws AMapCoreException {
        try {
            m4067d(abstractC1728ar);
            abstractC1728ar.m4137a(bVar);
            abstractC1728ar.m4143c(i);
            return new HttpUrlUtil().m4110a(abstractC1728ar);
        } catch (AMapCoreException e) {
            throw e;
        } catch (Throwable th) {
            th.printStackTrace();
            throw new AMapCoreException("未知的错误");
        }
    }

    @Deprecated
    /* renamed from: a */
    public static ResponseEntity m4061a(AMapNetworkRequest abstractC1728ar, boolean z) throws AMapCoreException {
        byte[] bArr;
        m4067d(abstractC1728ar);
        abstractC1728ar.m4138a(z ? AMapNetworkRequest.c.HTTPS : AMapNetworkRequest.c.HTTP);
        ResponseEntity c1729asM4060a = null;
        long jElapsedRealtime = 0;
        boolean z2 = false;
        if (m4063b(abstractC1728ar)) {
            boolean zM4065c = m4065c(abstractC1728ar);
            try {
                jElapsedRealtime = SystemClock.elapsedRealtime();
                c1729asM4060a = m4060a(abstractC1728ar, m4062b(abstractC1728ar, zM4065c), m4066d(abstractC1728ar, zM4065c));
            } catch (AMapCoreException e) {
                if ((e.m1560f() == 21 && abstractC1728ar.m4150p() == AMapNetworkRequest.a.INTERRUPT_IO) || !zM4065c) {
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
        } catch (AMapCoreException e2) {
            throw e2;
        }
    }

    /* renamed from: b */
    public static AMapNetworkRequest.b m4062b(AMapNetworkRequest abstractC1728ar, boolean z) {
        if (abstractC1728ar.m4150p() == AMapNetworkRequest.a.FIX) {
            return AMapNetworkRequest.b.FIX_NONDEGRADE;
        }
        if (abstractC1728ar.m4150p() != AMapNetworkRequest.a.SINGLE && z) {
            return AMapNetworkRequest.b.FIRST_NONDEGRADE;
        }
        return AMapNetworkRequest.b.NEVER_GRADE;
    }

    /* renamed from: b */
    public static boolean m4063b(AMapNetworkRequest abstractC1728ar) throws AMapCoreException {
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
            return AuthConfigManager.m1703F(host);
        } catch (Throwable unused) {
            return true;
        }
    }

    /* renamed from: c */
    public static AMapNetworkRequest.b m4064c(AMapNetworkRequest abstractC1728ar, boolean z) {
        return abstractC1728ar.m4150p() == AMapNetworkRequest.a.FIX ? z ? AMapNetworkRequest.b.FIX_DEGRADE_BYERROR : AMapNetworkRequest.b.FIX_DEGRADE_ONLY : z ? AMapNetworkRequest.b.DEGRADE_BYERROR : AMapNetworkRequest.b.DEGRADE_ONLY;
    }

    /* renamed from: c */
    public static boolean m4065c(AMapNetworkRequest abstractC1728ar) throws AMapCoreException {
        m4067d(abstractC1728ar);
        if (!m4063b(abstractC1728ar)) {
            return true;
        }
        if (abstractC1728ar.mo1737b().equals(abstractC1728ar.mo1739c()) || abstractC1728ar.m4150p() == AMapNetworkRequest.a.SINGLE) {
            return false;
        }
        return AuthConfigManager.f2601r;
    }

    /* renamed from: d */
    public static int m4066d(AMapNetworkRequest abstractC1728ar, boolean z) {
        try {
            m4067d(abstractC1728ar);
            int iM4147m = abstractC1728ar.m4147m();
            int i = AuthConfigManager.f2597n;
            if (abstractC1728ar.m4150p() != AMapNetworkRequest.a.FIX) {
                if (abstractC1728ar.m4150p() != AMapNetworkRequest.a.SINGLE && iM4147m >= i && z) {
                    return i;
                }
            }
            return iM4147m;
        } catch (Throwable unused) {
            return 5000;
        }
    }

    /* renamed from: d */
    public static void m4067d(AMapNetworkRequest abstractC1728ar) throws AMapCoreException {
        if (abstractC1728ar == null) {
            throw new AMapCoreException("requeust is null");
        }
        if (abstractC1728ar.mo1737b() == null || "".equals(abstractC1728ar.mo1737b())) {
            throw new AMapCoreException("request url is empty");
        }
    }
}
