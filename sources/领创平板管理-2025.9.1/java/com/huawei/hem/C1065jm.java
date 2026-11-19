package com.huawei.hem;

import anet.channel.util.HttpConstant;
import com.huawei.hem.C0910dk;
import com.huawei.hem.C1088kk;
import com.huawei.hem.C1116lm;
import com.huawei.hem.C1438yj;
import com.huawei.hem.InterfaceC0832ak;
import com.taobao.accs.common.Constants;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* compiled from: Http2ExchangeCodec.java */
/* renamed from: com.huawei.hem.jm */
/* loaded from: classes.dex */
public final class C1065jm implements InterfaceC1165nl {

    /* renamed from: g */
    public static final List<String> f2985g = C1314tk.m2760o("connection", Constants.KEY_HOST, "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: h */
    public static final List<String> f2986h = C1314tk.m2760o("connection", Constants.KEY_HOST, "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: a */
    public final InterfaceC0832ak.a f2987a;

    /* renamed from: b */
    public final C0963fl f2988b;

    /* renamed from: c */
    public final C0834am f2989c;

    /* renamed from: d */
    public volatile C1116lm f2990d;

    /* renamed from: e */
    public final EnumC0936ek f2991e;

    /* renamed from: f */
    public volatile boolean f2992f;

    public C1065jm(C0910dk c0910dk, C0963fl c0963fl, InterfaceC0832ak.a aVar, C0834am c0834am) {
        this.f2988b = c0963fl;
        this.f2987a = aVar;
        this.f2989c = c0834am;
        this.f2991e = c0910dk.f2419c.contains(EnumC0936ek.H2_PRIOR_KNOWLEDGE) ? EnumC0936ek.H2_PRIOR_KNOWLEDGE : EnumC0936ek.HTTP_2;
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: a */
    public void mo2139a() throws IOException {
        ((C1116lm.a) this.f2990d.m2332f()).close();
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: b */
    public void mo2140b(C0988gk c0988gk) throws IOException {
        int i;
        C1116lm c1116lm;
        boolean z;
        if (this.f2990d != null) {
            return;
        }
        boolean z2 = c0988gk.f2788d != null;
        C1438yj c1438yj = c0988gk.f2787c;
        ArrayList arrayList = new ArrayList(c1438yj.m3113g() + 4);
        arrayList.add(new C1415xl(C1415xl.f4087f, c0988gk.f2786b));
        arrayList.add(new C1415xl(C1415xl.f4088g, C1339uk.m2816b(c0988gk.f2785a)));
        String strM3110c = c0988gk.f2787c.m3110c(HttpConstant.HOST);
        if (strM3110c != null) {
            arrayList.add(new C1415xl(C1415xl.f4090i, strM3110c));
        }
        arrayList.add(new C1415xl(C1415xl.f4089h, c0988gk.f2785a.f4311a));
        int iM3113g = c1438yj.m3113g();
        for (int i2 = 0; i2 < iM3113g; i2++) {
            String lowerCase = c1438yj.m3111d(i2).toLowerCase(Locale.US);
            if (!f2985g.contains(lowerCase) || (lowerCase.equals("te") && c1438yj.m3114h(i2).equals("trailers"))) {
                arrayList.add(new C1415xl(lowerCase, c1438yj.m3114h(i2)));
            }
        }
        C0834am c0834am = this.f2989c;
        boolean z3 = !z2;
        synchronized (c0834am.f2238v) {
            synchronized (c0834am) {
                if (c0834am.f2222f > 1073741823) {
                    c0834am.m1372i(EnumC1390wl.REFUSED_STREAM);
                }
                if (c0834am.f2223g) {
                    throw new C1365vl();
                }
                i = c0834am.f2222f;
                c0834am.f2222f += 2;
                c1116lm = new C1116lm(i, c0834am, z3, false, null);
                z = !z2 || c0834am.f2234r == 0 || c1116lm.f3202b == 0;
                if (c1116lm.m2334h()) {
                    c0834am.f2219c.put(Integer.valueOf(i), c1116lm);
                }
            }
            c0834am.f2238v.m2400g(z3, i, arrayList);
        }
        if (z) {
            c0834am.f2238v.flush();
        }
        this.f2990d = c1116lm;
        if (this.f2992f) {
            this.f2990d.m2331e(EnumC1390wl.CANCEL);
            throw new IOException("Canceled");
        }
        this.f2990d.f3209i.mo1432g(((C1240ql) this.f2987a).f3584h, TimeUnit.MILLISECONDS);
        this.f2990d.f3210j.mo1432g(((C1240ql) this.f2987a).f3585i, TimeUnit.MILLISECONDS);
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: c */
    public void mo2141c() {
        this.f2989c.f2238v.flush();
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    public void cancel() {
        this.f2992f = true;
        if (this.f2990d != null) {
            this.f2990d.m2331e(EnumC1390wl.CANCEL);
        }
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: d */
    public long mo2142d(C1088kk c1088kk) {
        return C1215pl.m2491a(c1088kk);
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: e */
    public InterfaceC0836ao mo2143e(C1088kk c1088kk) {
        return this.f2990d.f3207g;
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: f */
    public InterfaceC1467zn mo2144f(C0988gk c0988gk, long j) {
        return this.f2990d.m2332f();
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: g */
    public C1088kk.a mo2145g(boolean z) throws NumberFormatException, IOException {
        C1438yj c1438yjRemoveFirst;
        C1116lm c1116lm = this.f2990d;
        synchronized (c1116lm) {
            c1116lm.f3209i.m1837i();
            while (c1116lm.f3205e.isEmpty() && c1116lm.f3211k == null) {
                try {
                    c1116lm.m2336j();
                } catch (Throwable th) {
                    c1116lm.f3209i.m2339n();
                    throw th;
                }
            }
            c1116lm.f3209i.m2339n();
            if (c1116lm.f3205e.isEmpty()) {
                if (c1116lm.f3212l != null) {
                    throw c1116lm.f3212l;
                }
                throw new C1241qm(c1116lm.f3211k);
            }
            c1438yjRemoveFirst = c1116lm.f3205e.removeFirst();
        }
        EnumC0936ek enumC0936ek = this.f2991e;
        ArrayList arrayList = new ArrayList(20);
        int iM3113g = c1438yjRemoveFirst.m3113g();
        C1315tl c1315tlM2772a = null;
        for (int i = 0; i < iM3113g; i++) {
            String strM3111d = c1438yjRemoveFirst.m3111d(i);
            String strM3114h = c1438yjRemoveFirst.m3114h(i);
            if (strM3111d.equals(HttpConstant.STATUS)) {
                c1315tlM2772a = C1315tl.m2772a("HTTP/1.1 " + strM3114h);
            } else if (f2986h.contains(strM3111d)) {
                continue;
            } else {
                if (((C0910dk.a) AbstractC1264rk.f3645a) == null) {
                    throw null;
                }
                arrayList.add(strM3111d);
                arrayList.add(strM3114h.trim());
            }
        }
        if (c1315tlM2772a == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        C1088kk.a aVar = new C1088kk.a();
        aVar.f3106b = enumC0936ek;
        aVar.f3107c = c1315tlM2772a.f3827b;
        aVar.f3108d = c1315tlM2772a.f3828c;
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        C1438yj.a aVar2 = new C1438yj.a();
        Collections.addAll(aVar2.f4230a, strArr);
        aVar.f3110f = aVar2;
        if (z) {
            if (((C0910dk.a) AbstractC1264rk.f3645a) == null) {
                throw null;
            }
            if (aVar.f3107c == 100) {
                return null;
            }
        }
        return aVar;
    }

    @Override // com.huawei.hem.InterfaceC1165nl
    /* renamed from: h */
    public C0963fl mo2146h() {
        return this.f2988b;
    }
}
