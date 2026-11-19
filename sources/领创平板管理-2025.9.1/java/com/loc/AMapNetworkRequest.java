package com.loc;

import android.text.TextUtils;
import com.huawei.hem.ConstConfig;
import com.huawei.hms.framework.common.ContainerUtils;
import com.loc.BaseNetManager;
import java.net.Proxy;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Request.java */
/* renamed from: com.loc.ar */
/* loaded from: classes.dex */
public abstract class AMapNetworkRequest {

    /* renamed from: f */
    public BaseNetManager.a f5021f;

    /* renamed from: h */
    public String f5023h;

    /* renamed from: i */
    public boolean f5024i;

    /* renamed from: j */
    public boolean f5025j;

    /* renamed from: c */
    public int f5018c = 20000;

    /* renamed from: d */
    public int f5019d = 20000;

    /* renamed from: e */
    public Proxy f5020e = null;

    /* renamed from: a */
    public boolean f5016a = false;

    /* renamed from: b */
    public int f5017b = 20000;

    /* renamed from: g */
    public boolean f5022g = true;

    /* renamed from: k */
    public a f5026k = a.NORMAL;

    /* renamed from: l */
    public b f5027l = b.FIRST_NONDEGRADE;

    /* compiled from: Request.java */
    /* renamed from: com.loc.ar$a */
    public enum a {
        NORMAL(0),
        INTERRUPT_IO(1),
        NEVER(2),
        FIX(3),
        SINGLE(4);


        /* renamed from: f */
        public int f5034f;

        a(int i) {
            this.f5034f = i;
        }
    }

    /* compiled from: Request.java */
    /* renamed from: com.loc.ar$b */
    public enum b {
        FIRST_NONDEGRADE(0),
        NEVER_GRADE(1),
        DEGRADE_BYERROR(2),
        DEGRADE_ONLY(3),
        FIX_NONDEGRADE(4),
        FIX_DEGRADE_BYERROR(5),
        FIX_DEGRADE_ONLY(6);


        /* renamed from: h */
        public int f5043h;

        b(int i) {
            this.f5043h = i;
        }

        /* renamed from: a */
        public final int m4161a() {
            return this.f5043h;
        }

        /* renamed from: b */
        public final boolean m4162b() {
            int i = this.f5043h;
            return i == FIRST_NONDEGRADE.f5043h || i == NEVER_GRADE.f5043h || i == FIX_NONDEGRADE.f5043h;
        }

        /* renamed from: c */
        public final boolean m4163c() {
            int i = this.f5043h;
            return i == DEGRADE_BYERROR.f5043h || i == DEGRADE_ONLY.f5043h || i == FIX_DEGRADE_BYERROR.f5043h || i == FIX_DEGRADE_ONLY.f5043h;
        }

        /* renamed from: d */
        public final boolean m4164d() {
            int i = this.f5043h;
            return i == DEGRADE_BYERROR.f5043h || i == FIX_DEGRADE_BYERROR.f5043h;
        }

        /* renamed from: e */
        public final boolean m4165e() {
            return this.f5043h == NEVER_GRADE.f5043h;
        }
    }

    /* compiled from: Request.java */
    /* renamed from: com.loc.ar$c */
    public enum c {
        HTTP(0),
        HTTPS(1);


        /* renamed from: c */
        public int f5047c;

        c(int i) {
            this.f5047c = i;
        }
    }

