package com.huawei.hem;

import java.io.IOException;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.bm */
/* loaded from: classes.dex */
public class Http2ConnectionPingTask extends NamedRunnable {

    /* renamed from: b */
    public final /* synthetic */ OkHttp2Connection f2310b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2ConnectionPingTask(OkHttp2Connection c0834am, String str, Object... objArr) {
        super(str, objArr);
        this.f2310b = c0834am;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() throws IOException {
        this.f2310b.m1375l(false, 2, 0);
    }
}
