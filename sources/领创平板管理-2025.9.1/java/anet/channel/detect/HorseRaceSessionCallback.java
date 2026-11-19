package anet.channel.detect;

import anet.channel.Session;
import anet.channel.entity.SessionEventDetails;
import anet.channel.entity.EventCb;
import anet.channel.request.Request;
import anet.channel.session.TnetSpdySession;
import anet.channel.statist.HorseRaceStat;
import anet.channel.strategy.AmdcStrategyResultParser;
import anet.channel.util.ALog;
import anet.channel.util.HttpUrl;
import org.json.JSONException;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.h */
/* loaded from: classes.dex */
public class HorseRaceSessionCallback implements EventCb {

    /* renamed from: a */
    public final /* synthetic */ HorseRaceStat f208a;

    /* renamed from: b */
    public final /* synthetic */ long f209b;

    /* renamed from: c */
    public final /* synthetic */ String f210c;

    /* renamed from: d */
    public final /* synthetic */ AmdcStrategyResultParser.e f211d;

    /* renamed from: e */
    public final /* synthetic */ TnetSpdySession f212e;

    /* renamed from: f */
    public final /* synthetic */ HorseRaceDetector f213f;

    public HorseRaceSessionCallback(HorseRaceDetector c0327d, HorseRaceStat horseRaceStat, long j, String str, AmdcStrategyResultParser.e eVar, TnetSpdySession tnetSpdySession) {
        this.f213f = c0327d;
        this.f208a = horseRaceStat;
        this.f209b = j;
        this.f210c = str;
        this.f211d = eVar;
        this.f212e = tnetSpdySession;
    }

    @Override // anet.channel.entity.EventCb
    public void onEvent(Session session, int i, SessionEventDetails c0347b) throws JSONException {
        if (this.f208a.connTime != 0) {
            return;
        }
        this.f208a.connTime = System.currentTimeMillis() - this.f209b;
        if (i != 1) {
            this.f208a.connErrorCode = c0347b.f253b;
            synchronized (this.f208a) {
                this.f208a.notify();
            }
            return;
        }
        ALog.m340i("anet.HorseRaceDetector", "tnetSpdySession connect success", this.f210c, new Object[0]);
        this.f208a.connRet = 1;
        HttpUrl httpUrl = HttpUrl.parse(session.getHost() + this.f211d.f553c);
        if (httpUrl == null) {
            return;
        }
        this.f212e.request(new Request.Builder().setUrl(httpUrl).setReadTimeout(this.f211d.f552b.f524d).setRedirectEnable(false).setSeq(this.f210c).build(), new HorseRaceRequestCallback(this));
    }
}
