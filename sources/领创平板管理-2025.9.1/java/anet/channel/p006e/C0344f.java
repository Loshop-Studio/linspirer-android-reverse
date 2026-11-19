package anet.channel.p006e;

import anet.channel.Session;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.entity.C0347b;
import anet.channel.entity.EventCb;
import anet.channel.statist.Http3DetectStat;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.IConnStrategy;

/* compiled from: Taobao */
/* renamed from: anet.channel.e.f */
/* loaded from: classes.dex */
public class C0344f implements EventCb {

    /* renamed from: a */
    public final /* synthetic */ IConnStrategy f244a;

    /* renamed from: b */
    public final /* synthetic */ RunnableC0343e f245b;

    public C0344f(RunnableC0343e runnableC0343e, IConnStrategy iConnStrategy) {
        this.f245b = runnableC0343e;
        this.f244a = iConnStrategy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    @Override // anet.channel.entity.EventCb
    public void onEvent(Session session, int i, C0347b c0347b) {
        ?? r5 = i != 1 ? 0 : 1;
        C0339a.f229a.m129a(NetworkStatusHelper.getUniqueId(this.f245b.f243b), r5);
        session.close(false);
        Http3DetectStat http3DetectStat = new Http3DetectStat(C0339a.f230b, this.f244a);
        http3DetectStat.ret = r5;
        AppMonitor.getInstance().commitStat(http3DetectStat);
    }
}
