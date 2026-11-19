package anet.channel;

import anet.channel.SessionRequest;
import anet.channel.entity.SessionEventDetails;
import anet.channel.entity.EventCb;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.f */
/* loaded from: classes.dex */
public class SessionRequestConnectionCallback implements EventCb {

    /* renamed from: a */
    public final /* synthetic */ SessionRequest.IConnCb f258a;

    /* renamed from: b */
    public final /* synthetic */ long f259b;

    /* renamed from: c */
    public final /* synthetic */ SessionRequest f260c;

    public SessionRequestConnectionCallback(SessionRequest sessionRequest, SessionRequest.IConnCb iConnCb, long j) {
        this.f260c = sessionRequest;
        this.f258a = iConnCb;
        this.f259b = j;
    }

    @Override // anet.channel.entity.EventCb
    public void onEvent(Session session, int i, SessionEventDetails c0347b) {
        if (session == null) {
            return;
        }
        int i2 = c0347b == null ? 0 : c0347b.f253b;
        String str = c0347b == null ? "" : c0347b.f254c;
        if (i == 2) {
            ALog.m337d("awcn.SessionRequest", null, session.f110p, "Session", session, "EventType", Integer.valueOf(i), "Event", c0347b);
            this.f260c.m58a(session, i2, str);
            SessionRequest sessionRequest = this.f260c;
            if (sessionRequest.f134b.m113c(sessionRequest, session)) {
                this.f258a.onDisConnect(session, this.f259b, i);
                return;
            } else {
                this.f258a.onFailed(session, this.f259b, i, i2);
                return;
            }
        }
        if (i == 256) {
            ALog.m337d("awcn.SessionRequest", null, session.f110p, "Session", session, "EventType", Integer.valueOf(i), "Event", c0347b);
            this.f258a.onFailed(session, this.f259b, i, i2);
        } else {
            if (i != 512) {
                return;
            }
            ALog.m337d("awcn.SessionRequest", null, session.f110p, "Session", session, "EventType", Integer.valueOf(i), "Event", c0347b);
            this.f260c.m58a(session, 0, (String) null);
            this.f258a.onSuccess(session, this.f259b);
        }
    }
}