    /* renamed from: a */
    public static String m4132a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        try {
            if (map.containsKey("platinfo")) {
                return m4134c(map.get("platinfo"));
            }
            return null;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ht", "pnfh");
            return null;
        }
    }

    /* renamed from: b */
    private String m4133b(String str) {
        byte[] bArrMo4056e = mo4056e();
        if (bArrMo4056e == null || bArrMo4056e.length == 0) {
            return str;
        }
        Map<String, String> mapMo4055d = mo4055d();
        HashMap<String, String> map = BaseNetManager.f4937e;
        if (map != null) {
            if (mapMo4055d != null) {
                mapMo4055d.putAll(map);
            } else {
                mapMo4055d = map;
            }
        }
        if (mapMo4055d == null) {
            return str;
        }
        String strM4098a = HttpUrlUtil.m4098a(mapMo4055d);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("?");
        stringBuffer.append(strM4098a);
        return stringBuffer.toString();
    }

    /* renamed from: c */
    public static String m4134c(String str) {
        String str2;
        String strTrim = "";
        try {
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split("&");
                if (strArrSplit.length > 1) {
                    int length = strArrSplit.length;
                    int i = 0;
                    String str3 = "";
                    while (true) {
                        if (i >= length) {
                            str2 = "";
                            break;
                        }
                        str2 = strArrSplit[i];
                        if (str2.contains("sdkversion")) {
                            str3 = str2;
                        }
                        if (str2.contains("product")) {
                            break;
                        }
                        i++;
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        String[] strArrSplit2 = str2.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        if (strArrSplit2.length > 1) {
                            strTrim = strArrSplit2[1].trim();
                            if (!TextUtils.isEmpty(str3) && TextUtils.isEmpty(ConstConfig.m2344a(strTrim))) {
                                String[] strArrSplit3 = str3.split(ContainerUtils.KEY_VALUE_DELIMITER);
                                if (strArrSplit3.length > 1) {
                                    ConstConfig.m2345b(strTrim, strArrSplit3[1].trim());
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ht", "pnfp");
        }
        return strTrim;
    }

    /* renamed from: a */
    public abstract Map<String, String> mo1735a();

    /* renamed from: a */
    public final void m4135a(int i) {
        this.f5018c = i;
    }

    /* renamed from: a */
    public final void m4136a(a aVar) {
        this.f5026k = aVar;
    }

    /* renamed from: a */
    public final void m4137a(b bVar) {
        this.f5027l = bVar;
    }

    /* renamed from: a */
    public final void m4138a(c cVar) {
        this.f5025j = cVar == c.HTTPS;
    }

    /* renamed from: a */
    public final void m4139a(String str) {
        this.f5023h = str;
    }

    /* renamed from: a */
    public final void m4140a(Proxy proxy) {
        this.f5020e = proxy;
    }

    /* renamed from: a */
    public final void m4141a(boolean z) {
        this.f5024i = z;
    }

    /* renamed from: b */
    public abstract String mo1737b();

    /* renamed from: b */
    public final void m4142b(int i) {
        this.f5019d = i;
    }

    /* renamed from: c */
    public String mo1739c() {
        return mo1737b();
    }

    /* renamed from: c */
    public final void m4143c(int i) {
        this.f5017b = i;
    }

    /* renamed from: c_ */
    public boolean mo4144c_() {
        return this.f5022g;
    }

    /* renamed from: d */
    public abstract Map<String, String> mo4055d();

    /* renamed from: e */
    public byte[] mo4056e() {
        return null;
    }

    /* renamed from: g */
    public String mo1741g() {
        return "";
    }

    /* renamed from: k */
    public final String m4145k() {
        return m4133b(mo1737b());
    }

    /* renamed from: l */
    public final String m4146l() {
        return m4133b(mo1739c());
    }

    /* renamed from: m */
    public final int m4147m() {
        return this.f5018c;
    }

    /* renamed from: n */
    public final Proxy m4148n() {
        return this.f5020e;
    }

    /* renamed from: o */
    public String mo4149o() {
        return "";
    }

    /* renamed from: p */
    public final a m4150p() {
        return this.f5026k;
    }

    /* renamed from: q */
    public final boolean m4151q() {
        return this.f5016a;
    }

    /* renamed from: r */
    public final void m4152r() {
        this.f5016a = true;
    }

    /* renamed from: s */
    public final boolean m4153s() {
        return this.f5025j;
    }

    /* renamed from: t */
    public final BaseNetManager.a m4154t() {
        return this.f5021f;
    }

    /* renamed from: u */
    public final b m4155u() {
        return this.f5027l;
    }

    /* renamed from: v */
    public final int m4156v() {
        return this.f5017b;
    }

    /* renamed from: w */
    public final void m4157w() {
        this.f5022g = false;
    }

    /* renamed from: x */
    public final String m4158x() {
        return this.f5023h;
    }

    /* renamed from: y */
    public final boolean m4159y() {
        return this.f5024i;
    }

    /* renamed from: z */
    public final String m4160z() {
        String strMo4149o;
        try {
            strMo4149o = mo4149o();
            try {
                if (TextUtils.isEmpty(strMo4149o)) {
                    strMo4149o = this.f5016a ? m4134c(((BinaryRequest) this).mo4075i()) : m4132a(mo1735a());
                }
            } catch (Throwable th) {
                th = th;
                BasicLogHandler.m5312a(th, "ht", "pnfr");
                return strMo4149o;
            }
        } catch (Throwable th2) {
            th = th2;
            strMo4149o = "";
        }
        return strMo4149o;
    }
}
