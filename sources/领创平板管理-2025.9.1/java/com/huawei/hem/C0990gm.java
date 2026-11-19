package com.huawei.hem;

import com.huawei.hem.C0834am;
import java.io.IOException;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.gm */
/* loaded from: classes.dex */
public class C0990gm extends AbstractRunnableC1289sk {

    /* renamed from: b */
    public final /* synthetic */ C1116lm f2803b;

    /* renamed from: c */
    public final /* synthetic */ C0834am.g f2804c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0990gm(C0834am.g gVar, String str, Object[] objArr, C1116lm c1116lm) {
        super(str, objArr);
        this.f2804c = gVar;
        this.f2803b = c1116lm;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() {
        try {
            C0834am.this.f2218b.mo1378b(this.f2803b);
        } catch (IOException e) {
            C1391wm c1391wm = C1391wm.f4029a;
            StringBuilder sbM1765j = C0948f6.m1765j("Http2Connection.Listener failure for ");
            sbM1765j.append(C0834am.this.f2220d);
            c1391wm.mo2707n(4, sbM1765j.toString(), e);
            try {
                this.f2803b.m2329c(EnumC1390wl.PROTOCOL_ERROR, e);
            } catch (IOException unused) {
            }
        }
    }
}
