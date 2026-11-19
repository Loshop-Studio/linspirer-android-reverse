package com.huawei.hem;

import com.huawei.hem.PushObserver;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.fm */
/* loaded from: classes.dex */
public class Http2PushResetTask extends NamedRunnable {

    /* renamed from: b */
    public final /* synthetic */ int f2697b;

    /* renamed from: c */
    public final /* synthetic */ Http2ErrorCode f2698c;

    /* renamed from: d */
    public final /* synthetic */ OkHttp2Connection f2699d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2PushResetTask(OkHttp2Connection c0834am, String str, Object[] objArr, int i, Http2ErrorCode enumC1390wl) {
        super(str, objArr);
        this.f2699d = c0834am;
        this.f2697b = i;
        this.f2698c = enumC1390wl;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() {
        OkHttp2Connection c0834am = this.f2699d;
        if (((PushObserver.a) c0834am.f2226j) == null) {
            throw null;
        }
        synchronized (c0834am) {
            this.f2699d.f2240x.remove(Integer.valueOf(this.f2697b));
        }
    }
}
