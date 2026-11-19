package anet.channel.p006e;

import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.entity.SessionConnectionInfo;
import anet.channel.session.TnetSpdySession;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.IConnStrategy;
import com.huawei.hem.CompilerOutline;
import java.util.List;

/* compiled from: Taobao */
/* renamed from: anet.channel.e.e */
/* loaded from: classes.dex */
public final class ProtocolDetectionSessionTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ List f242a;

    /* renamed from: b */
    public final /* synthetic */ NetworkStatusHelper.NetworkStatus f243b;

    public ProtocolDetectionSessionTask(List list, NetworkStatusHelper.NetworkStatus networkStatus) {
        this.f242a = list;
        this.f243b = networkStatus;
    }

    @Override // java.lang.Runnable
    public void run() {
        IConnStrategy iConnStrategy = (IConnStrategy) this.f242a.get(0);
        StringBuilder sbM1765j = CompilerOutline.m1765j("https://");
        sbM1765j.append(ConnectionProtocolDetector.f230b);
        String string = sbM1765j.toString();
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("Http3Detect");
        sbM1765j2.append(ConnectionProtocolDetector.f236h.getAndIncrement());
        TnetSpdySession tnetSpdySession = new TnetSpdySession(GlobalAppRuntimeInfo.getContext(), new SessionConnectionInfo(string, sbM1765j2.toString(), ConnectionProtocolDetector.m120b(iConnStrategy)));
        tnetSpdySession.registerEventcb(257, new ProtocolDetectionSessionCallback(this, iConnStrategy));
        tnetSpdySession.f111q.isCommitted = true;
        tnetSpdySession.connect();
    }
}
