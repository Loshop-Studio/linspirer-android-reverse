package anet.channel.detect;

import anet.channel.status.NetworkStatusHelper;
import anet.channel.thread.ThreadPoolExecutorFactory;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.l */
/* loaded from: classes.dex */
public class C0335l implements NetworkStatusHelper.INetworkStatusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C0334k f218a;

    public C0335l(C0334k c0334k) {
        this.f218a = c0334k;
    }

    @Override // anet.channel.status.NetworkStatusHelper.INetworkStatusChangeListener
    public void onNetworkStatusChanged(NetworkStatusHelper.NetworkStatus networkStatus) {
        ThreadPoolExecutorFactory.submitDetectTask(new RunnableC0336m(this, networkStatus));
    }
}
