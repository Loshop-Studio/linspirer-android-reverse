package com.huawei.hem;

import android.text.TextUtils;
import com.loc.InterfaceC1711aa;
import com.loc.InterfaceC1712ab;

/* compiled from: SDKInfo.java */
@InterfaceC1711aa(m3993a = "a")
/* renamed from: com.huawei.hem.k1 */
/* loaded from: classes.dex */
public final class C1069k1 {

    /* renamed from: a */
    @InterfaceC1712ab(m3995a = "a1", m3996b = 6)
    public String f3002a;

    /* renamed from: b */
    @InterfaceC1712ab(m3995a = "a2", m3996b = 6)
    public String f3003b;

    /* renamed from: c */
    @InterfaceC1712ab(m3995a = "a6", m3996b = 2)
    public int f3004c;

    /* renamed from: d */
    @InterfaceC1712ab(m3995a = "a4", m3996b = 6)
    public String f3005d;

    /* renamed from: e */
    @InterfaceC1712ab(m3995a = "a5", m3996b = 6)
    public String f3006e;

    /* renamed from: f */
    public String f3007f;

    /* renamed from: g */
    public String f3008g;

    /* renamed from: h */
    public String f3009h;

    /* renamed from: i */
    public String f3010i;

    /* renamed from: j */
    public String f3011j;

    /* renamed from: k */
    public String[] f3012k;

    /* compiled from: SDKInfo.java */
    /* renamed from: com.huawei.hem.k1$a */
    public static class a {

        /* renamed from: a */
        public String f3013a;

        /* renamed from: b */
        public String f3014b;

        /* renamed from: c */
        public String f3015c;

        /* renamed from: d */
        public String f3016d;

        /* renamed from: e */
        public boolean f3017e = true;

        /* renamed from: f */
        public String f3018f = "standard";

        /* renamed from: g */
        public String[] f3019g = null;

        public a(String str, String str2, String str3) {
            this.f3013a = str2;
            this.f3014b = str2;
            this.f3016d = str3;
            this.f3015c = str;
        }

        /* renamed from: a */
        public final a m2160a(String[] strArr) {
            if (strArr != null) {
                this.f3019g = (String[]) strArr.clone();
            }
            return this;
        }

        /* renamed from: b */
        public final C1069k1 m2161b() throws C0891d1 {
            if (this.f3019g != null) {
                return new C1069k1(this, (byte) 0);
            }
            throw new C0891d1("sdk packages is null");
        }
    }

    public C1069k1() {
        this.f3004c = 1;
        this.f3012k = null;
    }

    public C1069k1(a aVar, byte b) {
        this.f3004c = 1;
        String string = null;
        this.f3012k = null;
        this.f3007f = aVar.f3013a;
        String str = aVar.f3014b;
        this.f3008g = str;
        this.f3010i = aVar.f3015c;
        this.f3009h = aVar.f3016d;
        this.f3004c = aVar.f3017e ? 1 : 0;
        this.f3011j = aVar.f3018f;
        this.f3012k = aVar.f3019g;
        this.f3003b = C1094l1.m2247p(str);
        this.f3002a = C1094l1.m2247p(this.f3010i);
        C1094l1.m2247p(this.f3009h);
        String[] strArr = this.f3012k;
        if (strArr != null) {
            try {
                StringBuilder sb = new StringBuilder();
                for (String str2 : strArr) {
                    sb.append(str2);
                    sb.append(";");
                }
                string = sb.toString();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        this.f3005d = C1094l1.m2247p(string);
        this.f3006e = C1094l1.m2247p(this.f3011j);
    }

    /* renamed from: a */
    public final String m2156a() {
        if (TextUtils.isEmpty(this.f3010i) && !TextUtils.isEmpty(this.f3002a)) {
            this.f3010i = C1094l1.m2251t(this.f3002a);
        }
        return this.f3010i;
    }

    /* renamed from: b */
    public final String m2157b() {
        if (TextUtils.isEmpty(this.f3008g) && !TextUtils.isEmpty(this.f3003b)) {
            this.f3008g = C1094l1.m2251t(this.f3003b);
        }
        return this.f3008g;
    }

    /* renamed from: c */
    public final String m2158c() {
        if (TextUtils.isEmpty(this.f3011j) && !TextUtils.isEmpty(this.f3006e)) {
            this.f3011j = C1094l1.m2251t(this.f3006e);
        }
        if (TextUtils.isEmpty(this.f3011j)) {
            this.f3011j = "standard";
        }
        return this.f3011j;
    }

    /* renamed from: d */
    public final String[] m2159d() {
        String[] strArrSplit;
        String[] strArr = this.f3012k;
        if ((strArr == null || strArr.length == 0) && !TextUtils.isEmpty(this.f3005d)) {
            try {
                strArrSplit = C1094l1.m2251t(this.f3005d).split(";");
            } catch (Throwable th) {
                th.printStackTrace();
                strArrSplit = null;
            }
            this.f3012k = strArrSplit;
        }
        return (String[]) this.f3012k.clone();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (C1069k1.class != obj.getClass()) {
            return false;
        }
        try {
            if (this.f3010i.equals(((C1069k1) obj).f3010i) && this.f3007f.equals(((C1069k1) obj).f3007f)) {
                if (this.f3008g.equals(((C1069k1) obj).f3008g)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
