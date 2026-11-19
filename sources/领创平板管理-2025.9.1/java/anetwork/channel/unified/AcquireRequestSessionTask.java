package anetwork.channel.unified;

import android.support.v7.widget.TooltipCompatHandler;
import anet.channel.Session;
import anet.channel.SessionCenter;
import anet.channel.entity.SessionTypeFlags;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.HttpUrl;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.g */
/* loaded from: classes.dex */
public class AcquireRequestSessionTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SessionCenter f777a;

    /* renamed from: b */
    public final /* synthetic */ HttpUrl f778b;

    /* renamed from: c */
    public final /* synthetic */ RequestStatistic f779c;

    /* renamed from: d */
    public final /* synthetic */ HttpUrl f780d;

    /* renamed from: e */
    public final /* synthetic */ boolean f781e;

    /* renamed from: f */
    public final /* synthetic */ UnifiedNetworkTask f782f;

    public AcquireRequestSessionTask(UnifiedNetworkTask c0464e, SessionCenter sessionCenter, HttpUrl httpUrl, RequestStatistic requestStatistic, HttpUrl httpUrl2, boolean z) {
        this.f782f = c0464e;
        this.f777a = sessionCenter;
        this.f778b = httpUrl;
        this.f779c = requestStatistic;
        this.f780d = httpUrl2;
        this.f781e = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Session session = this.f777a.get(this.f778b, SessionTypeFlags.f255a, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
        this.f779c.connWaitTime = System.currentTimeMillis() - jCurrentTimeMillis;
        this.f779c.spdyRequestSend = session != null;
        Session sessionM447a = this.f782f.m447a(session, this.f777a, this.f780d, this.f781e);
        UnifiedNetworkTask c0464e = this.f782f;
        c0464e.m452a(sessionM447a, c0464e.f760a.f793a.m425a());
    }
}
