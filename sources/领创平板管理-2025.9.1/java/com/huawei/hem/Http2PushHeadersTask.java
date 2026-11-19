package com.huawei.hem;

import com.huawei.hem.PushObserver;
import java.io.IOException;
import java.util.List;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.dm */
/* loaded from: classes.dex */
public class Http2PushHeadersTask extends NamedRunnable {

    /* renamed from: b */
    public final /* synthetic */ int f2482b;

    /* renamed from: c */
    public final /* synthetic */ List f2483c;

    /* renamed from: d */
    public final /* synthetic */ boolean f2484d;

    /* renamed from: e */
    public final /* synthetic */ OkHttp2Connection f2485e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2PushHeadersTask(OkHttp2Connection c0834am, String str, Object[] objArr, int i, List list, boolean z) {
        super(str, objArr);
        this.f2485e = c0834am;
        this.f2482b = i;
        this.f2483c = list;
        this.f2484d = z;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() {
        OkHttp2Connection c0834am = this.f2485e;
        PushObserver interfaceC1191om = c0834am.f2226j;
        int i = this.f2482b;
        if (((PushObserver.a) interfaceC1191om) == null) {
            throw null;
        }
        try {
            c0834am.f2238v.m2402i(i, Http2ErrorCode.CANCEL);
            synchronized (this.f2485e) {
                this.f2485e.f2240x.remove(Integer.valueOf(this.f2482b));
            }
        } catch (IOException unused) {
        }
    }
}
