package anet.channel.p006e;

import anet.channel.Session;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.entity.SessionEventDetails;
import anet.channel.entity.EventCb;
import anet.channel.statist.Http3DetectStat;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.IConnStrategy;

/* compiled from: Taobao */
/* renamed from: anet.channel.e.f */
/* loaded from: classes.dex */
public class ProtocolDetectionSessionCallback implements EventCb {

    /* renamed from: a */
    public final /* synthetic */ IConnStrategy f244a;

    /* renamed from: b */
    public final /* synthetic */ ProtocolDetectionSessionTask f245b;

    public ProtocolDetectionSessionCallback(ProtocolDetectionSessionTask runnableC0343e, IConnStrategy iConnStrategy) {
        this.f245b = runnableC0343e;
        this.f244a = iConnStrategy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    @Override // anet.channel.entity.EventCb
    public void onEvent(Session session, int i, SessionEventDetails c0347b) {
        ?? r5 = i != 1 ? 0 : 1;
        ConnectionProtocolDetector.f229a.m129a(NetworkStatusHelper.getUniqueId(this.f245b.f243b), r5);
        session.close(false);
        Http3DetectStat http3DetectStat = new Http3DetectStat(ConnectionProtocolDetector.f230b, this.f244a);
        http3DetectStat.ret = r5;
        AppMonitor.getInstance().commitStat(http3DetectStat);
    }
}
