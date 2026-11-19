package com.huawei.hem;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* compiled from: ConnectionSpec.java */
/* renamed from: com.huawei.hem.pj */
/* loaded from: classes.dex */
public final class ConnectionSpec {

    /* renamed from: e */
    public static final CipherSuite[] f3466e = {CipherSuite.f3349q, CipherSuite.f3350r, CipherSuite.f3351s, CipherSuite.f3343k, CipherSuite.f3345m, CipherSuite.f3344l, CipherSuite.f3346n, CipherSuite.f3348p, CipherSuite.f3347o};

    /* renamed from: f */
    public static final CipherSuite[] f3467f = {CipherSuite.f3349q, CipherSuite.f3350r, CipherSuite.f3351s, CipherSuite.f3343k, CipherSuite.f3345m, CipherSuite.f3344l, CipherSuite.f3346n, CipherSuite.f3348p, CipherSuite.f3347o, CipherSuite.f3341i, CipherSuite.f3342j, CipherSuite.f3339g, CipherSuite.f3340h, CipherSuite.f3337e, CipherSuite.f3338f, CipherSuite.f3336d};

    /* renamed from: g */
    public static final ConnectionSpec f3468g;

    /* renamed from: h */
    public static final ConnectionSpec f3469h;

    /* renamed from: a */
    public final boolean f3470a;

    /* renamed from: b */
    public final boolean f3471b;

    /* renamed from: c */
    @Nullable
    public final String[] f3472c;

    /* renamed from: d */
    @Nullable
    public final String[] f3473d;

    /* compiled from: ConnectionSpec.java */
    /* renamed from: com.huawei.hem.pj$a */
    public static final class a {

        /* renamed from: a */
        public boolean f3474a;

        /* renamed from: b */
        @Nullable
        public String[] f3475b;

        /* renamed from: c */
        @Nullable
        public String[] f3476c;

        /* renamed from: d */
        public boolean f3477d;

        public a(boolean z) {
            this.f3474a = z;
        }

        /* renamed from: a */
        public a m2486a(String... strArr) {
            if (!this.f3474a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f3475b = (String[]) strArr.clone();
            return this;
        }

        /* renamed from: b */
        public a m2487b(CipherSuite... c1163njArr) {
            if (!this.f3474a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[c1163njArr.length];
            for (int i = 0; i < c1163njArr.length; i++) {
                strArr[i] = c1163njArr[i].f3352a;
            }
            m2486a(strArr);
            return this;
        }

        /* renamed from: c */
        public a m2488c(boolean z) {
            if (!this.f3474a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f3477d = z;
            return this;
        }

        /* renamed from: d */
        public a m2489d(String... strArr) {
            if (!this.f3474a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f3476c = (String[]) strArr.clone();
            return this;
        }

        /* renamed from: e */
        public a m2490e(TlsVersion... enumC1189okArr) {
            if (!this.f3474a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[enumC1189okArr.length];
            for (int i = 0; i < enumC1189okArr.length; i++) {
                strArr[i] = enumC1189okArr[i].javaName;
            }
            m2489d(strArr);
            return this;
        }
    }

    static {
        a aVar = new a(true);
        aVar.m2487b(f3466e);
        aVar.m2490e(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2);
        aVar.m2488c(true);
        a aVar2 = new a(true);
        aVar2.m2487b(f3467f);
        aVar2.m2490e(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2);
        aVar2.m2488c(true);
        f3468g = new ConnectionSpec(aVar2);
        a aVar3 = new a(true);
        aVar3.m2487b(f3467f);
        aVar3.m2490e(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0);
        aVar3.m2488c(true);
        f3469h = new ConnectionSpec(new a(false));
    }

    public ConnectionSpec(a aVar) {
        this.f3470a = aVar.f3474a;
        this.f3472c = aVar.f3475b;
        this.f3473d = aVar.f3476c;
        this.f3471b = aVar.f3477d;
    }

    /* renamed from: a */
    public boolean m2485a(SSLSocket sSLSocket) {
        if (!this.f3470a) {
            return false;
        }
        String[] strArr = this.f3473d;
        if (strArr != null && !OkHttpCommonUtilities.m2767v(OkHttpCommonUtilities.f3823i, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f3472c;
        return strArr2 == null || OkHttpCommonUtilities.m2767v(CipherSuite.f3334b, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ConnectionSpec)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ConnectionSpec c1213pj = (ConnectionSpec) obj;
        boolean z = this.f3470a;
        if (z != c1213pj.f3470a) {
            return false;
        }
        return !z || (Arrays.equals(this.f3472c, c1213pj.f3472c) && Arrays.equals(this.f3473d, c1213pj.f3473d) && this.f3471b == c1213pj.f3471b);
    }

    public int hashCode() {
        if (this.f3470a) {
            return ((((527 + Arrays.hashCode(this.f3472c)) * 31) + Arrays.hashCode(this.f3473d)) * 31) + (!this.f3471b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        List listUnmodifiableList;
        if (!this.f3470a) {
            return "ConnectionSpec()";
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("ConnectionSpec(cipherSuites=");
        String[] strArr = this.f3472c;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(CipherSuite.m2414a(str));
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        } else {
            listUnmodifiableList = null;
        }
        sbM1765j.append(Objects.toString(listUnmodifiableList, "[all enabled]"));
        sbM1765j.append(", tlsVersions=");
        String[] strArr2 = this.f3473d;
        sbM1765j.append(Objects.toString(strArr2 != null ? TlsVersion.forJavaNames(strArr2) : null, "[all enabled]"));
        sbM1765j.append(", supportsTlsExtensions=");
        sbM1765j.append(this.f3471b);
        sbM1765j.append(")");
        return sbM1765j.toString();
    }
}
