package anet.channel.session;

import anet.channel.strategy.ConnEvent;
import anet.channel.strategy.StrategyCenter;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.h */
/* loaded from: classes.dex */
public class RunnableC0382h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ TnetSpdySession f407a;

    public RunnableC0382h(TnetSpdySession tnetSpdySession) {
        this.f407a = tnetSpdySession;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f407a.f386y) {
            TnetSpdySession tnetSpdySession = this.f407a;
            ALog.m339e("awcn.TnetSpdySession", "send msg time out!", tnetSpdySession.f110p, "pingUnRcv:", Boolean.valueOf(tnetSpdySession.f386y));
            try {
                this.f407a.handleCallbacks(2048, null);
                if (this.f407a.f111q != null) {
                    this.f407a.f111q.closeReason = "ping time out";
                }
                ConnEvent connEvent = new ConnEvent();
                connEvent.isSuccess = false;
                connEvent.isAccs = this.f407a.f383I;
                StrategyCenter.getInstance().notifyConnEvent(this.f407a.f98d, this.f407a.f105k, connEvent);
                this.f407a.close(true);
            } catch (Exception unused) {
            }
        }
    }
}
