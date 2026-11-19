package anet.channel;

import anet.channel.entity.C0347b;
import anet.channel.entity.EventCb;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.b */
/* loaded from: classes.dex */
public class RunnableC0312b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f166a;

    /* renamed from: b */
    public final /* synthetic */ C0347b f167b;

    /* renamed from: c */
    public final /* synthetic */ Session f168c;

    public RunnableC0312b(Session session, int i, C0347b c0347b) {
        this.f168c = session;
        this.f166a = i;
        this.f167b = c0347b;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f168c.f96b != null) {
                for (EventCb eventCb : this.f168c.f96b.keySet()) {
                    if (eventCb != null && (this.f168c.f96b.get(eventCb).intValue() & this.f166a) != 0) {
                        try {
                            eventCb.onEvent(this.f168c, this.f166a, this.f167b);
                        } catch (Exception e) {
                            ALog.m339e("awcn.Session", e.toString(), this.f168c.f110p, new Object[0]);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            ALog.m338e("awcn.Session", "handleCallbacks", this.f168c.f110p, e2, new Object[0]);
        }
    }
}
