package com.huawei.hem;

import com.huawei.hem.PushObserver;
import java.io.IOException;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.em */
/* loaded from: classes.dex */
public class Http2PushDataTask extends NamedRunnable {

    /* renamed from: b */
    public final /* synthetic */ int f2561b;

    /* renamed from: c */
    public final /* synthetic */ OkioBuffer f2562c;

    /* renamed from: d */
    public final /* synthetic */ int f2563d;

    /* renamed from: e */
    public final /* synthetic */ boolean f2564e;

    /* renamed from: f */
    public final /* synthetic */ OkHttp2Connection f2565f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2PushDataTask(OkHttp2Connection c0834am, String str, Object[] objArr, int i, OkioBuffer c1016hn, int i2, boolean z) {
        super(str, objArr);
        this.f2565f = c0834am;
        this.f2561b = i;
        this.f2562c = c1016hn;
        this.f2563d = i2;
        this.f2564e = z;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() {
        try {
            PushObserver interfaceC1191om = this.f2565f.f2226j;
            OkioBuffer c1016hn = this.f2562c;
            int i = this.f2563d;
            if (((PushObserver.a) interfaceC1191om) == null) {
                throw null;
            }
            c1016hn.skip(i);
            this.f2565f.f2238v.m2402i(this.f2561b, Http2ErrorCode.CANCEL);
            synchronized (this.f2565f) {
                this.f2565f.f2240x.remove(Integer.valueOf(this.f2561b));
            }
        } catch (IOException unused) {
        }
    }
}
