package com.huawei.hem;

import com.huawei.hem.C0834am;
import java.io.IOException;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.gm */
/* loaded from: classes.dex */
public class C0990gm extends NamedRunnable {

    /* renamed from: b */
    public final /* synthetic */ Http2Stream f2803b;

    /* renamed from: c */
    public final /* synthetic */ C0834am.g f2804c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0990gm(C0834am.g gVar, String str, Object[] objArr, Http2Stream c1116lm) {
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
            Platform c1391wm = Platform.f4029a;
            StringBuilder sbM1765j = CompilerOutline.m1765j("Http2Connection.Listener failure for ");
            sbM1765j.append(C0834am.this.f2220d);
            c1391wm.mo2707n(4, sbM1765j.toString(), e);
            try {
                this.f2803b.m2329c(Http2ErrorCode.PROTOCOL_ERROR, e);
            } catch (IOException unused) {
            }
        }
    }
}
