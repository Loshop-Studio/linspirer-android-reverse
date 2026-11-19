package anet.channel.monitor;

import anet.channel.status.NetworkStatusHelper;

/* compiled from: Taobao */
/* renamed from: anet.channel.monitor.c */
/* loaded from: classes.dex */
public class C0362c implements NetworkStatusHelper.INetworkStatusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C0361b f308a;

    public C0362c(C0361b c0361b) {
        this.f308a = c0361b;
    }

    @Override // anet.channel.status.NetworkStatusHelper.INetworkStatusChangeListener
    public void onNetworkStatusChanged(NetworkStatusHelper.NetworkStatus networkStatus) {
        this.f308a.f306n.m161a();
        C0361b.f298f = 0L;
        this.f308a.m158d();
    }
}
