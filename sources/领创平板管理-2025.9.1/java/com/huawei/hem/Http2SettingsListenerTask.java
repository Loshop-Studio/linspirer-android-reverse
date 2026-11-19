package com.huawei.hem;

import com.huawei.hem.OkHttp2Connection;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.im */
/* loaded from: classes.dex */
public class Http2SettingsListenerTask extends NamedRunnable {

    /* renamed from: b */
    public final /* synthetic */ OkHttp2Connection.g f2928b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http2SettingsListenerTask(OkHttp2Connection.g gVar, String str, Object... objArr) {
        super(str, objArr);
        this.f2928b = gVar;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() {
        OkHttp2Connection c0834am = OkHttp2Connection.this;
        c0834am.f2218b.mo1377a(c0834am);
    }
}
