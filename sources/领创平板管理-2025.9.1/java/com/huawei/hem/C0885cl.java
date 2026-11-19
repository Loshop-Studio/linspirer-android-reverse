package com.huawei.hem;

import com.huawei.hem.C0910dk;
import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* compiled from: ConnectionSpecSelector.java */
/* renamed from: com.huawei.hem.cl */
/* loaded from: classes.dex */
public final class C0885cl {

    /* renamed from: a */
    public final List<C1213pj> f2356a;

    /* renamed from: b */
    public int f2357b = 0;

    /* renamed from: c */
    public boolean f2358c;

    /* renamed from: d */
    public boolean f2359d;

    public C0885cl(List<C1213pj> list) {
        this.f2356a = list;
    }

    /* renamed from: a */
    public C1213pj m1540a(SSLSocket sSLSocket) throws UnknownServiceException {
        C1213pj c1213pj;
        boolean z;
        int i = this.f2357b;
        int size = this.f2356a.size();
        while (true) {
            if (i >= size) {
                c1213pj = null;
                break;
            }
            c1213pj = this.f2356a.get(i);
            if (c1213pj.m2485a(sSLSocket)) {
                this.f2357b = i + 1;
                break;
            }
            i++;
        }
        if (c1213pj == null) {
            StringBuilder sbM1765j = C0948f6.m1765j("Unable to find acceptable protocols. isFallback=");
            sbM1765j.append(this.f2359d);
            sbM1765j.append(", modes=");
            sbM1765j.append(this.f2356a);
            sbM1765j.append(", supported protocols=");
            sbM1765j.append(Arrays.toString(sSLSocket.getEnabledProtocols()));
            throw new UnknownServiceException(sbM1765j.toString());
        }
        int i2 = this.f2357b;
        while (true) {
            if (i2 >= this.f2356a.size()) {
                z = false;
                break;
            }
            if (this.f2356a.get(i2).m2485a(sSLSocket)) {
                z = true;
                break;
            }
            i2++;
        }
        this.f2358c = z;
        AbstractC1264rk abstractC1264rk = AbstractC1264rk.f3645a;
        boolean z2 = this.f2359d;
        if (((C0910dk.a) abstractC1264rk) == null) {
            throw null;
        }
        String[] strArrM2764s = c1213pj.f3472c != null ? C1314tk.m2764s(C1163nj.f3334b, sSLSocket.getEnabledCipherSuites(), c1213pj.f3472c) : sSLSocket.getEnabledCipherSuites();
        String[] strArrM2764s2 = c1213pj.f3473d != null ? C1314tk.m2764s(C1314tk.f3823i, sSLSocket.getEnabledProtocols(), c1213pj.f3473d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iM2762q = C1314tk.m2762q(C1163nj.f3334b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z2 && iM2762q != -1) {
            String str = supportedCipherSuites[iM2762q];
            int length = strArrM2764s.length + 1;
            String[] strArr = new String[length];
            System.arraycopy(strArrM2764s, 0, strArr, 0, strArrM2764s.length);
            strArr[length - 1] = str;
            strArrM2764s = strArr;
        }
        boolean z3 = c1213pj.f3470a;
        if (!z3) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        if (strArrM2764s.length == 0) {
            throw new IllegalArgumentException("At least one cipher suite is required");
        }
        String[] strArr2 = (String[]) strArrM2764s.clone();
        if (!z3) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        if (strArrM2764s2.length == 0) {
            throw new IllegalArgumentException("At least one TLS version is required");
        }
        String[] strArr3 = (String[]) strArrM2764s2.clone();
        if (strArr3 != null) {
            sSLSocket.setEnabledProtocols(strArr3);
        }
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
        return c1213pj;
    }
}
