package com.huawei.hem;

import com.huawei.hem.C0834am;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.hm */
/* loaded from: classes.dex */
public class C1015hm extends AbstractRunnableC1289sk {

    /* renamed from: b */
    public final /* synthetic */ boolean f2879b;

    /* renamed from: c */
    public final /* synthetic */ C1216pm f2880c;

    /* renamed from: d */
    public final /* synthetic */ C0834am.g f2881d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1015hm(C0834am.g gVar, String str, Object[] objArr, boolean z, C1216pm c1216pm) {
        super(str, objArr);
        this.f2881d = gVar;
        this.f2879b = z;
        this.f2880c = c1216pm;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() {
        C1116lm[] c1116lmArr;
        long j;
        C0834am.g gVar = this.f2881d;
        boolean z = this.f2879b;
        C1216pm c1216pm = this.f2880c;
        synchronized (C0834am.this.f2238v) {
            synchronized (C0834am.this) {
                int iM2496a = C0834am.this.f2236t.m2496a();
                if (z) {
                    C1216pm c1216pm2 = C0834am.this.f2236t;
                    c1216pm2.f3479a = 0;
                    Arrays.fill(c1216pm2.f3480b, 0);
                }
                C1216pm c1216pm3 = C0834am.this.f2236t;
                c1116lmArr = null;
                if (c1216pm3 == null) {
                    throw null;
                }
                int i = 0;
                while (true) {
                    boolean z2 = true;
                    if (i >= 10) {
                        break;
                    }
                    if (((1 << i) & c1216pm.f3479a) == 0) {
                        z2 = false;
                    }
                    if (z2) {
                        c1216pm3.m2497b(i, c1216pm.f3480b[i]);
                    }
                    i++;
                }
                int iM2496a2 = C0834am.this.f2236t.m2496a();
                if (iM2496a2 == -1 || iM2496a2 == iM2496a) {
                    j = 0;
                } else {
                    j = iM2496a2 - iM2496a;
                    if (!C0834am.this.f2219c.isEmpty()) {
                        c1116lmArr = (C1116lm[]) C0834am.this.f2219c.values().toArray(new C1116lm[C0834am.this.f2219c.size()]);
                    }
                }
            }
            try {
                C0834am.this.f2238v.m2396a(C0834am.this.f2236t);
            } catch (IOException e) {
                C0834am c0834am = C0834am.this;
                EnumC1390wl enumC1390wl = EnumC1390wl.PROTOCOL_ERROR;
                c0834am.m1366a(enumC1390wl, enumC1390wl, e);
            }
        }
        if (c1116lmArr != null) {
            for (C1116lm c1116lm : c1116lmArr) {
                synchronized (c1116lm) {
                    c1116lm.f3202b += j;
                    if (j > 0) {
                        c1116lm.notifyAll();
                    }
                }
            }
        }
        C0834am.f2216y.execute(new C1040im(gVar, "OkHttp %s settings", C0834am.this.f2220d));
    }
}
