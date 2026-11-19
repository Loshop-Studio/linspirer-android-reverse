package anet.channel;

import anet.channel.entity.SessionEventDetails;
import anet.channel.entity.EventCb;
import anet.channel.strategy.ConnEvent;
import anet.channel.strategy.StrategyCenter;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.g */
/* loaded from: classes.dex */
public class SessionStrategyFeedbackCallback implements EventCb {

    /* renamed from: a */
    public final /* synthetic */ Session f271a;

    /* renamed from: b */
    public final /* synthetic */ SessionRequest f272b;

    public SessionStrategyFeedbackCallback(SessionRequest sessionRequest, Session session) {
        this.f272b = sessionRequest;
        this.f271a = session;
    }

    @Override // anet.channel.entity.EventCb
    public void onEvent(Session session, int i, SessionEventDetails c0347b) {
        ALog.m337d("awcn.SessionRequest", "Receive session event", null, "eventType", Integer.valueOf(i));
        ConnEvent connEvent = new ConnEvent();
        if (i == 512) {
            connEvent.isSuccess = true;
        }
        SessionInfo sessionInfo = this.f272b.f135c;
        if (sessionInfo != null) {
            connEvent.isAccs = sessionInfo.isAccs;
        }
        StrategyCenter.getInstance().notifyConnEvent(this.f271a.getRealHost(), this.f271a.getConnStrategy(), connEvent);
    }
}
