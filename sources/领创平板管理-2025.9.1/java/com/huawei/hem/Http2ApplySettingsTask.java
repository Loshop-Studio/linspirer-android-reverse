package com.huawei.hem;

import com.huawei.hem.OkHttp2Connection;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.hm */
/* loaded from: classes.dex */
public class Http2ApplySettingsTask extends NamedRunnable {

    /* renamed from: b */
    public final /* synthetic */ boolean f2879b;

    /* renamed from: c */
    public final /* synthetic */ Http2Settings f2880c;

    /* renamed from: d */
    public final /* synthetic */ OkHttp2Connection.g f2881d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2ApplySettingsTask(OkHttp2Connection.g gVar, String str, Object[] objArr, boolean z, Http2Settings c1216pm) {
        super(str, objArr);
        this.f2881d = gVar;
        this.f2879b = z;
        this.f2880c = c1216pm;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() {
        Http2Stream[] c1116lmArr;
        long j;
        OkHttp2Connection.g gVar = this.f2881d;
        boolean z = this.f2879b;
        Http2Settings c1216pm = this.f2880c;
        synchronized (OkHttp2Connection.this.f2238v) {
            synchronized (OkHttp2Connection.this) {
                int iM2496a = OkHttp2Connection.this.f2236t.m2496a();
                if (z) {
                    Http2Settings c1216pm2 = OkHttp2Connection.this.f2236t;
                    c1216pm2.f3479a = 0;
                    Arrays.fill(c1216pm2.f3480b, 0);
                }
                Http2Settings c1216pm3 = OkHttp2Connection.this.f2236t;
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
                int iM2496a2 = OkHttp2Connection.this.f2236t.m2496a();
                if (iM2496a2 == -1 || iM2496a2 == iM2496a) {
                    j = 0;
                } else {
                    j = iM2496a2 - iM2496a;
                    if (!OkHttp2Connection.this.f2219c.isEmpty()) {
                        c1116lmArr = (Http2Stream[]) OkHttp2Connection.this.f2219c.values().toArray(new Http2Stream[OkHttp2Connection.this.f2219c.size()]);
                    }
                }
            }
            try {
                OkHttp2Connection.this.f2238v.m2396a(OkHttp2Connection.this.f2236t);
            } catch (IOException e) {
                OkHttp2Connection c0834am = OkHttp2Connection.this;
                Http2ErrorCode enumC1390wl = Http2ErrorCode.PROTOCOL_ERROR;
                c0834am.m1366a(enumC1390wl, enumC1390wl, e);
            }
        }
        if (c1116lmArr != null) {
            for (Http2Stream c1116lm : c1116lmArr) {
                synchronized (c1116lm) {
                    c1116lm.f3202b += j;
                    if (j > 0) {
                        c1116lm.notifyAll();
                    }
                }
            }
        }
        OkHttp2Connection.f2216y.execute(new Http2SettingsListenerTask(gVar, "OkHttp %s settings", OkHttp2Connection.this.f2220d));
    }
}
